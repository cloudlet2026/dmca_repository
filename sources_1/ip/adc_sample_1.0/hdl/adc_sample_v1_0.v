
`timescale 1 ns / 1 ps

/*************ADC数据缓存********************************************
--AD9238�?12位ADC，测量范围是-5V~+5V，转换后的数字范围是0~+4096
--将ADC输出转换�?14位有符号�?(映射�?-2048~+2048范围)，并通过FIFO�?256深度）缓�?
*********************************************************************/
    module adc_sample_v1_0 (
        input                                                  sys_clk                    ,
        input                                                  sys_rstn                   ,
        input                                                  adc_en                     ,
        input                [  11: 0]                         adc_datain                 ,
        output       signed  [  13: 0]                         adc_fifo_dataout           ,
        output                                                 adc_oe                     ,
        output                                                 adc_clk
    );

    wire    signed     [  13: 0]                         adc_data_signed             ;
    wire                                                 global_rstn                 ;
    wire                                                 rd_clk                      ;
    assign                              global_rstn                 = adc_en & sys_rstn;
    assign                              adc_oe                      = ~global_rstn;
    assign                              rd_clk                      = sys_clk;
    assign                              adc_clk                     = ~sys_clk;
    fifo_generator_0 u_fifo_generator_0 (
                         .clk                                (rd_clk                    ),// input wire clk
                         .srst                               (~global_rstn              ),// input wire srst
                         .din                                (adc_data_signed           ),// input wire [13 : 0] din
                         .wr_en                              (global_rstn               ),// input wire wr_en
                         .rd_en                              (global_rstn               ),// input wire rd_en
                         .dout                               (adc_fifo_dataout          ),// output wire [13 : 0] dout
                         .full                               (                          ),// output wire full
                         .empty                              (                          ) // output wire empty
                     );
    // 将ADC输出转换为为14位有符号�?
    assign adc_data_signed = $signed(adc_datain-13'sd2048);
    
    endmodule
