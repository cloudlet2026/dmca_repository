`timescale 1ns / 1ps
// 积分运算
// H(z) = (1 - a*z^{-1}) / [na*(a - b)*(1 - z^{-1})]
// v2[n] = (1/(na*(a-b)))*v1[n] - (a/(na*(a-b)))*v1[n-1] + v2[n-1]
module trapezd_alg_m2(
        input                               sys_clk, sys_rstn          ,
        input        signed  [  15: 0]      trapezd_alg_m1_datain      ,
        input        signed  [  31: 0]      a_over_na_mul_a_minus_b    ,
        input        signed  [  31: 0]      inv_na_mul_a_minus_b       ,

        output reg   signed  [  49: 0]      trapezd_alg_m2_dataout
    );

    reg     signed     [  15: 0]        vi_delay1                   ;

    wire    signed     [  49: 0]        multiple_temp1              ;
    wire    signed     [  49: 0]        multiple_temp2              ;

    assign                              multiple_temp1              = trapezd_alg_m1_datain * inv_na_mul_a_minus_b;
    assign                              multiple_temp2              = vi_delay1 * a_over_na_mul_a_minus_b;

    always@(posedge sys_clk) begin
        if(!sys_rstn) begin
            trapezd_alg_m2_dataout <= 50'd0;
            vi_delay1 <= 16'd0;
        end
        else begin
            vi_delay1 <= trapezd_alg_m1_datain;
            trapezd_alg_m2_dataout <= trapezd_alg_m2_dataout + multiple_temp1 - multiple_temp2;
        end
    end

endmodule
