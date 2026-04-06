-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Sep 16 20:17:10 2025
-- Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_dmca_0_0/top_dmca_0_0_stub.vhdl
-- Design      : top_dmca_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_dmca_0_0 is
  Port ( 
    peak_threshold : in STD_LOGIC_VECTOR ( 13 downto 0 );
    peak_threshold_count : in STD_LOGIC_VECTOR ( 5 downto 0 );
    na : in STD_LOGIC_VECTOR ( 8 downto 0 );
    nb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    a_over_na_mul_a_minus_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inv_na_mul_a_minus_b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    peakext_delay_time : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_clk : in STD_LOGIC;
    sys_rstn : in STD_LOGIC;
    alg_en : in STD_LOGIC;
    adc_fifo_datain : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_otr : in STD_LOGIC;
    peak_value_ok : out STD_LOGIC;
    peak_value : out STD_LOGIC_VECTOR ( 13 downto 0 );
    trapezd_data : out STD_LOGIC_VECTOR ( 17 downto 0 );
    triangle_data : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end top_dmca_0_0;

architecture stub of top_dmca_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "peak_threshold[13:0],peak_threshold_count[5:0],na[8:0],nb[8:0],a_over_na_mul_a_minus_b[31:0],inv_na_mul_a_minus_b[31:0],b[31:0],peakext_delay_time[8:0],sys_clk,sys_rstn,alg_en,adc_fifo_datain[13:0],adc_otr,peak_value_ok,peak_value[13:0],trapezd_data[17:0],triangle_data[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dmca_v1_0,Vivado 2018.3";
begin
end;
