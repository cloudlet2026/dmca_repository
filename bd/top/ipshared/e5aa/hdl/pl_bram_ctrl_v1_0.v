
`timescale 1 ns / 1 ps

module pl_bram_ctrl_v1_0 (
    input                                                  sys_clk                    ,//时钟
    input                                                  rst_n                      ,//复位,低电平有效
    //adc port
    input                                                  peak_value_ok              ,//成形幅值有效标志
    input                [  13: 0]                         peak_value                 ,//成形幅值
    //bram port
    input                [  31: 0]                         dout                       ,//BRAM读数据
    output reg           [  31: 0]                         din                        ,//BRAM写数据
    output reg                                             en                         ,//BRAM使能端口
    output reg           [   3: 0]                         we                         ,//BRAM读写使能,字节选通
    output                                                 rst                        ,//BRAM复位,高电平有效
    output reg           [  31: 0]                         addr                       ,//BRAM地址
    output                                                 clk                        ,//BRAM时钟
    input                                                  spe_en                     ,//生成能谱使能
    //Interrupt   
    input                                                  intr_clr                   ,//清除中断信号
    output reg                                             intr                       ,//中断信号
    output reg                                             intr_clr_resp               //清除中断响应
);

    localparam                          BRAM_DEPTH                  = 32'd32768;  //BRAM深度
    localparam                          IDLE                        = 3'd0  ; //空闲状态
    localparam                          CLEAR_BRAM                  = 3'd1  ; //清空BRAM状态
    localparam                          READ_BRAM                   = 3'd2  ; //读BRAM状态
    localparam                          DELAY_1                     = 3'd3  ; //延迟一个时钟
    localparam                          READ_END                    = 3'd4  ; //读完成等待状态
    localparam                          WRITE_BRAM                  = 3'd5  ; //写BRAM状态
    localparam                          WRITE_END                   = 3'd6  ; //写完成状态

    reg                [   2: 0]                         state                       ;
    wire               [  31: 0]                         total_cnt                   ;//总计数
    reg                [  31: 0]                         pulse_cnt                   ;//写BRAM脉冲计数
    reg                [  14: 0]                         clear_cnt                   ;//清空计数器,32768个地址
    reg                                                  start                       ;
    reg                                                  stop                        ;
    reg                                                  spe_en_prev                 ;
    assign clk = sys_clk;

    // 添加跨时钟域同步信号
    reg                                                  peak_value_ok_sync1         ;
    reg                                                  peak_value_ok_sync2         ;
    reg                [  13: 0]                         peak_value_sync1            ;
    reg                [  13: 0]                         peak_value_sync2            ;    
    wire                                                 peak_value_ok_sync        =peak_value_ok_sync2;
    wire               [  13: 0]                         peak_value_sync           =peak_value_sync2;
    
    
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            peak_value_ok_sync1 <= 1'b0;
            peak_value_ok_sync2 <= 1'b0;
            peak_value_sync1    <= 'd0;
            peak_value_sync2    <= 'd0;
        end else begin
            peak_value_ok_sync1 <= peak_value_ok;
            peak_value_ok_sync2 <= peak_value_ok_sync1;
            peak_value_sync1 <= peak_value;
            peak_value_sync2 <= peak_value_sync1;
        end
    end
    
    always @(posedge sys_clk or negedge rst_n) begin
        if(~rst_n)
            spe_en_prev <= 1'b0;
        else
            spe_en_prev <= spe_en;
    end
    always @(posedge sys_clk or negedge rst_n) begin
        if(~rst_n)
            start <= 1'b0;
        else
            start <= spe_en & ~spe_en_prev;
    end
    always @(posedge sys_clk or negedge rst_n) begin
        if(~rst_n)
            stop <= 1'b0;
        else
            stop <= ~spe_en & spe_en_prev;
    end
    //Main statement
    always @(posedge sys_clk or negedge rst_n) begin
        if (~rst_n) begin
            state     <= IDLE;
            din       <= 32'd0;
            en        <= 1'b0;
            we        <= 4'd0;
            addr      <= 32'd0;
            intr      <= 1'b0;
            clear_cnt <= 'd0;
            intr_clr_resp <= 1'b0;
        end else if (start)begin
            state     <= CLEAR_BRAM;
            en        <= 1'b1;                                      // 使能端口
            we        <= 4'hf;                                      // 使能写
            addr      <= 32'd0;                                     // 起始地址
            pulse_cnt <= 'd0;                                       // 写长度计数器清零
            clear_cnt <= 'd0;                                       // 清空计数器清零
        end else if(stop)begin
            state    <= IDLE;
            intr     <= 1'b1;
        end else begin
            case (state)
                IDLE:       begin
                                state     <= IDLE;
                                din       <= 32'd0;
                                en        <= 1'b0;
                                we        <= 4'd0;
                                addr      <= 32'd0;
                                intr      <= 1'b0;
                                clear_cnt <= 'd0;
                                if (intr_clr) begin
                                    intr <= 1'b0;
                                    intr_clr_resp <= 1'b1;
                                end else
                                    intr_clr_resp <= 1'b0;
                            end
                
                CLEAR_BRAM: begin
                                din       <= 32'd0;                 // 写入0值
                                addr      <= {19'd0, clear_cnt};    // 当前地址,13位补0到32位
                                if (clear_cnt == BRAM_DEPTH - 'd4) begin// 清空完成，转到正常操作
                                    state <= READ_BRAM;
                                end else begin
                                    clear_cnt <= clear_cnt + 'd4;   // BRAM数据位宽为32,每次写4个字节
                                end
                            end
                
                READ_BRAM:   begin
                                if (peak_value_sync && peak_value_ok_sync) begin  // 使用同步后的信号
                                    state     <= DELAY_1;               // 进入等待读完成状态
                                    we        <= 4'h0;                  // 使能读
                                    addr      <= (peak_value_sync << 2);// 更新BRAM地址,左移2位匹配16K的BRAM地址
                                end
                            end

                DELAY_1:    begin
                                state <= READ_END;
                            end

                READ_END:   begin
                                state <= WRITE_BRAM;
                            end
                
                WRITE_BRAM:  begin
                                state    <= WRITE_END;
                                we       <= 4'hf;                   // 使能写
                                din      <= dout + 1'b1;             // 读完成,将地址中的数据加1写回地址
                            end
                
                WRITE_END:  begin
                                we    <= 4'h0;                      // 写完成使能读
                                state <= READ_BRAM;
                                pulse_cnt <= pulse_cnt + 1'b1;
                            end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule
