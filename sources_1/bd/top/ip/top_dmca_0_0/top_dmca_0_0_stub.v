// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 16 20:17:10 2025
// Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_dmca_0_0/top_dmca_0_0_stub.v
// Design      : top_dmca_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dmca_v1_0,Vivado 2018.3" *)
module top_dmca_0_0(peak_threshold, peak_threshold_count, na, nb, 
  a_over_na_mul_a_minus_b, inv_na_mul_a_minus_b, b, peakext_delay_time, sys_clk, sys_rstn, 
  alg_en, adc_fifo_datain, adc_otr, peak_value_ok, peak_value, trapezd_data, triangle_data)
/* synthesis syn_black_box black_box_pad_pin="peak_threshold[13:0],peak_threshold_count[5:0],na[8:0],nb[8:0],a_over_na_mul_a_minus_b[31:0],inv_na_mul_a_minus_b[31:0],b[31:0],peakext_delay_time[8:0],sys_clk,sys_rstn,alg_en,adc_fifo_datain[13:0],adc_otr,peak_value_ok,peak_value[13:0],trapezd_data[17:0],triangle_data[17:0]" */;
  input [13:0]peak_threshold;
  input [5:0]peak_threshold_count;
  input [8:0]na;
  input [8:0]nb;
  input [31:0]a_over_na_mul_a_minus_b;
  input [31:0]inv_na_mul_a_minus_b;
  input [31:0]b;
  input [8:0]peakext_delay_time;
  input sys_clk;
  input sys_rstn;
  input alg_en;
  input [13:0]adc_fifo_datain;
  input adc_otr;
  output peak_value_ok;
  output [13:0]peak_value;
  output [17:0]trapezd_data;
  output [17:0]triangle_data;
endmodule
