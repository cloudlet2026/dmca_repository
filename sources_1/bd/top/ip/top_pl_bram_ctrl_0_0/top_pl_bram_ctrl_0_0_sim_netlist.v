// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 16 18:17:50 2025
// Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_pl_bram_ctrl_0_0/top_pl_bram_ctrl_0_0_sim_netlist.v
// Design      : top_pl_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_pl_bram_ctrl_0_0,pl_bram_ctrl_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pl_bram_ctrl_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module top_pl_bram_ctrl_0_0
   (sys_clk,
    clk,
    spe_en,
    rst_n,
    peak_value_ok,
    peak_value,
    din,
    dout,
    en,
    we,
    rst,
    addr,
    intr_clr,
    intr,
    intr_clr_resp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 66666672, PHASE 0.000, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK, xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) output clk;
  input spe_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input peak_value_ok;
  input [13:0]peak_value;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *) output [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) input [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *) output en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *) output [3:0]we;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST, xilinx.com:interface:bram:1.0 BRAM_PORT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output [31:0]addr;
  input intr_clr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 intr INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output intr;
  output intr_clr_resp;

  wire \<const0> ;
  wire [15:1]\^addr ;
  wire [31:0]din;
  wire [31:0]dout;
  wire en;
  wire intr;
  wire intr_clr;
  wire intr_clr_resp;
  wire [13:0]peak_value;
  wire peak_value_ok;
  wire rst_n;
  wire spe_en;
  wire sys_clk;
  wire [2:2]\^we ;

  assign addr[31] = \<const0> ;
  assign addr[30] = \<const0> ;
  assign addr[29] = \<const0> ;
  assign addr[28] = \<const0> ;
  assign addr[27] = \<const0> ;
  assign addr[26] = \<const0> ;
  assign addr[25] = \<const0> ;
  assign addr[24] = \<const0> ;
  assign addr[23] = \<const0> ;
  assign addr[22] = \<const0> ;
  assign addr[21] = \<const0> ;
  assign addr[20] = \<const0> ;
  assign addr[19] = \<const0> ;
  assign addr[18] = \<const0> ;
  assign addr[17] = \<const0> ;
  assign addr[16] = \<const0> ;
  assign addr[15:1] = \^addr [15:1];
  assign addr[0] = \<const0> ;
  assign clk = sys_clk;
  assign we[3] = \^we [2];
  assign we[2] = \^we [2];
  assign we[1] = \^we [2];
  assign we[0] = \^we [2];
  GND GND
       (.G(\<const0> ));
  top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0 inst
       (.addr(\^addr ),
        .din(din),
        .dout(dout),
        .en(en),
        .intr(intr),
        .intr_clr(intr_clr),
        .intr_clr_resp(intr_clr_resp),
        .peak_value(peak_value),
        .peak_value_ok(peak_value_ok),
        .rst_n(rst_n),
        .spe_en(spe_en),
        .sys_clk(sys_clk),
        .we(\^we ));
endmodule

(* ORIG_REF_NAME = "pl_bram_ctrl_v1_0" *) 
module top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0
   (din,
    addr,
    en,
    we,
    intr,
    intr_clr_resp,
    spe_en,
    sys_clk,
    peak_value_ok,
    peak_value,
    dout,
    rst_n,
    intr_clr);
  output [31:0]din;
  output [14:0]addr;
  output en;
  output [0:0]we;
  output intr;
  output intr_clr_resp;
  input spe_en;
  input sys_clk;
  input peak_value_ok;
  input [13:0]peak_value;
  input [31:0]dout;
  input rst_n;
  input intr_clr;

  wire [14:0]addr;
  wire \addr[10]_i_1_n_0 ;
  wire \addr[11]_i_1_n_0 ;
  wire \addr[12]_i_1_n_0 ;
  wire \addr[13]_i_1_n_0 ;
  wire \addr[14]_i_1_n_0 ;
  wire \addr[15]_i_1_n_0 ;
  wire \addr[15]_i_2_n_0 ;
  wire \addr[15]_i_3_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire \addr[8]_i_1_n_0 ;
  wire \addr[9]_i_1_n_0 ;
  wire [14:1]clear_cnt0;
  wire clear_cnt0_carry__0_n_0;
  wire clear_cnt0_carry__0_n_1;
  wire clear_cnt0_carry__0_n_2;
  wire clear_cnt0_carry__0_n_3;
  wire clear_cnt0_carry__1_n_0;
  wire clear_cnt0_carry__1_n_1;
  wire clear_cnt0_carry__1_n_2;
  wire clear_cnt0_carry__1_n_3;
  wire clear_cnt0_carry__2_n_3;
  wire clear_cnt0_carry_i_1_n_0;
  wire clear_cnt0_carry_n_0;
  wire clear_cnt0_carry_n_1;
  wire clear_cnt0_carry_n_2;
  wire clear_cnt0_carry_n_3;
  wire \clear_cnt[14]_i_1_n_0 ;
  wire [31:0]din;
  wire [31:1]din0;
  wire \din[0]_i_1_n_0 ;
  wire \din[10]_i_1_n_0 ;
  wire \din[11]_i_1_n_0 ;
  wire \din[12]_i_1_n_0 ;
  wire \din[13]_i_1_n_0 ;
  wire \din[14]_i_1_n_0 ;
  wire \din[15]_i_1_n_0 ;
  wire \din[16]_i_1_n_0 ;
  wire \din[17]_i_1_n_0 ;
  wire \din[18]_i_1_n_0 ;
  wire \din[19]_i_1_n_0 ;
  wire \din[1]_i_1_n_0 ;
  wire \din[20]_i_1_n_0 ;
  wire \din[21]_i_1_n_0 ;
  wire \din[22]_i_1_n_0 ;
  wire \din[23]_i_1_n_0 ;
  wire \din[24]_i_1_n_0 ;
  wire \din[25]_i_1_n_0 ;
  wire \din[26]_i_1_n_0 ;
  wire \din[27]_i_1_n_0 ;
  wire \din[28]_i_1_n_0 ;
  wire \din[29]_i_1_n_0 ;
  wire \din[2]_i_1_n_0 ;
  wire \din[30]_i_1_n_0 ;
  wire \din[31]_i_1_n_0 ;
  wire \din[31]_i_2_n_0 ;
  wire \din[31]_i_3_n_0 ;
  wire \din[3]_i_1_n_0 ;
  wire \din[4]_i_1_n_0 ;
  wire \din[5]_i_1_n_0 ;
  wire \din[6]_i_1_n_0 ;
  wire \din[7]_i_1_n_0 ;
  wire \din[8]_i_1_n_0 ;
  wire \din[9]_i_1_n_0 ;
  wire \din_reg[12]_i_2_n_0 ;
  wire \din_reg[12]_i_2_n_1 ;
  wire \din_reg[12]_i_2_n_2 ;
  wire \din_reg[12]_i_2_n_3 ;
  wire \din_reg[16]_i_2_n_0 ;
  wire \din_reg[16]_i_2_n_1 ;
  wire \din_reg[16]_i_2_n_2 ;
  wire \din_reg[16]_i_2_n_3 ;
  wire \din_reg[20]_i_2_n_0 ;
  wire \din_reg[20]_i_2_n_1 ;
  wire \din_reg[20]_i_2_n_2 ;
  wire \din_reg[20]_i_2_n_3 ;
  wire \din_reg[24]_i_2_n_0 ;
  wire \din_reg[24]_i_2_n_1 ;
  wire \din_reg[24]_i_2_n_2 ;
  wire \din_reg[24]_i_2_n_3 ;
  wire \din_reg[28]_i_2_n_0 ;
  wire \din_reg[28]_i_2_n_1 ;
  wire \din_reg[28]_i_2_n_2 ;
  wire \din_reg[28]_i_2_n_3 ;
  wire \din_reg[31]_i_4_n_2 ;
  wire \din_reg[31]_i_4_n_3 ;
  wire \din_reg[4]_i_2_n_0 ;
  wire \din_reg[4]_i_2_n_1 ;
  wire \din_reg[4]_i_2_n_2 ;
  wire \din_reg[4]_i_2_n_3 ;
  wire \din_reg[8]_i_2_n_0 ;
  wire \din_reg[8]_i_2_n_1 ;
  wire \din_reg[8]_i_2_n_2 ;
  wire \din_reg[8]_i_2_n_3 ;
  wire [31:0]dout;
  wire en;
  wire en_i_1_n_0;
  wire intr;
  wire intr_clr;
  wire intr_clr_resp;
  wire intr_clr_resp_i_1_n_0;
  wire intr_clr_resp_i_2_n_0;
  wire intr_i_1_n_0;
  wire [14:1]p_1_in;
  wire [13:0]peak_value;
  wire peak_value_ok;
  wire peak_value_ok_sync;
  wire peak_value_ok_sync1;
  wire [13:0]peak_value_sync;
  wire [13:0]peak_value_sync1;
  wire rst_n;
  wire [14:1]sel0;
  wire spe_en;
  wire spe_en_prev;
  wire start;
  wire start0;
  wire [0:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire stop;
  wire stop0;
  wire sys_clk;
  wire [0:0]we;
  wire \we[3]_i_1_n_0 ;
  wire \we[3]_i_2_n_0 ;
  wire \we[3]_i_3_n_0 ;
  wire \we[3]_i_4_n_0 ;
  wire \we[3]_i_5_n_0 ;
  wire \we[3]_i_6_n_0 ;
  wire \we[3]_i_7_n_0 ;
  wire [3:1]NLW_clear_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_clear_cnt0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_din_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_din_reg[31]_i_4_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[10]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[8]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[10]),
        .O(\addr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[11]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[9]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[11]),
        .O(\addr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[12]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[10]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[12]),
        .O(\addr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55404040)) 
    \addr[13]_i_1 
       (.I0(start),
        .I1(\state_reg_n_0_[1] ),
        .I2(peak_value_sync[11]),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[13]),
        .O(\addr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[14]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(sel0[14]),
        .I2(start),
        .I3(\state_reg_n_0_[1] ),
        .I4(peak_value_sync[12]),
        .O(\addr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCDDCCDF)) 
    \addr[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(start),
        .I2(\addr[15]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(stop),
        .O(\addr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr[15]_i_2 
       (.I0(peak_value_sync[13]),
        .I1(\state_reg_n_0_[1] ),
        .I2(start),
        .O(\addr[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h10FF)) 
    \addr[15]_i_3 
       (.I0(\we[3]_i_7_n_0 ),
        .I1(\we[3]_i_6_n_0 ),
        .I2(\we[3]_i_5_n_0 ),
        .I3(peak_value_ok_sync),
        .O(\addr[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addr[1]_i_1 
       (.I0(sel0[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(\addr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[0]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[2]),
        .O(\addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[1]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[4]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[2]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[4]),
        .O(\addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[5]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[3]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[5]),
        .O(\addr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[6]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[4]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[6]),
        .O(\addr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[7]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[5]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[7]),
        .O(\addr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[8]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[6]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[8]),
        .O(\addr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F080808)) 
    \addr[9]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(peak_value_sync[7]),
        .I2(start),
        .I3(\state_reg_n_0_[0] ),
        .I4(sel0[9]),
        .O(\addr[9]_i_1_n_0 ));
  FDCE \addr_reg[10] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[10]_i_1_n_0 ),
        .Q(addr[9]));
  FDCE \addr_reg[11] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[11]_i_1_n_0 ),
        .Q(addr[10]));
  FDCE \addr_reg[12] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[12]_i_1_n_0 ),
        .Q(addr[11]));
  FDCE \addr_reg[13] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[13]_i_1_n_0 ),
        .Q(addr[12]));
  FDCE \addr_reg[14] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[14]_i_1_n_0 ),
        .Q(addr[13]));
  FDCE \addr_reg[15] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[15]_i_2_n_0 ),
        .Q(addr[14]));
  FDCE \addr_reg[1] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[0]));
  FDCE \addr_reg[2] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr[1]));
  FDCE \addr_reg[3] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(addr[2]));
  FDCE \addr_reg[4] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[4]_i_1_n_0 ),
        .Q(addr[3]));
  FDCE \addr_reg[5] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[5]_i_1_n_0 ),
        .Q(addr[4]));
  FDCE \addr_reg[6] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[6]_i_1_n_0 ),
        .Q(addr[5]));
  FDCE \addr_reg[7] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[7]_i_1_n_0 ),
        .Q(addr[6]));
  FDCE \addr_reg[8] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[8]_i_1_n_0 ),
        .Q(addr[7]));
  FDCE \addr_reg[9] 
       (.C(sys_clk),
        .CE(\addr[15]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\addr[9]_i_1_n_0 ),
        .Q(addr[8]));
  CARRY4 clear_cnt0_carry
       (.CI(1'b0),
        .CO({clear_cnt0_carry_n_0,clear_cnt0_carry_n_1,clear_cnt0_carry_n_2,clear_cnt0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel0[2],1'b0}),
        .O(clear_cnt0[4:1]),
        .S({sel0[4:3],clear_cnt0_carry_i_1_n_0,sel0[1]}));
  CARRY4 clear_cnt0_carry__0
       (.CI(clear_cnt0_carry_n_0),
        .CO({clear_cnt0_carry__0_n_0,clear_cnt0_carry__0_n_1,clear_cnt0_carry__0_n_2,clear_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(clear_cnt0[8:5]),
        .S(sel0[8:5]));
  CARRY4 clear_cnt0_carry__1
       (.CI(clear_cnt0_carry__0_n_0),
        .CO({clear_cnt0_carry__1_n_0,clear_cnt0_carry__1_n_1,clear_cnt0_carry__1_n_2,clear_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(clear_cnt0[12:9]),
        .S(sel0[12:9]));
  CARRY4 clear_cnt0_carry__2
       (.CI(clear_cnt0_carry__1_n_0),
        .CO({NLW_clear_cnt0_carry__2_CO_UNCONNECTED[3:1],clear_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clear_cnt0_carry__2_O_UNCONNECTED[3:2],clear_cnt0[14:13]}),
        .S({1'b0,1'b0,sel0[14:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    clear_cnt0_carry_i_1
       (.I0(sel0[2]),
        .O(clear_cnt0_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[10]_i_1 
       (.I0(clear_cnt0[10]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[11]_i_1 
       (.I0(clear_cnt0[11]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[12]_i_1 
       (.I0(clear_cnt0[12]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[13]_i_1 
       (.I0(clear_cnt0[13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \clear_cnt[14]_i_1 
       (.I0(start),
        .I1(\state[1]_i_2_n_0 ),
        .I2(stop),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\clear_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[14]_i_2 
       (.I0(clear_cnt0[14]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[1]_i_1 
       (.I0(clear_cnt0[1]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[2]_i_1 
       (.I0(clear_cnt0[2]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[3]_i_1 
       (.I0(clear_cnt0[3]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[4]_i_1 
       (.I0(clear_cnt0[4]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[5]_i_1 
       (.I0(clear_cnt0[5]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[6]_i_1 
       (.I0(clear_cnt0[6]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[7]_i_1 
       (.I0(clear_cnt0[7]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[8]_i_1 
       (.I0(clear_cnt0[8]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \clear_cnt[9]_i_1 
       (.I0(clear_cnt0[9]),
        .I1(\state_reg_n_0_[0] ),
        .I2(start),
        .O(p_1_in[9]));
  FDCE \clear_cnt_reg[10] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[10]),
        .Q(sel0[10]));
  FDCE \clear_cnt_reg[11] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[11]),
        .Q(sel0[11]));
  FDCE \clear_cnt_reg[12] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[12]),
        .Q(sel0[12]));
  FDCE \clear_cnt_reg[13] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[13]),
        .Q(sel0[13]));
  FDCE \clear_cnt_reg[14] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[14]),
        .Q(sel0[14]));
  FDCE \clear_cnt_reg[1] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[1]),
        .Q(sel0[1]));
  FDCE \clear_cnt_reg[2] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[2]),
        .Q(sel0[2]));
  FDCE \clear_cnt_reg[3] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[3]),
        .Q(sel0[3]));
  FDCE \clear_cnt_reg[4] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[4]),
        .Q(sel0[4]));
  FDCE \clear_cnt_reg[5] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[5]),
        .Q(sel0[5]));
  FDCE \clear_cnt_reg[6] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[6]),
        .Q(sel0[6]));
  FDCE \clear_cnt_reg[7] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[7]),
        .Q(sel0[7]));
  FDCE \clear_cnt_reg[8] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[8]),
        .Q(sel0[8]));
  FDCE \clear_cnt_reg[9] 
       (.C(sys_clk),
        .CE(\clear_cnt[14]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(p_1_in[9]),
        .Q(sel0[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \din[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(dout[0]),
        .O(\din[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[10]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[10]),
        .O(\din[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[11]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[11]),
        .O(\din[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[12]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[12]),
        .O(\din[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[13]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[13]),
        .O(\din[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[14]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[14]),
        .O(\din[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[15]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[15]),
        .O(\din[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[16]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[16]),
        .O(\din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[17]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[17]),
        .O(\din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[18]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[18]),
        .O(\din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[19]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[19]),
        .O(\din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[1]),
        .O(\din[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[20]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[20]),
        .O(\din[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[21]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[21]),
        .O(\din[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[22]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[22]),
        .O(\din[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[23]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[23]),
        .O(\din[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[24]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[24]),
        .O(\din[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[25]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[25]),
        .O(\din[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[26]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[26]),
        .O(\din[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[27]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[27]),
        .O(\din[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[28]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[28]),
        .O(\din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[29]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[29]),
        .O(\din[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[2]),
        .O(\din[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[30]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[30]),
        .O(\din[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100011)) 
    \din[31]_i_1 
       (.I0(stop),
        .I1(start),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\din[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[31]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[31]),
        .O(\din[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \din[31]_i_3 
       (.I0(rst_n),
        .O(\din[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[3]),
        .O(\din[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[4]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[4]),
        .O(\din[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[5]),
        .O(\din[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[6]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[6]),
        .O(\din[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[7]),
        .O(\din[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[8]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[8]),
        .O(\din[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \din[9]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(din0[9]),
        .O(\din[9]_i_1_n_0 ));
  FDCE \din_reg[0] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[0]_i_1_n_0 ),
        .Q(din[0]));
  FDCE \din_reg[10] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[10]_i_1_n_0 ),
        .Q(din[10]));
  FDCE \din_reg[11] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[11]_i_1_n_0 ),
        .Q(din[11]));
  FDCE \din_reg[12] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[12]_i_1_n_0 ),
        .Q(din[12]));
  CARRY4 \din_reg[12]_i_2 
       (.CI(\din_reg[8]_i_2_n_0 ),
        .CO({\din_reg[12]_i_2_n_0 ,\din_reg[12]_i_2_n_1 ,\din_reg[12]_i_2_n_2 ,\din_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[12:9]),
        .S(dout[12:9]));
  FDCE \din_reg[13] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[13]_i_1_n_0 ),
        .Q(din[13]));
  FDCE \din_reg[14] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[14]_i_1_n_0 ),
        .Q(din[14]));
  FDCE \din_reg[15] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[15]_i_1_n_0 ),
        .Q(din[15]));
  FDCE \din_reg[16] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[16]_i_1_n_0 ),
        .Q(din[16]));
  CARRY4 \din_reg[16]_i_2 
       (.CI(\din_reg[12]_i_2_n_0 ),
        .CO({\din_reg[16]_i_2_n_0 ,\din_reg[16]_i_2_n_1 ,\din_reg[16]_i_2_n_2 ,\din_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[16:13]),
        .S(dout[16:13]));
  FDCE \din_reg[17] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[17]_i_1_n_0 ),
        .Q(din[17]));
  FDCE \din_reg[18] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[18]_i_1_n_0 ),
        .Q(din[18]));
  FDCE \din_reg[19] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[19]_i_1_n_0 ),
        .Q(din[19]));
  FDCE \din_reg[1] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[1]_i_1_n_0 ),
        .Q(din[1]));
  FDCE \din_reg[20] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[20]_i_1_n_0 ),
        .Q(din[20]));
  CARRY4 \din_reg[20]_i_2 
       (.CI(\din_reg[16]_i_2_n_0 ),
        .CO({\din_reg[20]_i_2_n_0 ,\din_reg[20]_i_2_n_1 ,\din_reg[20]_i_2_n_2 ,\din_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[20:17]),
        .S(dout[20:17]));
  FDCE \din_reg[21] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[21]_i_1_n_0 ),
        .Q(din[21]));
  FDCE \din_reg[22] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[22]_i_1_n_0 ),
        .Q(din[22]));
  FDCE \din_reg[23] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[23]_i_1_n_0 ),
        .Q(din[23]));
  FDCE \din_reg[24] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[24]_i_1_n_0 ),
        .Q(din[24]));
  CARRY4 \din_reg[24]_i_2 
       (.CI(\din_reg[20]_i_2_n_0 ),
        .CO({\din_reg[24]_i_2_n_0 ,\din_reg[24]_i_2_n_1 ,\din_reg[24]_i_2_n_2 ,\din_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[24:21]),
        .S(dout[24:21]));
  FDCE \din_reg[25] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[25]_i_1_n_0 ),
        .Q(din[25]));
  FDCE \din_reg[26] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[26]_i_1_n_0 ),
        .Q(din[26]));
  FDCE \din_reg[27] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[27]_i_1_n_0 ),
        .Q(din[27]));
  FDCE \din_reg[28] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[28]_i_1_n_0 ),
        .Q(din[28]));
  CARRY4 \din_reg[28]_i_2 
       (.CI(\din_reg[24]_i_2_n_0 ),
        .CO({\din_reg[28]_i_2_n_0 ,\din_reg[28]_i_2_n_1 ,\din_reg[28]_i_2_n_2 ,\din_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[28:25]),
        .S(dout[28:25]));
  FDCE \din_reg[29] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[29]_i_1_n_0 ),
        .Q(din[29]));
  FDCE \din_reg[2] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[2]_i_1_n_0 ),
        .Q(din[2]));
  FDCE \din_reg[30] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[30]_i_1_n_0 ),
        .Q(din[30]));
  FDCE \din_reg[31] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[31]_i_2_n_0 ),
        .Q(din[31]));
  CARRY4 \din_reg[31]_i_4 
       (.CI(\din_reg[28]_i_2_n_0 ),
        .CO({\NLW_din_reg[31]_i_4_CO_UNCONNECTED [3:2],\din_reg[31]_i_4_n_2 ,\din_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_din_reg[31]_i_4_O_UNCONNECTED [3],din0[31:29]}),
        .S({1'b0,dout[31:29]}));
  FDCE \din_reg[3] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[3]_i_1_n_0 ),
        .Q(din[3]));
  FDCE \din_reg[4] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[4]_i_1_n_0 ),
        .Q(din[4]));
  CARRY4 \din_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\din_reg[4]_i_2_n_0 ,\din_reg[4]_i_2_n_1 ,\din_reg[4]_i_2_n_2 ,\din_reg[4]_i_2_n_3 }),
        .CYINIT(dout[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[4:1]),
        .S(dout[4:1]));
  FDCE \din_reg[5] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[5]_i_1_n_0 ),
        .Q(din[5]));
  FDCE \din_reg[6] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[6]_i_1_n_0 ),
        .Q(din[6]));
  FDCE \din_reg[7] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[7]_i_1_n_0 ),
        .Q(din[7]));
  FDCE \din_reg[8] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[8]_i_1_n_0 ),
        .Q(din[8]));
  CARRY4 \din_reg[8]_i_2 
       (.CI(\din_reg[4]_i_2_n_0 ),
        .CO({\din_reg[8]_i_2_n_0 ,\din_reg[8]_i_2_n_1 ,\din_reg[8]_i_2_n_2 ,\din_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(din0[8:5]),
        .S(dout[8:5]));
  FDCE \din_reg[9] 
       (.C(sys_clk),
        .CE(\din[31]_i_1_n_0 ),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\din[9]_i_1_n_0 ),
        .Q(din[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    en_i_1
       (.I0(start),
        .I1(\state_reg_n_0_[0] ),
        .I2(stop),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(en),
        .O(en_i_1_n_0));
  FDCE en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(en_i_1_n_0),
        .Q(en));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    intr_clr_resp_i_1
       (.I0(intr_clr),
        .I1(start),
        .I2(\state_reg_n_0_[0] ),
        .I3(stop),
        .I4(intr_clr_resp_i_2_n_0),
        .I5(intr_clr_resp),
        .O(intr_clr_resp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    intr_clr_resp_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(intr_clr_resp_i_2_n_0));
  FDCE intr_clr_resp_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(intr_clr_resp_i_1_n_0),
        .Q(intr_clr_resp));
  LUT6 #(
    .INIT(64'hFFFFFFFE55550000)) 
    intr_i_1
       (.I0(start),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(stop),
        .I5(intr),
        .O(intr_i_1_n_0));
  FDCE intr_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(intr_i_1_n_0),
        .Q(intr));
  FDCE peak_value_ok_sync1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_ok),
        .Q(peak_value_ok_sync1));
  FDCE peak_value_ok_sync2_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_ok_sync1),
        .Q(peak_value_ok_sync));
  FDCE \peak_value_sync1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[0]),
        .Q(peak_value_sync1[0]));
  FDCE \peak_value_sync1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[10]),
        .Q(peak_value_sync1[10]));
  FDCE \peak_value_sync1_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[11]),
        .Q(peak_value_sync1[11]));
  FDCE \peak_value_sync1_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[12]),
        .Q(peak_value_sync1[12]));
  FDCE \peak_value_sync1_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[13]),
        .Q(peak_value_sync1[13]));
  FDCE \peak_value_sync1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[1]),
        .Q(peak_value_sync1[1]));
  FDCE \peak_value_sync1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[2]),
        .Q(peak_value_sync1[2]));
  FDCE \peak_value_sync1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[3]),
        .Q(peak_value_sync1[3]));
  FDCE \peak_value_sync1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[4]),
        .Q(peak_value_sync1[4]));
  FDCE \peak_value_sync1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[5]),
        .Q(peak_value_sync1[5]));
  FDCE \peak_value_sync1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[6]),
        .Q(peak_value_sync1[6]));
  FDCE \peak_value_sync1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[7]),
        .Q(peak_value_sync1[7]));
  FDCE \peak_value_sync1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[8]),
        .Q(peak_value_sync1[8]));
  FDCE \peak_value_sync1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value[9]),
        .Q(peak_value_sync1[9]));
  FDCE \peak_value_sync2_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[0]),
        .Q(peak_value_sync[0]));
  FDCE \peak_value_sync2_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[10]),
        .Q(peak_value_sync[10]));
  FDCE \peak_value_sync2_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[11]),
        .Q(peak_value_sync[11]));
  FDCE \peak_value_sync2_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[12]),
        .Q(peak_value_sync[12]));
  FDCE \peak_value_sync2_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[13]),
        .Q(peak_value_sync[13]));
  FDCE \peak_value_sync2_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[1]),
        .Q(peak_value_sync[1]));
  FDCE \peak_value_sync2_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[2]),
        .Q(peak_value_sync[2]));
  FDCE \peak_value_sync2_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[3]),
        .Q(peak_value_sync[3]));
  FDCE \peak_value_sync2_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[4]),
        .Q(peak_value_sync[4]));
  FDCE \peak_value_sync2_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[5]),
        .Q(peak_value_sync[5]));
  FDCE \peak_value_sync2_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[6]),
        .Q(peak_value_sync[6]));
  FDCE \peak_value_sync2_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[7]),
        .Q(peak_value_sync[7]));
  FDCE \peak_value_sync2_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[8]),
        .Q(peak_value_sync[8]));
  FDCE \peak_value_sync2_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(peak_value_sync1[9]),
        .Q(peak_value_sync[9]));
  FDCE spe_en_prev_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(spe_en),
        .Q(spe_en_prev));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_i_1
       (.I0(spe_en),
        .I1(spe_en_prev),
        .O(start0));
  FDCE start_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(start0),
        .Q(start));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAA20)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(\addr[15]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[0]_i_3_n_0 ),
        .I4(\state[1]_i_2_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAABABAA)) 
    \state[0]_i_2 
       (.I0(start),
        .I1(\state_reg_n_0_[0] ),
        .I2(stop),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFF)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(start),
        .I2(stop),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0011110000111000)) 
    \state[1]_i_1 
       (.I0(start),
        .I1(stop),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \state[1]_i_2 
       (.I0(\state[1]_i_3_n_0 ),
        .I1(\state[1]_i_4_n_0 ),
        .I2(\state[1]_i_5_n_0 ),
        .I3(sel0[4]),
        .I4(sel0[10]),
        .I5(sel0[7]),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[1]_i_3 
       (.I0(sel0[13]),
        .I1(\state_reg_n_0_[0] ),
        .I2(sel0[8]),
        .I3(sel0[6]),
        .O(\state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state[1]_i_4 
       (.I0(sel0[12]),
        .I1(sel0[9]),
        .I2(sel0[5]),
        .I3(sel0[3]),
        .O(\state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[1]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[14]),
        .I3(sel0[11]),
        .O(\state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01001010)) 
    \state[2]_i_1 
       (.I0(start),
        .I1(stop),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[2]_i_1_n_0 ));
  FDCE \state_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ));
  FDCE \state_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ));
  FDCE \state_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stop_i_1
       (.I0(spe_en_prev),
        .I1(spe_en),
        .O(stop0));
  FDCE stop_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(stop0),
        .Q(stop));
  LUT5 #(
    .INIT(32'hEEEFEEE0)) 
    \we[3]_i_1 
       (.I0(start),
        .I1(\state_reg_n_0_[0] ),
        .I2(\we[3]_i_2_n_0 ),
        .I3(\we[3]_i_3_n_0 ),
        .I4(we),
        .O(\we[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040400040)) 
    \we[3]_i_2 
       (.I0(stop),
        .I1(\we[3]_i_4_n_0 ),
        .I2(peak_value_ok_sync),
        .I3(\we[3]_i_5_n_0 ),
        .I4(\we[3]_i_6_n_0 ),
        .I5(\we[3]_i_7_n_0 ),
        .O(\we[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAABAEB)) 
    \we[3]_i_3 
       (.I0(start),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(stop),
        .O(\we[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \we[3]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\we[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \we[3]_i_5 
       (.I0(peak_value_sync[11]),
        .I1(peak_value_sync[12]),
        .I2(peak_value_sync[13]),
        .I3(peak_value_sync[0]),
        .I4(peak_value_sync[4]),
        .I5(peak_value_sync[3]),
        .O(\we[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \we[3]_i_6 
       (.I0(peak_value_sync[8]),
        .I1(peak_value_sync[9]),
        .I2(peak_value_sync[2]),
        .I3(peak_value_sync[5]),
        .O(\we[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \we[3]_i_7 
       (.I0(peak_value_sync[7]),
        .I1(peak_value_sync[10]),
        .I2(peak_value_sync[1]),
        .I3(peak_value_sync[6]),
        .O(\we[3]_i_7_n_0 ));
  FDCE \we_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\din[31]_i_3_n_0 ),
        .D(\we[3]_i_1_n_0 ),
        .Q(we));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
