// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 29 17:30:55 2025
// Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top top_adc_sample_0_0 -prefix
//               top_adc_sample_0_0_ top_adc_sample_0_0_stub.v
// Design      : top_adc_sample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_sample_v1_0,Vivado 2018.3" *)
module top_adc_sample_0_0(sys_clk, sys_rstn, adc_en, adc_datain, 
  adc_fifo_dataout, adc_oe, adc_clk)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rstn,adc_en,adc_datain[11:0],adc_fifo_dataout[13:0],adc_oe,adc_clk" */;
  input sys_clk;
  input sys_rstn;
  input adc_en;
  input [11:0]adc_datain;
  output [13:0]adc_fifo_dataout;
  output adc_oe;
  output adc_clk;
endmodule
