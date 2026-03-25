#include <axi_lite_ctrl.h>

#include <stdio.h>
#include "xil_printf.h"

#include "xbram.h"
#include <stdio.h>
#include "xscugic.h"
#include "xuartps.h"
#include "sleep.h"
#include "xscutimer.h"
#include "xparameters.h"
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

#define BRAM_CTRL_BASE		XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_CTRL_HIGH		XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR
#define AXI_LITE_BASE		XPAR_AXI_LITE_CTRL_0_S00_AXI_BASEADDR
#define SLV_REG0_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG0_OFFSET
#define SLV_REG1_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG1_OFFSET
#define SLV_REG2_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG2_OFFSET
#define SLV_REG3_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG3_OFFSET
#define SLV_REG4_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG4_OFFSET
#define SLV_REG5_OFFSET		AXI_LITE_CTRL_S00_AXI_SLV_REG5_OFFSET

#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define INTR_ID				XPAR_FABRIC_PL_BRAM_CTRL_0_INTR_INTR
#define UART_DEVICE_ID		XPAR_XUARTPS_0_DEVICE_ID
#define UART_BASEADDR		XPAR_XUARTPS_0_BASEADDR

#define BRAM_BYTENUM		4		 // BRAM中一个地址中的数据字节数
#define BRAM_SIZE_WORDS		8192	 // 8K BRAM地址数,多道道数.
#define CMD_BUFFER_SIZE		32		 // 命令缓冲区大小
#define BUFFER_SIZE			2048	 // 预分配缓冲区大小
// 定时器设备ID和实例
#define TMRCTR_DEVICE_ID XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_LOAD_VALUE (XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2 - 1) // 定时1 second
XScuTimer TimerInstance;
// 帧结构定义
typedef struct
{
	int time;	  // 16位测量时间
	int data_ntr; // 16位前沿衰减时间常数
	int data_ntf; // 16位后沿衰减时间常数
	int data_na;  // 16位梯形成形上升时间
	int data_nb;  // 16位梯形成形（平顶+上升）时间
} DataFrame;
// 解析状态机枚举
typedef enum
{
	STATE_WAIT_D,
	STATE_WAIT_M,
	STATE_WAIT_C,
	STATE_WAIT_A,
	STATE_READ_TIME,
	STATE_READ_DATA_NTR,
	STATE_READ_DATA_NTF,
	STATE_READ_DATA_NA,
	STATE_READ_DATA_NB,
	STATE_COMPLETE
} ParseState;

// 全局变量
ParseState currentState = STATE_WAIT_D;
DataFrame currentFrame;
XScuGic INTCInst;
XUartPs UartInstance;
char frameBuffer[100]; // 临时缓冲区
int bufferIndex = 0;
volatile int Intr_flag = 0;	 // PL端写BRAM完成中断标志
volatile int TimerExpired = 0;	 // 定时器超时计数
int data_buffer[BUFFER_SIZE];	 // 预分配数据缓冲区
uint32_t reg0_value;
uint32_t reg1_value;
uint32_t reg2_value;
uint32_t reg3_value;
uint32_t reg4_value;
uint32_t reg5_value;
// 函数声明
int IntrInitFuntion(u16 DeviceId);
void IntrHandler(void *InstancePtr);
int UartInit(u16 DeviceId);
int TimerInit(XScuTimer *TimerInstancePtr, u16 TimerDeviceId);
void PrintBramContents(void);
void ParseChar(char c);
int IsFrameComplete();
void ResetParser();

int main()
{
	int Status = 0;
	TimerExpired = 0;
	u8 RecvBuffer[1];
	int BytesReceived;
	// 初始化中断
	IntrInitFuntion(INTC_DEVICE_ID);
	// 初始化UART
	UartInit(UART_DEVICE_ID);
	// 初始化定时器
	TimerInit(&TimerInstance, TMRCTR_DEVICE_ID);
	XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET); // 清除输入缓冲区

	if (Status != XST_SUCCESS)
	{
		xil_printf("UART初始化失败\n");
		return XST_FAILURE;
	}

	xil_printf("串口命令解析器已启动\n");

	while (1)
	{
		// 检查UART接收缓冲区
		BytesReceived = XUartPs_Recv(&UartInstance, RecvBuffer, 1);

		if (BytesReceived > 0)
		{
			// 处理接收到的字符
			ParseChar(RecvBuffer[0]);

			// 检查是否接收到完整帧
			if (IsFrameComplete())
			{
				// 打印解析结果
				xil_printf("收到帧: 测量时间=%d s, 上升沿时间常数=%d *Ts, 下降沿时间常数=%d *Ts, 梯形成形上升时间=%d *Ts, 梯形成形平顶时间=%d *Ts\n",
						   currentFrame.time, currentFrame.data_ntr, currentFrame.data_ntf, currentFrame.data_na, (currentFrame.data_nb - currentFrame.data_na));
				float a = expf(-1.0f / currentFrame.data_ntf);
				float b = expf(-1.0f / currentFrame.data_ntr);
				int na = currentFrame.data_na;
				int nb = currentFrame.data_nb;
				float inv_na = 1 / (na * (a - b));
				float a_over_na = a * inv_na;
				uint32_t na_bits = na & 0x1FF;
				uint32_t nb_bits = nb & 0x1FF;
				reg1_value = (nb_bits << 16) | na_bits;
				reg2_value = (int32_t)roundf(a_over_na * (1 << 30));
				reg3_value = (int32_t)roundf(inv_na * (1 << 30));
				reg4_value = (int32_t)roundf(b * (1 << 30));
				reg5_value = (0x08 << 24) | (0x0c << 16) | 0xa; // 设置三角成形触发阈值为10，平顶延长时间为12，三角成形连续超阈值为8
				// 设置na,nb
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG1_OFFSET, reg1_value);
				// 设置成形参数
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG2_OFFSET, reg2_value);
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG3_OFFSET, reg3_value);
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG4_OFFSET, reg4_value);
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG5_OFFSET, reg5_value);
				// 启动ADC使能,将第4位设为1
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG0_OFFSET, 0x10);
				usleep(1);
				// 启动成形算法使能和能谱生成使能（保持ADC使能），将第0,8位设为1
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG0_OFFSET, 0x111);
				// 清除中断标志
				Intr_flag = 0;
				// 重置定时器计数
				TimerExpired = 0;
				// 启用自动重载模式
				XScuTimer_EnableAutoReload(&TimerInstance);
				// 加载定时器计数器寄存器
				XScuTimer_LoadTimer(&TimerInstance, TIMER_LOAD_VALUE);
				// 确保定时器停止状态，然后重新启动
				XScuTimer_Stop(&TimerInstance);
				XScuTimer_Start(&TimerInstance);
				// 重置解析器，准备接收下一帧
				ResetParser();
			}
		}

		if (XScuTimer_IsExpired(&TimerInstance))
		{
			XScuTimer_ClearInterruptStatus(&TimerInstance);
			TimerExpired++;
			if (TimerExpired == currentFrame.time)
			{
				// 结束测量操作,将所有使能，将第0,4,8位设为0
				AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG0_OFFSET, 0x000);
				// 停止定时器，等待下一次命令
				XScuTimer_Stop(&TimerInstance);
				// 禁用自动重载模式
				XScuTimer_DisableAutoReload(&TimerInstance);
				// 加载定时器计数器寄存器
				XScuTimer_LoadTimer(&TimerInstance, TIMER_LOAD_VALUE);
			}
		}
		if (Intr_flag)
		{
			Intr_flag = 0;
			// 清除中断标志,将第12位设为0
			AXI_LITE_CTRL_mWriteReg(AXI_LITE_BASE, SLV_REG0_OFFSET, 0x1000);
			PrintBramContents();
			//            printf("中断响应\n");
		}
	}

	return XST_SUCCESS;
}

// 初始化定时器
int TimerInit(XScuTimer *TimerInstancePtr, u16 TimerDeviceId)
{
	int Status;
	XScuTimer_Config *ConfigPtr;

	// 初始化Scu专用定时器驱动程序。
	ConfigPtr = XScuTimer_LookupConfig(TimerDeviceId);

	// 这是将使用虚拟地址的地方，这里使用物理地址。
	Status = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigPtr,
									 ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// 执行自检以确保硬件正确构建。
	Status = XScuTimer_SelfTest(TimerInstancePtr);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// 启用自动重载模式
	XScuTimer_EnableAutoReload(TimerInstancePtr);
	// 加载定时器计数器寄存器
	XScuTimer_LoadTimer(TimerInstancePtr, TIMER_LOAD_VALUE);

	return XST_SUCCESS;
}

// 打印BRAM内容
void PrintBramContents(void)
{
	// 批量读取BRAM数据到缓冲区
	for (int i = 0; i < BRAM_SIZE_WORDS; i++)
	{
		data_buffer[i] = XBram_ReadReg(XPAR_BRAM_0_BASEADDR, i * BRAM_BYTENUM);
	}

	// 用一个数据包打印所有2048个数据，用逗号分隔
	printf("data:");
	for (int i = 0; i < BRAM_SIZE_WORDS; i++)
	{
		if (i < BRAM_SIZE_WORDS - 1)
		{
			printf("%d,", data_buffer[i]);
		}
		else
		{
			printf("%d", data_buffer[i]); // 最后一个数据不加逗号
		}
	}
	printf("\n");
}

// =========================BRAM中断配置===================
// 中断初始化
int IntrInitFuntion(u16 DeviceId)
{
	XScuGic_Config *IntcConfig;
	int Status;

	// 查找中断控制器配置
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	// 初始化中断控制器
	Status = XScuGic_CfgInitialize(&INTCInst, IntcConfig,
								   IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	// 设置中断优先级和触发类型
	// 设置中断优先级为0xA0,触发类型为高电平有效
	XScuGic_SetPriorityTriggerType(&INTCInst, INTR_ID, 0xA0, 0x3);
	// 注册中断处理函数
	Status = XScuGic_Connect(&INTCInst, INTR_ID,
							 (Xil_ExceptionHandler)IntrHandler, (void *)NULL);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	// 启用中断
	XScuGic_Enable(&INTCInst, INTR_ID);
	// 启用处理器异常
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
								 (Xil_ExceptionHandler)XScuGic_InterruptHandler, &INTCInst);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

// 中断处理函数
void IntrHandler(void *CallbackRef)
{
	Intr_flag = 1; // 拉高中断标志
}

// =====================UART中断配置========================
// UART初始化
int UartInit(u16 DeviceId)
{
	XUartPs_Config *Config;
	int Status;
	// 根据器件ID查找配置信息
	Config = XUartPs_LookupConfig(DeviceId);
	// 根据配置信息对PS UART进行初始化
	Status = XUartPs_CfgInitialize(&UartInstance, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	// 设置波特率
	XUartPs_SetBaudRate(&UartInstance, 115200);
	// 设置RxFiFo触发阈值为1
	XUartPs_SetFifoThreshold(&UartInstance, 1);
	//  设置普通模式
	XUartPs_SetOperMode(&UartInstance, XUARTPS_OPER_MODE_NORMAL);
	//  设置触发类型为RxFiFo触发
	XUartPs_SetInterruptMask(&UartInstance, XUARTPS_IXR_RXOVR);

	return XST_SUCCESS;
}
// 解析单个字符
void ParseChar(char c)
{
	// 防止缓冲区溢出
	if (bufferIndex >= sizeof(frameBuffer) - 1 && c != '\r' && c != '\n' && c != ' ' && c != ',')
	{
		ResetParser(); // 缓冲区溢出，重置解析器
		return;
	}

	switch (currentState)
	{
	case STATE_WAIT_D:
		if (c == 'd')
			currentState = STATE_WAIT_M;
		break;

	case STATE_WAIT_M:
		if (c == 'm')
			currentState = STATE_WAIT_C;
		else
			currentState = STATE_WAIT_D; // 重置
		break;

	case STATE_WAIT_C:
		if (c == 'c')
			currentState = STATE_WAIT_A;
		else
			currentState = STATE_WAIT_D; // 重置
		break;

	case STATE_WAIT_A:
		if (c == 'a')
		{
			currentState = STATE_READ_TIME;
			bufferIndex = 0;
		}
		else
		{
			currentState = STATE_WAIT_D; // 重置
		}
		break;

	case STATE_READ_TIME:
		// 使用空格、逗号作为分隔符
		if (c == ' ' || c == ',')
		{
			if (bufferIndex > 0)
			{
				frameBuffer[bufferIndex] = '\0';
				currentFrame.time = atoi(frameBuffer);
				bufferIndex = 0;
				currentState = STATE_READ_DATA_NTR;
			}
		}
		else
		{
			frameBuffer[bufferIndex++] = c;
		}
		break;

	case STATE_READ_DATA_NTR:
		// 使用空格、逗号作为分隔符
		if (c == ' ' || c == ',')
		{
			if (bufferIndex > 0)
			{
				frameBuffer[bufferIndex] = '\0';
				currentFrame.data_ntr = atoi(frameBuffer);
				bufferIndex = 0;
				currentState = STATE_READ_DATA_NTF;
			}
		}
		else
		{
			frameBuffer[bufferIndex++] = c;
		}
		break;

	case STATE_READ_DATA_NTF:
		// 使用空格、逗号、回车或换行作为分隔符
		if (c == ' ' || c == ',')
		{
			if (bufferIndex > 0)
			{
				frameBuffer[bufferIndex] = '\0';
				currentFrame.data_ntf = atoi(frameBuffer);
				bufferIndex = 0; // 添加这一行
				currentState = STATE_READ_DATA_NA;
			}
		}
		else
		{
			frameBuffer[bufferIndex++] = c;
		}
		break;

	case STATE_READ_DATA_NA:
		// 使用空格、逗号、回车或换行作为分隔符
		if (c == ' ' || c == ',')
		{
			if (bufferIndex > 0)
			{
				frameBuffer[bufferIndex] = '\0';
				currentFrame.data_na = atoi(frameBuffer);
				bufferIndex = 0; // 添加这一行
				currentState = STATE_READ_DATA_NB;
			}
		}
		else
		{
			frameBuffer[bufferIndex++] = c;
		}
		break;

	case STATE_READ_DATA_NB:
		// 使用空格、逗号、回车或换行作为分隔符
		if (c == ' ' || c == ',' || c == '\r' || c == '\n')
		{
			if (bufferIndex > 0)
			{
				frameBuffer[bufferIndex] = '\0';
				currentFrame.data_nb = atoi(frameBuffer);
				currentState = STATE_COMPLETE;
			}
		}
		else
		{
			frameBuffer[bufferIndex++] = c;
		}
		break;

	case STATE_COMPLETE:
		// 新帧到来前忽略字符
		break;
	}
}

// 检查是否接收到完整帧
int IsFrameComplete()
{
	return (currentState == STATE_COMPLETE);
}

// 重置解析状态机
void ResetParser()
{
	currentState = STATE_WAIT_D;
	bufferIndex = 0;
}
