
`timescale 1 ns / 1 ps

    module dmca_v1_0
    (
        input                [  13: 0]                         peak_threshold             ,
        input                [   5: 0]                         peak_threshold_count       ,
        input                [   8: 0]                         na                         ,
        input                [   8: 0]                         nb                         ,
        input        signed  [  31: 0]                         a_over_na_mul_a_minus_b    ,
        input        signed  [  31: 0]                         inv_na_mul_a_minus_b       ,
        input        signed  [  31: 0]                         b                          ,
        input                [   8: 0]                         peakext_delay_time         ,
        // 系统时钟和复位信号
        input                                                  sys_clk                    ,
        input                                                  sys_rstn                   ,
        // 使能信号
        input                                                  alg_en                     ,//来自 PS 的控制信号
        // ADC
        input         signed [  13: 0]                         adc_fifo_datain            ,

        input                                                  adc_otr                    ,
        //------------------------------------------------//
        // 成形输出和幅度输出
        output                                                 peak_value_ok              ,
        output               [  13: 0]                         peak_value                 ,
        output       signed  [  17: 0]                         trapezd_data               ,
        output       signed  [  17: 0]                         triangle_data
    );
    // 梯形成形算法
    localparam                          REG_GLOBAL_LIMIT            = 400   ; //限制成形参数寄存器的存储深度
    // 基线估计
    localparam                          BASELINE_AVR_POINT          = 8     ; // 基线估计平均点数
    // 幅度提取
    localparam                          PEAK_AVR_POINT              = 32    ; // 幅度提取平均点数

    wire                                                 global_rstn                 ;
    wire                                                 peak_start_flag             ;
    wire                                                 stacking_flag               ;
    wire    signed     [  17: 0]                         trapezd_alg_data            ;
    wire    signed     [  17: 0]                         triangle_alg_data           ;
    wire    signed     [  17: 0]                         trapezd_baseline            ;

    assign                              trapezd_data                = trapezd_alg_data;// 梯形成形脉冲
    assign                              triangle_data               = triangle_alg_data;// 三角成形脉冲
    assign                              global_rstn                 = sys_rstn & alg_en;

    // 慢通道梯形成形
    trapezd_alg
        #(
            .REG_GLOBAL_LIMIT                   (REG_GLOBAL_LIMIT          )
        )   u1_traped
        (
            .sys_clk                            (sys_clk                   ),
            .sys_rstn                           (global_rstn               ),
            .adc_fifo_datain                    (adc_fifo_datain           ),
            .na                                 (na                        ),
            .nb                                 (nb                        ),
            .a_over_na_mul_a_minus_b            (a_over_na_mul_a_minus_b   ),
            .inv_na_mul_a_minus_b               (inv_na_mul_a_minus_b      ),
            .b                                  (b                         ),
            .trapezd_alg_dataout                (trapezd_alg_data          )
        );
    // 快通道三角成形
    trapezd_alg
        #(
            .REG_GLOBAL_LIMIT                   (REG_GLOBAL_LIMIT          )
        )   u2_triangle
        (
            .sys_clk                            (sys_clk                   ),
            .sys_rstn                           (global_rstn               ),
            .adc_fifo_datain                    (adc_fifo_datain           ),
            .na                                 (na>>1                     ),
            .nb                                 (na>>1                     ),
            .a_over_na_mul_a_minus_b            (a_over_na_mul_a_minus_b<<1),
            .inv_na_mul_a_minus_b               (inv_na_mul_a_minus_b<<1   ),
            .b                                  (b                         ),
            .trapezd_alg_dataout                (triangle_alg_data         )
        );
    // 确定脉冲起始位置
    location_logic u3
                   (
                       .sys_clk                            (sys_clk                   ),
                       .sys_rstn                           (global_rstn               ),
                       .triangle_alg_data                  (triangle_alg_data         ),
                       .peak_start_flag                    (peak_start_flag           ),
                       .peak_threshold                     (peak_threshold            ),
                       .peak_threshold_count               (peak_threshold_count      )
                   );

    // 计算脉冲到达之前梯形形成的基线平均值
    baseline_estimation
        #(
            .REG_GLOBAL_LIMIT                   (REG_GLOBAL_LIMIT          ),
            .BASELINE_AVR_POINT                 (BASELINE_AVR_POINT        )
        )   u4
        (
            .sys_clk                            (sys_clk                   ),
            .sys_rstn                           (global_rstn               ),
            .peak_start_flag                    (peak_start_flag           ),
            .trapezd_alg_datain                 (trapezd_alg_data          ),
            .trapezd_baseline                   (trapezd_baseline          ),
            // 成形参数输入
            .na                                 (na                        ),
            .nb                                 (nb                        )
        );

    // 堆积处理
    stacking_logic  u5
                    (
                        .sys_clk                            (sys_clk                   ),
                        .sys_rstn                           (global_rstn               ),
                        .peak_start_flag                    (peak_start_flag           ),
                        .stacking_flag                      (stacking_flag             ),
                        // 成形参数输入
                        .nb                                 (nb                        )
                    );

    // 提取梯形形成的平顶平均值得到脉冲幅度
    peak_extraction
        #(
            .PEAK_AVR_POINT                     (PEAK_AVR_POINT            )
        )   u6
        (
            .sys_clk                            (sys_clk                   ),
            .sys_rstn                           (global_rstn               ),
            .trapezd_alg_datain                 (trapezd_alg_data          ),
            .trapezd_baseline                   (trapezd_baseline          ),
            .peak_start_flag                    (peak_start_flag           ),
            .stacking_flag                      (stacking_flag             ),
            .adc_otr                            (0                         ),
            .peak_value_ok                      (peak_value_ok             ),
            .peak_true_value                    (peak_value                ),
            // 参数输入
            .peakext_delay_time                 (peakext_delay_time        )
        );
endmodule
