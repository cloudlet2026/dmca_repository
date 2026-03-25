-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Sep 16 18:17:50 2025
-- Host        : DESKTOP-42U8TEK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/workspace/vivado_workspace/vivado2018.3/dmca_bram_trapezd/dmca_bram_trapezd.srcs/sources_1/bd/top/ip/top_pl_bram_ctrl_0_0/top_pl_bram_ctrl_0_0_sim_netlist.vhdl
-- Design      : top_pl_bram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0 is
  port (
    din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    en : out STD_LOGIC;
    we : out STD_LOGIC_VECTOR ( 0 to 0 );
    intr : out STD_LOGIC;
    intr_clr_resp : out STD_LOGIC;
    spe_en : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    peak_value_ok : in STD_LOGIC;
    peak_value : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_n : in STD_LOGIC;
    intr_clr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0 : entity is "pl_bram_ctrl_v1_0";
end top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0;

architecture STRUCTURE of top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0 is
  signal \addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr[9]_i_1_n_0\ : STD_LOGIC;
  signal clear_cnt0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \clear_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \clear_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \clear_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \clear_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \clear_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \clear_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \clear_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \clear_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \clear_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal clear_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal clear_cnt0_carry_n_0 : STD_LOGIC;
  signal clear_cnt0_carry_n_1 : STD_LOGIC;
  signal clear_cnt0_carry_n_2 : STD_LOGIC;
  signal clear_cnt0_carry_n_3 : STD_LOGIC;
  signal \clear_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal din0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \din[0]_i_1_n_0\ : STD_LOGIC;
  signal \din[10]_i_1_n_0\ : STD_LOGIC;
  signal \din[11]_i_1_n_0\ : STD_LOGIC;
  signal \din[12]_i_1_n_0\ : STD_LOGIC;
  signal \din[13]_i_1_n_0\ : STD_LOGIC;
  signal \din[14]_i_1_n_0\ : STD_LOGIC;
  signal \din[15]_i_1_n_0\ : STD_LOGIC;
  signal \din[16]_i_1_n_0\ : STD_LOGIC;
  signal \din[17]_i_1_n_0\ : STD_LOGIC;
  signal \din[18]_i_1_n_0\ : STD_LOGIC;
  signal \din[19]_i_1_n_0\ : STD_LOGIC;
  signal \din[1]_i_1_n_0\ : STD_LOGIC;
  signal \din[20]_i_1_n_0\ : STD_LOGIC;
  signal \din[21]_i_1_n_0\ : STD_LOGIC;
  signal \din[22]_i_1_n_0\ : STD_LOGIC;
  signal \din[23]_i_1_n_0\ : STD_LOGIC;
  signal \din[24]_i_1_n_0\ : STD_LOGIC;
  signal \din[25]_i_1_n_0\ : STD_LOGIC;
  signal \din[26]_i_1_n_0\ : STD_LOGIC;
  signal \din[27]_i_1_n_0\ : STD_LOGIC;
  signal \din[28]_i_1_n_0\ : STD_LOGIC;
  signal \din[29]_i_1_n_0\ : STD_LOGIC;
  signal \din[2]_i_1_n_0\ : STD_LOGIC;
  signal \din[30]_i_1_n_0\ : STD_LOGIC;
  signal \din[31]_i_1_n_0\ : STD_LOGIC;
  signal \din[31]_i_2_n_0\ : STD_LOGIC;
  signal \din[31]_i_3_n_0\ : STD_LOGIC;
  signal \din[3]_i_1_n_0\ : STD_LOGIC;
  signal \din[4]_i_1_n_0\ : STD_LOGIC;
  signal \din[5]_i_1_n_0\ : STD_LOGIC;
  signal \din[6]_i_1_n_0\ : STD_LOGIC;
  signal \din[7]_i_1_n_0\ : STD_LOGIC;
  signal \din[8]_i_1_n_0\ : STD_LOGIC;
  signal \din[9]_i_1_n_0\ : STD_LOGIC;
  signal \din_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \din_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \din_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \din_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \din_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \din_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \din_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \^en\ : STD_LOGIC;
  signal en_i_1_n_0 : STD_LOGIC;
  signal \^intr\ : STD_LOGIC;
  signal \^intr_clr_resp\ : STD_LOGIC;
  signal intr_clr_resp_i_1_n_0 : STD_LOGIC;
  signal intr_clr_resp_i_2_n_0 : STD_LOGIC;
  signal intr_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal peak_value_ok_sync : STD_LOGIC;
  signal peak_value_ok_sync1 : STD_LOGIC;
  signal peak_value_sync : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal peak_value_sync1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal spe_en_prev : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal stop : STD_LOGIC;
  signal stop0 : STD_LOGIC;
  signal \^we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \we[3]_i_1_n_0\ : STD_LOGIC;
  signal \we[3]_i_2_n_0\ : STD_LOGIC;
  signal \we[3]_i_3_n_0\ : STD_LOGIC;
  signal \we[3]_i_4_n_0\ : STD_LOGIC;
  signal \we[3]_i_5_n_0\ : STD_LOGIC;
  signal \we[3]_i_6_n_0\ : STD_LOGIC;
  signal \we[3]_i_7_n_0\ : STD_LOGIC;
  signal \NLW_clear_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clear_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_din_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_din_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clear_cnt[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clear_cnt[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clear_cnt[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clear_cnt[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clear_cnt[14]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clear_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clear_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clear_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clear_cnt[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \clear_cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clear_cnt[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clear_cnt[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clear_cnt[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clear_cnt[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \din[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \din[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \din[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \din[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \din[14]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \din[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \din[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \din[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \din[18]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \din[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \din[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \din[20]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \din[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \din[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \din[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \din[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \din[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \din[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \din[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \din[28]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \din[29]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \din[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \din[30]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \din[31]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \din[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \din[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \din[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \din[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \din[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \din[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \din[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of intr_clr_resp_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of start_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stop_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \we[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \we[3]_i_4\ : label is "soft_lutpair2";
begin
  en <= \^en\;
  intr <= \^intr\;
  intr_clr_resp <= \^intr_clr_resp\;
  we(0) <= \^we\(0);
\addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(8),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(10),
      O => \addr[10]_i_1_n_0\
    );
\addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(9),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(11),
      O => \addr[11]_i_1_n_0\
    );
\addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(10),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(12),
      O => \addr[12]_i_1_n_0\
    );
\addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404040"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[1]\,
      I2 => peak_value_sync(11),
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(13),
      O => \addr[13]_i_1_n_0\
    );
\addr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => sel0(14),
      I2 => start,
      I3 => \state_reg_n_0_[1]\,
      I4 => peak_value_sync(12),
      O => \addr[14]_i_1_n_0\
    );
\addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCDDCCDF"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => start,
      I2 => \addr[15]_i_3_n_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => stop,
      O => \addr[15]_i_1_n_0\
    );
\addr[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => peak_value_sync(13),
      I1 => \state_reg_n_0_[1]\,
      I2 => start,
      O => \addr[15]_i_2_n_0\
    );
\addr[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \we[3]_i_7_n_0\,
      I1 => \we[3]_i_6_n_0\,
      I2 => \we[3]_i_5_n_0\,
      I3 => peak_value_ok_sync,
      O => \addr[15]_i_3_n_0\
    );
\addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sel0(1),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => \addr[1]_i_1_n_0\
    );
\addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(0),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(2),
      O => \addr[2]_i_1_n_0\
    );
\addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(1),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(3),
      O => \addr[3]_i_1_n_0\
    );
\addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(2),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(4),
      O => \addr[4]_i_1_n_0\
    );
\addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(3),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(5),
      O => \addr[5]_i_1_n_0\
    );
\addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(4),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(6),
      O => \addr[6]_i_1_n_0\
    );
\addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(5),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(7),
      O => \addr[7]_i_1_n_0\
    );
\addr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(6),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(8),
      O => \addr[8]_i_1_n_0\
    );
\addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080808"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => peak_value_sync(7),
      I2 => start,
      I3 => \state_reg_n_0_[0]\,
      I4 => sel0(9),
      O => \addr[9]_i_1_n_0\
    );
\addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[10]_i_1_n_0\,
      Q => addr(9)
    );
\addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[11]_i_1_n_0\,
      Q => addr(10)
    );
\addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[12]_i_1_n_0\,
      Q => addr(11)
    );
\addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[13]_i_1_n_0\,
      Q => addr(12)
    );
\addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[14]_i_1_n_0\,
      Q => addr(13)
    );
\addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[15]_i_2_n_0\,
      Q => addr(14)
    );
\addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[1]_i_1_n_0\,
      Q => addr(0)
    );
\addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[2]_i_1_n_0\,
      Q => addr(1)
    );
\addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[3]_i_1_n_0\,
      Q => addr(2)
    );
\addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[4]_i_1_n_0\,
      Q => addr(3)
    );
\addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[5]_i_1_n_0\,
      Q => addr(4)
    );
\addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[6]_i_1_n_0\,
      Q => addr(5)
    );
\addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[7]_i_1_n_0\,
      Q => addr(6)
    );
\addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[8]_i_1_n_0\,
      Q => addr(7)
    );
\addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \addr[15]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \addr[9]_i_1_n_0\,
      Q => addr(8)
    );
clear_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clear_cnt0_carry_n_0,
      CO(2) => clear_cnt0_carry_n_1,
      CO(1) => clear_cnt0_carry_n_2,
      CO(0) => clear_cnt0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => sel0(2),
      DI(0) => '0',
      O(3 downto 0) => clear_cnt0(4 downto 1),
      S(3 downto 2) => sel0(4 downto 3),
      S(1) => clear_cnt0_carry_i_1_n_0,
      S(0) => sel0(1)
    );
\clear_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clear_cnt0_carry_n_0,
      CO(3) => \clear_cnt0_carry__0_n_0\,
      CO(2) => \clear_cnt0_carry__0_n_1\,
      CO(1) => \clear_cnt0_carry__0_n_2\,
      CO(0) => \clear_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clear_cnt0(8 downto 5),
      S(3 downto 0) => sel0(8 downto 5)
    );
\clear_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_cnt0_carry__0_n_0\,
      CO(3) => \clear_cnt0_carry__1_n_0\,
      CO(2) => \clear_cnt0_carry__1_n_1\,
      CO(1) => \clear_cnt0_carry__1_n_2\,
      CO(0) => \clear_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => clear_cnt0(12 downto 9),
      S(3 downto 0) => sel0(12 downto 9)
    );
\clear_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clear_cnt0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_clear_cnt0_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clear_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clear_cnt0_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => clear_cnt0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1 downto 0) => sel0(14 downto 13)
    );
clear_cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      O => clear_cnt0_carry_i_1_n_0
    );
\clear_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(10),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(10)
    );
\clear_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(11),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(11)
    );
\clear_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(12),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(12)
    );
\clear_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(13),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(13)
    );
\clear_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => start,
      I1 => \state[1]_i_2_n_0\,
      I2 => stop,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \clear_cnt[14]_i_1_n_0\
    );
\clear_cnt[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(14),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(14)
    );
\clear_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(1),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(1)
    );
\clear_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(2),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(2)
    );
\clear_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(3),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(3)
    );
\clear_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(4),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(4)
    );
\clear_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(5),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(5)
    );
\clear_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(6),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(6)
    );
\clear_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(7),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(7)
    );
\clear_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(8),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(8)
    );
\clear_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => clear_cnt0(9),
      I1 => \state_reg_n_0_[0]\,
      I2 => start,
      O => p_1_in(9)
    );
\clear_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(10),
      Q => sel0(10)
    );
\clear_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(11),
      Q => sel0(11)
    );
\clear_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(12),
      Q => sel0(12)
    );
\clear_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(13),
      Q => sel0(13)
    );
\clear_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(14),
      Q => sel0(14)
    );
\clear_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(1),
      Q => sel0(1)
    );
\clear_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(2),
      Q => sel0(2)
    );
\clear_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(3),
      Q => sel0(3)
    );
\clear_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(4),
      Q => sel0(4)
    );
\clear_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(5),
      Q => sel0(5)
    );
\clear_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(6),
      Q => sel0(6)
    );
\clear_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(7),
      Q => sel0(7)
    );
\clear_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(8),
      Q => sel0(8)
    );
\clear_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \clear_cnt[14]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => p_1_in(9),
      Q => sel0(9)
    );
\din[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => dout(0),
      O => \din[0]_i_1_n_0\
    );
\din[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(10),
      O => \din[10]_i_1_n_0\
    );
\din[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(11),
      O => \din[11]_i_1_n_0\
    );
\din[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(12),
      O => \din[12]_i_1_n_0\
    );
\din[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(13),
      O => \din[13]_i_1_n_0\
    );
\din[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(14),
      O => \din[14]_i_1_n_0\
    );
\din[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(15),
      O => \din[15]_i_1_n_0\
    );
\din[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(16),
      O => \din[16]_i_1_n_0\
    );
\din[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(17),
      O => \din[17]_i_1_n_0\
    );
\din[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(18),
      O => \din[18]_i_1_n_0\
    );
\din[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(19),
      O => \din[19]_i_1_n_0\
    );
\din[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(1),
      O => \din[1]_i_1_n_0\
    );
\din[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(20),
      O => \din[20]_i_1_n_0\
    );
\din[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(21),
      O => \din[21]_i_1_n_0\
    );
\din[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(22),
      O => \din[22]_i_1_n_0\
    );
\din[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(23),
      O => \din[23]_i_1_n_0\
    );
\din[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(24),
      O => \din[24]_i_1_n_0\
    );
\din[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(25),
      O => \din[25]_i_1_n_0\
    );
\din[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(26),
      O => \din[26]_i_1_n_0\
    );
\din[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(27),
      O => \din[27]_i_1_n_0\
    );
\din[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(28),
      O => \din[28]_i_1_n_0\
    );
\din[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(29),
      O => \din[29]_i_1_n_0\
    );
\din[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(2),
      O => \din[2]_i_1_n_0\
    );
\din[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(30),
      O => \din[30]_i_1_n_0\
    );
\din[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100011"
    )
        port map (
      I0 => stop,
      I1 => start,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      O => \din[31]_i_1_n_0\
    );
\din[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(31),
      O => \din[31]_i_2_n_0\
    );
\din[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \din[31]_i_3_n_0\
    );
\din[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(3),
      O => \din[3]_i_1_n_0\
    );
\din[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(4),
      O => \din[4]_i_1_n_0\
    );
\din[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(5),
      O => \din[5]_i_1_n_0\
    );
\din[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(6),
      O => \din[6]_i_1_n_0\
    );
\din[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(7),
      O => \din[7]_i_1_n_0\
    );
\din[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(8),
      O => \din[8]_i_1_n_0\
    );
\din[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => din0(9),
      O => \din[9]_i_1_n_0\
    );
\din_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[0]_i_1_n_0\,
      Q => din(0)
    );
\din_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[10]_i_1_n_0\,
      Q => din(10)
    );
\din_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[11]_i_1_n_0\,
      Q => din(11)
    );
\din_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[12]_i_1_n_0\,
      Q => din(12)
    );
\din_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[8]_i_2_n_0\,
      CO(3) => \din_reg[12]_i_2_n_0\,
      CO(2) => \din_reg[12]_i_2_n_1\,
      CO(1) => \din_reg[12]_i_2_n_2\,
      CO(0) => \din_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(12 downto 9),
      S(3 downto 0) => dout(12 downto 9)
    );
\din_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[13]_i_1_n_0\,
      Q => din(13)
    );
\din_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[14]_i_1_n_0\,
      Q => din(14)
    );
\din_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[15]_i_1_n_0\,
      Q => din(15)
    );
\din_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[16]_i_1_n_0\,
      Q => din(16)
    );
\din_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[12]_i_2_n_0\,
      CO(3) => \din_reg[16]_i_2_n_0\,
      CO(2) => \din_reg[16]_i_2_n_1\,
      CO(1) => \din_reg[16]_i_2_n_2\,
      CO(0) => \din_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(16 downto 13),
      S(3 downto 0) => dout(16 downto 13)
    );
\din_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[17]_i_1_n_0\,
      Q => din(17)
    );
\din_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[18]_i_1_n_0\,
      Q => din(18)
    );
\din_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[19]_i_1_n_0\,
      Q => din(19)
    );
\din_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[1]_i_1_n_0\,
      Q => din(1)
    );
\din_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[20]_i_1_n_0\,
      Q => din(20)
    );
\din_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[16]_i_2_n_0\,
      CO(3) => \din_reg[20]_i_2_n_0\,
      CO(2) => \din_reg[20]_i_2_n_1\,
      CO(1) => \din_reg[20]_i_2_n_2\,
      CO(0) => \din_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(20 downto 17),
      S(3 downto 0) => dout(20 downto 17)
    );
\din_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[21]_i_1_n_0\,
      Q => din(21)
    );
\din_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[22]_i_1_n_0\,
      Q => din(22)
    );
\din_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[23]_i_1_n_0\,
      Q => din(23)
    );
\din_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[24]_i_1_n_0\,
      Q => din(24)
    );
\din_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[20]_i_2_n_0\,
      CO(3) => \din_reg[24]_i_2_n_0\,
      CO(2) => \din_reg[24]_i_2_n_1\,
      CO(1) => \din_reg[24]_i_2_n_2\,
      CO(0) => \din_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(24 downto 21),
      S(3 downto 0) => dout(24 downto 21)
    );
\din_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[25]_i_1_n_0\,
      Q => din(25)
    );
\din_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[26]_i_1_n_0\,
      Q => din(26)
    );
\din_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[27]_i_1_n_0\,
      Q => din(27)
    );
\din_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[28]_i_1_n_0\,
      Q => din(28)
    );
\din_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[24]_i_2_n_0\,
      CO(3) => \din_reg[28]_i_2_n_0\,
      CO(2) => \din_reg[28]_i_2_n_1\,
      CO(1) => \din_reg[28]_i_2_n_2\,
      CO(0) => \din_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(28 downto 25),
      S(3 downto 0) => dout(28 downto 25)
    );
\din_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[29]_i_1_n_0\,
      Q => din(29)
    );
\din_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[2]_i_1_n_0\,
      Q => din(2)
    );
\din_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[30]_i_1_n_0\,
      Q => din(30)
    );
\din_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[31]_i_2_n_0\,
      Q => din(31)
    );
\din_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_din_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \din_reg[31]_i_4_n_2\,
      CO(0) => \din_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_din_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => din0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => dout(31 downto 29)
    );
\din_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[3]_i_1_n_0\,
      Q => din(3)
    );
\din_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[4]_i_1_n_0\,
      Q => din(4)
    );
\din_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \din_reg[4]_i_2_n_0\,
      CO(2) => \din_reg[4]_i_2_n_1\,
      CO(1) => \din_reg[4]_i_2_n_2\,
      CO(0) => \din_reg[4]_i_2_n_3\,
      CYINIT => dout(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(4 downto 1),
      S(3 downto 0) => dout(4 downto 1)
    );
\din_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[5]_i_1_n_0\,
      Q => din(5)
    );
\din_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[6]_i_1_n_0\,
      Q => din(6)
    );
\din_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[7]_i_1_n_0\,
      Q => din(7)
    );
\din_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[8]_i_1_n_0\,
      Q => din(8)
    );
\din_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \din_reg[4]_i_2_n_0\,
      CO(3) => \din_reg[8]_i_2_n_0\,
      CO(2) => \din_reg[8]_i_2_n_1\,
      CO(1) => \din_reg[8]_i_2_n_2\,
      CO(0) => \din_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => din0(8 downto 5),
      S(3 downto 0) => dout(8 downto 5)
    );
\din_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => \din[31]_i_1_n_0\,
      CLR => \din[31]_i_3_n_0\,
      D => \din[9]_i_1_n_0\,
      Q => din(9)
    );
en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[0]\,
      I2 => stop,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \^en\,
      O => en_i_1_n_0
    );
en_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => en_i_1_n_0,
      Q => \^en\
    );
intr_clr_resp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => intr_clr,
      I1 => start,
      I2 => \state_reg_n_0_[0]\,
      I3 => stop,
      I4 => intr_clr_resp_i_2_n_0,
      I5 => \^intr_clr_resp\,
      O => intr_clr_resp_i_1_n_0
    );
intr_clr_resp_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => intr_clr_resp_i_2_n_0
    );
intr_clr_resp_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => intr_clr_resp_i_1_n_0,
      Q => \^intr_clr_resp\
    );
intr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE55550000"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => stop,
      I5 => \^intr\,
      O => intr_i_1_n_0
    );
intr_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => intr_i_1_n_0,
      Q => \^intr\
    );
peak_value_ok_sync1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_ok,
      Q => peak_value_ok_sync1
    );
peak_value_ok_sync2_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_ok_sync1,
      Q => peak_value_ok_sync
    );
\peak_value_sync1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(0),
      Q => peak_value_sync1(0)
    );
\peak_value_sync1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(10),
      Q => peak_value_sync1(10)
    );
\peak_value_sync1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(11),
      Q => peak_value_sync1(11)
    );
\peak_value_sync1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(12),
      Q => peak_value_sync1(12)
    );
\peak_value_sync1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(13),
      Q => peak_value_sync1(13)
    );
\peak_value_sync1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(1),
      Q => peak_value_sync1(1)
    );
\peak_value_sync1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(2),
      Q => peak_value_sync1(2)
    );
\peak_value_sync1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(3),
      Q => peak_value_sync1(3)
    );
\peak_value_sync1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(4),
      Q => peak_value_sync1(4)
    );
\peak_value_sync1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(5),
      Q => peak_value_sync1(5)
    );
\peak_value_sync1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(6),
      Q => peak_value_sync1(6)
    );
\peak_value_sync1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(7),
      Q => peak_value_sync1(7)
    );
\peak_value_sync1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(8),
      Q => peak_value_sync1(8)
    );
\peak_value_sync1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value(9),
      Q => peak_value_sync1(9)
    );
\peak_value_sync2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(0),
      Q => peak_value_sync(0)
    );
\peak_value_sync2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(10),
      Q => peak_value_sync(10)
    );
\peak_value_sync2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(11),
      Q => peak_value_sync(11)
    );
\peak_value_sync2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(12),
      Q => peak_value_sync(12)
    );
\peak_value_sync2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(13),
      Q => peak_value_sync(13)
    );
\peak_value_sync2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(1),
      Q => peak_value_sync(1)
    );
\peak_value_sync2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(2),
      Q => peak_value_sync(2)
    );
\peak_value_sync2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(3),
      Q => peak_value_sync(3)
    );
\peak_value_sync2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(4),
      Q => peak_value_sync(4)
    );
\peak_value_sync2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(5),
      Q => peak_value_sync(5)
    );
\peak_value_sync2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(6),
      Q => peak_value_sync(6)
    );
\peak_value_sync2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(7),
      Q => peak_value_sync(7)
    );
\peak_value_sync2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(8),
      Q => peak_value_sync(8)
    );
\peak_value_sync2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => peak_value_sync1(9),
      Q => peak_value_sync(9)
    );
spe_en_prev_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => spe_en,
      Q => spe_en_prev
    );
start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spe_en,
      I1 => spe_en_prev,
      O => start0
    );
start_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => start0,
      Q => start
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEFAAAAAA20"
    )
        port map (
      I0 => state(0),
      I1 => \addr[15]_i_3_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state[0]_i_3_n_0\,
      I4 => \state[1]_i_2_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABABAA"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[0]\,
      I2 => stop,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      O => state(0)
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => start,
      I2 => stop,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011110000111000"
    )
        port map (
      I0 => start,
      I1 => stop,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \state[1]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \state[1]_i_3_n_0\,
      I1 => \state[1]_i_4_n_0\,
      I2 => \state[1]_i_5_n_0\,
      I3 => sel0(4),
      I4 => sel0(10),
      I5 => sel0(7),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sel0(13),
      I1 => \state_reg_n_0_[0]\,
      I2 => sel0(8),
      I3 => sel0(6),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel0(12),
      I1 => sel0(9),
      I2 => sel0(5),
      I3 => sel0(3),
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(14),
      I3 => sel0(11),
      O => \state[1]_i_5_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01001010"
    )
        port map (
      I0 => start,
      I1 => stop,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      O => \state[2]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
stop_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spe_en_prev,
      I1 => spe_en,
      O => stop0
    );
stop_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => stop0,
      Q => stop
    );
\we[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFEEE0"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[0]\,
      I2 => \we[3]_i_2_n_0\,
      I3 => \we[3]_i_3_n_0\,
      I4 => \^we\(0),
      O => \we[3]_i_1_n_0\
    );
\we[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040400040"
    )
        port map (
      I0 => stop,
      I1 => \we[3]_i_4_n_0\,
      I2 => peak_value_ok_sync,
      I3 => \we[3]_i_5_n_0\,
      I4 => \we[3]_i_6_n_0\,
      I5 => \we[3]_i_7_n_0\,
      O => \we[3]_i_2_n_0\
    );
\we[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABAEB"
    )
        port map (
      I0 => start,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => stop,
      O => \we[3]_i_3_n_0\
    );
\we[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      O => \we[3]_i_4_n_0\
    );
\we[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => peak_value_sync(11),
      I1 => peak_value_sync(12),
      I2 => peak_value_sync(13),
      I3 => peak_value_sync(0),
      I4 => peak_value_sync(4),
      I5 => peak_value_sync(3),
      O => \we[3]_i_5_n_0\
    );
\we[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => peak_value_sync(8),
      I1 => peak_value_sync(9),
      I2 => peak_value_sync(2),
      I3 => peak_value_sync(5),
      O => \we[3]_i_6_n_0\
    );
\we[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => peak_value_sync(7),
      I1 => peak_value_sync(10),
      I2 => peak_value_sync(1),
      I3 => peak_value_sync(6),
      O => \we[3]_i_7_n_0\
    );
\we_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => \din[31]_i_3_n_0\,
      D => \we[3]_i_1_n_0\,
      Q => \^we\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pl_bram_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_pl_bram_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_pl_bram_ctrl_0_0 : entity is "top_pl_bram_ctrl_0_0,pl_bram_ctrl_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_pl_bram_ctrl_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_pl_bram_ctrl_0_0 : entity is "pl_bram_ctrl_v1_0,Vivado 2018.3";
end top_pl_bram_ctrl_0_0;

architecture STRUCTURE of top_pl_bram_ctrl_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^sys_clk\ : STD_LOGIC;
  signal \^we\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK, xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT EN";
  attribute X_INTERFACE_INFO of intr : signal is "xilinx.com:signal:interrupt:1.0 intr INTERRUPT";
  attribute X_INTERFACE_PARAMETER of intr : signal is "XIL_INTERFACENAME intr, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST, xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 66666672, PHASE 0.000, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute X_INTERFACE_PARAMETER of addr : signal is "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DIN";
  attribute X_INTERFACE_INFO of dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute X_INTERFACE_INFO of we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT WE";
begin
  \^sys_clk\ <= sys_clk;
  addr(31) <= \<const0>\;
  addr(30) <= \<const0>\;
  addr(29) <= \<const0>\;
  addr(28) <= \<const0>\;
  addr(27) <= \<const0>\;
  addr(26) <= \<const0>\;
  addr(25) <= \<const0>\;
  addr(24) <= \<const0>\;
  addr(23) <= \<const0>\;
  addr(22) <= \<const0>\;
  addr(21) <= \<const0>\;
  addr(20) <= \<const0>\;
  addr(19) <= \<const0>\;
  addr(18) <= \<const0>\;
  addr(17) <= \<const0>\;
  addr(16) <= \<const0>\;
  addr(15 downto 1) <= \^addr\(15 downto 1);
  addr(0) <= \<const0>\;
  clk <= \^sys_clk\;
  we(3) <= \^we\(2);
  we(2) <= \^we\(2);
  we(1) <= \^we\(2);
  we(0) <= \^we\(2);
  rst <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.top_pl_bram_ctrl_0_0_pl_bram_ctrl_v1_0
     port map (
      addr(14 downto 0) => \^addr\(15 downto 1),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      en => en,
      intr => intr,
      intr_clr => intr_clr,
      intr_clr_resp => intr_clr_resp,
      peak_value(13 downto 0) => peak_value(13 downto 0),
      peak_value_ok => peak_value_ok,
      rst_n => rst_n,
      spe_en => spe_en,
      sys_clk => \^sys_clk\,
      we(0) => \^we\(2)
    );
end STRUCTURE;
