`timescale 1ns / 1ps
module dmca_tb();
    reg                                                  sys_clk                     ;
    reg                                                  ena                         ;
    reg                                                  alg_en                      ;
    reg                                                  sys_rstn                    ;
    wire               [  11: 0]                         douta                       ;
    wire                                                 peak_value_ok               ;
    wire               [  13: 0]                         peak_value                  ;
    wire               [  17: 0]                         trapezd_data                ;
    wire               [  17: 0]                         triangle_data               ;

    adc_bram_0 adc_bram_0_uut (
    .clka                               (sys_clk                   ),// input wire clka
    .ena                                (ena                       ),// input wire ena
    .douta                              (douta                     ) // output wire [11 : 0] douta
    );
    // 将ADC数据转为14位有符号数据
    wire    signed     [  13: 0]                         adc_fifo_datain             ;
    assign                              adc_fifo_datain             = $signed(douta-13'd2048);
    dmca_0 dmca_0_uut (
    .peak_threshold                     (100                       ),// input wire [13 : 0] peak_threshold
    .peak_threshold_count               (12                        ),// input wire [5 : 0] peak_threshold_count
    .na                                 (40                        ),// input wire [8 : 0] na
    .nb                                 (80                        ),// input wire [8 : 0] nb
    .a_over_na_mul_a_minus_b            (88819541                  ),// input wire [31 : 0] a_over_na_mul_a_minus_b
    .inv_na_mul_a_minus_b               (91068019                  ),// input wire [31 : 0] inv_na_mul_a_minus_b
    .b                                  (836230973                 ),// input wire [31 : 0] b
    .peakext_delay_time                 (20                        ),// input wire [8 : 0] peakext_delay_time
    .sys_clk                            (sys_clk                   ),// input wire sys_clk
    .sys_rstn                           (sys_rstn                  ),// input wire sys_rstn
    .alg_en                             (alg_en                    ),// input wire alg_en
    .adc_fifo_datain                    (adc_fifo_datain           ),// input wire [13 : 0] adc_fifo_datain
    .adc_otr                            (0                         ),// input wire adc_otr
    .peak_value_ok                      (peak_value_ok             ),// output wire peak_value_ok
    .peak_value                         (peak_value                ),// output wire [13 : 0] peak_value
    .trapezd_data                       (trapezd_data              ),// output wire [17 : 0] trapezd_data
    .triangle_data                      (triangle_data             ) // output wire [17 : 0] triangle_data
    );
    initial begin
        sys_rstn = 0;sys_clk=0;ena=0;alg_en=0;
        #200 sys_rstn = 1;ena = 1;
        #100 alg_en = 1;
    end
    initial begin
        forever begin
            #15 sys_clk = ~sys_clk;
        end
    end
endmodule
