// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 16 18:17:50 2025
// Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_pl_bram_ctrl_0_0/top_pl_bram_ctrl_0_0_stub.v
// Design      : top_pl_bram_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pl_bram_ctrl_v1_0,Vivado 2018.3" *)
module top_pl_bram_ctrl_0_0(sys_clk, clk, spe_en, rst_n, peak_value_ok, 
  peak_value, din, dout, en, we, rst, addr, intr_clr, intr, intr_clr_resp)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,clk,spe_en,rst_n,peak_value_ok,peak_value[13:0],din[31:0],dout[31:0],en,we[3:0],rst,addr[31:0],intr_clr,intr,intr_clr_resp" */;
  input sys_clk;
  output clk;
  input spe_en;
  input rst_n;
  input peak_value_ok;
  input [13:0]peak_value;
  output [31:0]din;
  input [31:0]dout;
  output en;
  output [3:0]we;
  output rst;
  output [31:0]addr;
  input intr_clr;
  output intr;
  output intr_clr_resp;
endmodule
