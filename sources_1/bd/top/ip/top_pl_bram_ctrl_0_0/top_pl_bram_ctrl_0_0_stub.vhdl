-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Sep 16 18:17:50 2025
-- Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_pl_bram_ctrl_0_0/top_pl_bram_ctrl_0_0_stub.vhdl
-- Design      : top_pl_bram_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_pl_bram_ctrl_0_0 is
  Port ( 
    sys_clk : in STD_LOGIC;
    clk : out STD_LOGIC;
    spe_en : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    peak_value_ok : in STD_LOGIC;
    peak_value : in STD_LOGIC_VECTOR ( 13 downto 0 );
    din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en : out STD_LOGIC;
    we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    intr_clr : in STD_LOGIC;
    intr : out STD_LOGIC;
    intr_clr_resp : out STD_LOGIC
  );

end top_pl_bram_ctrl_0_0;

architecture stub of top_pl_bram_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,clk,spe_en,rst_n,peak_value_ok,peak_value[13:0],din[31:0],dout[31:0],en,we[3:0],rst,addr[31:0],intr_clr,intr,intr_clr_resp";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pl_bram_ctrl_v1_0,Vivado 2018.3";
begin
end;
