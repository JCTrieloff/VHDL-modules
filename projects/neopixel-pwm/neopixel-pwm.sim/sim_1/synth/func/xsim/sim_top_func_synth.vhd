-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Aug 28 16:10:09 2022
-- Host        : localhost.localdomain running 64-bit Fedora release 35 (Thirty Five)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jtrieloff/cern/Xilinx/Vivado/2019.2/VHDL-modules/projects/neopixel-pwm/neopixel-pwm.sim/sim_1/synth/func/xsim/sim_top_func_synth.vhd
-- Design      : sig_gen
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_0_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end clk_wiz_0_clk_wiz_0_clk_wiz;

architecture STRUCTURE of clk_wiz_0_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_LOCKED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 15.625000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 78.125000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 2,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => NLW_mmcm_adv_inst_LOCKED_UNCONNECTED,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity comparator is
  port (
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \above_thresh1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \above_thresh1_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end comparator;

architecture STRUCTURE of comparator is
  signal above_thresh1 : STD_LOGIC;
  signal \above_thresh1_carry__0_n_1\ : STD_LOGIC;
  signal \above_thresh1_carry__0_n_2\ : STD_LOGIC;
  signal \above_thresh1_carry__0_n_3\ : STD_LOGIC;
  signal above_thresh1_carry_n_0 : STD_LOGIC;
  signal above_thresh1_carry_n_1 : STD_LOGIC;
  signal above_thresh1_carry_n_2 : STD_LOGIC;
  signal above_thresh1_carry_n_3 : STD_LOGIC;
  signal NLW_above_thresh1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_above_thresh1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_above_thresh1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_above_thresh1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
above_thresh1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => above_thresh1_carry_n_0,
      CO(2) => above_thresh1_carry_n_1,
      CO(1) => above_thresh1_carry_n_2,
      CO(0) => above_thresh1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_above_thresh1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\above_thresh1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => above_thresh1_carry_n_0,
      CO(3) => above_thresh1,
      CO(2) => \above_thresh1_carry__0_n_1\,
      CO(1) => \above_thresh1_carry__0_n_2\,
      CO(0) => \above_thresh1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \above_thresh1_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_above_thresh1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \above_thresh1_carry__1_1\(3 downto 0)
    );
\above_thresh1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => above_thresh1,
      CO(3 downto 0) => \NLW_above_thresh1_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_above_thresh1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => O(0),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_counter_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_counter_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_out1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    MSB : in STD_LOGIC;
    end_bunch : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal \int_counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \int_counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \int_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \int_counter0_carry__0_n_3\ : STD_LOGIC;
  signal int_counter0_carry_i_1_n_0 : STD_LOGIC;
  signal int_counter0_carry_i_2_n_0 : STD_LOGIC;
  signal int_counter0_carry_i_3_n_0 : STD_LOGIC;
  signal int_counter0_carry_i_4_n_0 : STD_LOGIC;
  signal int_counter0_carry_n_0 : STD_LOGIC;
  signal int_counter0_carry_n_1 : STD_LOGIC;
  signal int_counter0_carry_n_2 : STD_LOGIC;
  signal int_counter0_carry_n_3 : STD_LOGIC;
  signal \int_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal int_counter_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \int_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \int_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \int_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \int_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_int_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_counter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_int_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\above_thresh1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_counter_reg(14),
      I1 => int_counter_reg(15),
      O => \int_counter_reg[14]_0\(3)
    );
\above_thresh1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_counter_reg(12),
      I1 => int_counter_reg(13),
      O => \int_counter_reg[14]_0\(2)
    );
\above_thresh1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_counter_reg(10),
      I1 => int_counter_reg(11),
      O => \int_counter_reg[14]_0\(1)
    );
\above_thresh1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => int_counter_reg(8),
      I1 => int_counter_reg(9),
      O => \int_counter_reg[14]_0\(0)
    );
\above_thresh1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(14),
      I1 => int_counter_reg(15),
      O => \int_counter_reg[14]_1\(3)
    );
\above_thresh1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(12),
      I1 => int_counter_reg(13),
      O => \int_counter_reg[14]_1\(2)
    );
\above_thresh1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(10),
      I1 => int_counter_reg(11),
      O => \int_counter_reg[14]_1\(1)
    );
\above_thresh1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(8),
      I1 => int_counter_reg(9),
      O => \int_counter_reg[14]_1\(0)
    );
above_thresh1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => int_counter_reg(6),
      I1 => end_bunch,
      I2 => MSB,
      I3 => int_counter_reg(7),
      O => DI(3)
    );
above_thresh1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEA8"
    )
        port map (
      I0 => int_counter_reg(4),
      I1 => MSB,
      I2 => end_bunch,
      I3 => int_counter_reg(5),
      O => DI(2)
    );
above_thresh1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => int_counter_reg(2),
      I1 => end_bunch,
      I2 => MSB,
      I3 => int_counter_reg(3),
      O => DI(1)
    );
above_thresh1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA80"
    )
        port map (
      I0 => int_counter_reg(0),
      I1 => MSB,
      I2 => int_counter_reg(1),
      I3 => end_bunch,
      O => DI(0)
    );
above_thresh1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0059"
    )
        port map (
      I0 => int_counter_reg(6),
      I1 => MSB,
      I2 => end_bunch,
      I3 => int_counter_reg(7),
      O => S(3)
    );
above_thresh1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0056"
    )
        port map (
      I0 => int_counter_reg(5),
      I1 => MSB,
      I2 => end_bunch,
      I3 => int_counter_reg(4),
      O => S(2)
    );
above_thresh1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0059"
    )
        port map (
      I0 => int_counter_reg(2),
      I1 => MSB,
      I2 => end_bunch,
      I3 => int_counter_reg(3),
      O => S(1)
    );
above_thresh1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0560"
    )
        port map (
      I0 => int_counter_reg(0),
      I1 => MSB,
      I2 => int_counter_reg(1),
      I3 => end_bunch,
      O => S(0)
    );
int_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => int_counter0_carry_n_0,
      CO(2) => int_counter0_carry_n_1,
      CO(1) => int_counter0_carry_n_2,
      CO(0) => int_counter0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_int_counter0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => int_counter0_carry_i_1_n_0,
      S(2) => int_counter0_carry_i_2_n_0,
      S(1) => int_counter0_carry_i_3_n_0,
      S(0) => int_counter0_carry_i_4_n_0
    );
\int_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => int_counter0_carry_n_0,
      CO(3 downto 2) => \NLW_int_counter0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \int_counter0_carry__0_n_2\,
      CO(0) => \int_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_int_counter0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \int_counter0_carry__0_i_1_n_0\,
      S(0) => \int_counter0_carry__0_i_2_n_0\
    );
\int_counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(15),
      O => \int_counter0_carry__0_i_1_n_0\
    );
\int_counter0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => int_counter_reg(12),
      I1 => end_bunch,
      I2 => int_counter_reg(14),
      I3 => int_counter_reg(13),
      O => \int_counter0_carry__0_i_2_n_0\
    );
int_counter0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => int_counter_reg(9),
      I1 => end_bunch,
      I2 => int_counter_reg(11),
      I3 => int_counter_reg(10),
      O => int_counter0_carry_i_1_n_0
    );
int_counter0_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41400002"
    )
        port map (
      I0 => int_counter_reg(6),
      I1 => end_bunch,
      I2 => int_counter_reg(8),
      I3 => MSB,
      I4 => int_counter_reg(7),
      O => int_counter0_carry_i_2_n_0
    );
int_counter0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000098"
    )
        port map (
      I0 => int_counter_reg(3),
      I1 => end_bunch,
      I2 => MSB,
      I3 => int_counter_reg(5),
      I4 => int_counter_reg(4),
      O => int_counter0_carry_i_3_n_0
    );
int_counter0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060500"
    )
        port map (
      I0 => int_counter_reg(0),
      I1 => MSB,
      I2 => int_counter_reg(2),
      I3 => end_bunch,
      I4 => int_counter_reg(1),
      O => int_counter0_carry_i_4_n_0
    );
\int_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SR(0),
      I1 => \int_counter0_carry__0_n_2\,
      O => \int_counter[0]_i_1_n_0\
    );
\int_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => int_counter_reg(0),
      O => \int_counter[0]_i_3_n_0\
    );
\int_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[0]_i_2_n_7\,
      Q => int_counter_reg(0),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \int_counter_reg[0]_i_2_n_0\,
      CO(2) => \int_counter_reg[0]_i_2_n_1\,
      CO(1) => \int_counter_reg[0]_i_2_n_2\,
      CO(0) => \int_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \int_counter_reg[0]_i_2_n_4\,
      O(2) => \int_counter_reg[0]_i_2_n_5\,
      O(1) => \int_counter_reg[0]_i_2_n_6\,
      O(0) => \int_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => int_counter_reg(3 downto 1),
      S(0) => \int_counter[0]_i_3_n_0\
    );
\int_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[8]_i_1_n_5\,
      Q => int_counter_reg(10),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[8]_i_1_n_4\,
      Q => int_counter_reg(11),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[12]_i_1_n_7\,
      Q => int_counter_reg(12),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_counter_reg[8]_i_1_n_0\,
      CO(3) => \NLW_int_counter_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \int_counter_reg[12]_i_1_n_1\,
      CO(1) => \int_counter_reg[12]_i_1_n_2\,
      CO(0) => \int_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_counter_reg[12]_i_1_n_4\,
      O(2) => \int_counter_reg[12]_i_1_n_5\,
      O(1) => \int_counter_reg[12]_i_1_n_6\,
      O(0) => \int_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => int_counter_reg(15 downto 12)
    );
\int_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[12]_i_1_n_6\,
      Q => int_counter_reg(13),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[12]_i_1_n_5\,
      Q => int_counter_reg(14),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[12]_i_1_n_4\,
      Q => int_counter_reg(15),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[0]_i_2_n_6\,
      Q => int_counter_reg(1),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[0]_i_2_n_5\,
      Q => int_counter_reg(2),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[0]_i_2_n_4\,
      Q => int_counter_reg(3),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[4]_i_1_n_7\,
      Q => int_counter_reg(4),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_counter_reg[0]_i_2_n_0\,
      CO(3) => \int_counter_reg[4]_i_1_n_0\,
      CO(2) => \int_counter_reg[4]_i_1_n_1\,
      CO(1) => \int_counter_reg[4]_i_1_n_2\,
      CO(0) => \int_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_counter_reg[4]_i_1_n_4\,
      O(2) => \int_counter_reg[4]_i_1_n_5\,
      O(1) => \int_counter_reg[4]_i_1_n_6\,
      O(0) => \int_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => int_counter_reg(7 downto 4)
    );
\int_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[4]_i_1_n_6\,
      Q => int_counter_reg(5),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[4]_i_1_n_5\,
      Q => int_counter_reg(6),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[4]_i_1_n_4\,
      Q => int_counter_reg(7),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[8]_i_1_n_7\,
      Q => int_counter_reg(8),
      R => \int_counter[0]_i_1_n_0\
    );
\int_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \int_counter_reg[4]_i_1_n_0\,
      CO(3) => \int_counter_reg[8]_i_1_n_0\,
      CO(2) => \int_counter_reg[8]_i_1_n_1\,
      CO(1) => \int_counter_reg[8]_i_1_n_2\,
      CO(0) => \int_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \int_counter_reg[8]_i_1_n_4\,
      O(2) => \int_counter_reg[8]_i_1_n_5\,
      O(1) => \int_counter_reg[8]_i_1_n_6\,
      O(0) => \int_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => int_counter_reg(11 downto 8)
    );
\int_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out1,
      CE => '1',
      D => \int_counter_reg[8]_i_1_n_6\,
      Q => int_counter_reg(9),
      R => \int_counter[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_register is
  port (
    MSB : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end shift_register;

architecture STRUCTURE of shift_register is
  signal intermediate : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \intermediate[22]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \reg_contents_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_contents_reg_n_0_[9]\ : STD_LOGIC;
begin
MSB_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in,
      Q => MSB,
      R => '0'
    );
\intermediate[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SR(0),
      O => \intermediate[22]_i_1_n_0\
    );
\intermediate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[0]\,
      Q => intermediate(0),
      R => '0'
    );
\intermediate_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[10]\,
      Q => intermediate(10),
      R => '0'
    );
\intermediate_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[11]\,
      Q => intermediate(11),
      R => '0'
    );
\intermediate_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[12]\,
      Q => intermediate(12),
      R => '0'
    );
\intermediate_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[13]\,
      Q => intermediate(13),
      R => '0'
    );
\intermediate_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[14]\,
      Q => intermediate(14),
      R => '0'
    );
\intermediate_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[15]\,
      Q => intermediate(15),
      R => '0'
    );
\intermediate_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[16]\,
      Q => intermediate(16),
      R => '0'
    );
\intermediate_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[17]\,
      Q => intermediate(17),
      R => '0'
    );
\intermediate_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[18]\,
      Q => intermediate(18),
      R => '0'
    );
\intermediate_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[19]\,
      Q => intermediate(19),
      R => '0'
    );
\intermediate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[1]\,
      Q => intermediate(1),
      R => '0'
    );
\intermediate_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[20]\,
      Q => intermediate(20),
      R => '0'
    );
\intermediate_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[21]\,
      Q => intermediate(21),
      R => '0'
    );
\intermediate_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[22]\,
      Q => intermediate(22),
      R => '0'
    );
\intermediate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[2]\,
      Q => intermediate(2),
      R => '0'
    );
\intermediate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[3]\,
      Q => intermediate(3),
      R => '0'
    );
\intermediate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[4]\,
      Q => intermediate(4),
      R => '0'
    );
\intermediate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[5]\,
      Q => intermediate(5),
      R => '0'
    );
\intermediate_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[6]\,
      Q => intermediate(6),
      R => '0'
    );
\intermediate_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[7]\,
      Q => intermediate(7),
      R => '0'
    );
\intermediate_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[8]\,
      Q => intermediate(8),
      R => '0'
    );
\intermediate_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \intermediate[22]_i_1_n_0\,
      D => \reg_contents_reg_n_0_[9]\,
      Q => intermediate(9),
      R => '0'
    );
\reg_contents_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '1',
      Q => \reg_contents_reg_n_0_[0]\,
      R => SR(0)
    );
\reg_contents_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(9),
      Q => \reg_contents_reg_n_0_[10]\,
      R => SR(0)
    );
\reg_contents_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(10),
      Q => \reg_contents_reg_n_0_[11]\,
      R => SR(0)
    );
\reg_contents_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(11),
      Q => \reg_contents_reg_n_0_[12]\,
      R => SR(0)
    );
\reg_contents_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(12),
      Q => \reg_contents_reg_n_0_[13]\,
      R => SR(0)
    );
\reg_contents_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(13),
      Q => \reg_contents_reg_n_0_[14]\,
      R => SR(0)
    );
\reg_contents_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(14),
      Q => \reg_contents_reg_n_0_[15]\,
      R => SR(0)
    );
\reg_contents_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(15),
      Q => \reg_contents_reg_n_0_[16]\,
      R => SR(0)
    );
\reg_contents_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(16),
      Q => \reg_contents_reg_n_0_[17]\,
      R => SR(0)
    );
\reg_contents_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(17),
      Q => \reg_contents_reg_n_0_[18]\,
      R => SR(0)
    );
\reg_contents_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(18),
      Q => \reg_contents_reg_n_0_[19]\,
      R => SR(0)
    );
\reg_contents_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(0),
      Q => \reg_contents_reg_n_0_[1]\,
      R => SR(0)
    );
\reg_contents_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(19),
      Q => \reg_contents_reg_n_0_[20]\,
      R => SR(0)
    );
\reg_contents_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(20),
      Q => \reg_contents_reg_n_0_[21]\,
      R => SR(0)
    );
\reg_contents_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(21),
      Q => \reg_contents_reg_n_0_[22]\,
      R => SR(0)
    );
\reg_contents_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(22),
      Q => p_0_in,
      R => SR(0)
    );
\reg_contents_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(1),
      Q => \reg_contents_reg_n_0_[2]\,
      R => SR(0)
    );
\reg_contents_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(2),
      Q => \reg_contents_reg_n_0_[3]\,
      R => SR(0)
    );
\reg_contents_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(3),
      Q => \reg_contents_reg_n_0_[4]\,
      R => SR(0)
    );
\reg_contents_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(4),
      Q => \reg_contents_reg_n_0_[5]\,
      R => SR(0)
    );
\reg_contents_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(5),
      Q => \reg_contents_reg_n_0_[6]\,
      R => SR(0)
    );
\reg_contents_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(6),
      Q => \reg_contents_reg_n_0_[7]\,
      R => SR(0)
    );
\reg_contents_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(7),
      Q => \reg_contents_reg_n_0_[8]\,
      R => SR(0)
    );
\reg_contents_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => intermediate(8),
      Q => \reg_contents_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
end clk_wiz_0;

architecture STRUCTURE of clk_wiz_0 is
begin
inst: entity work.clk_wiz_0_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_gen is
  port (
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_out1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    MSB : in STD_LOGIC;
    end_bunch : in STD_LOGIC
  );
end pwm_gen;

architecture STRUCTURE of pwm_gen is
  signal count_n_0 : STD_LOGIC;
  signal count_n_1 : STD_LOGIC;
  signal count_n_10 : STD_LOGIC;
  signal count_n_11 : STD_LOGIC;
  signal count_n_12 : STD_LOGIC;
  signal count_n_13 : STD_LOGIC;
  signal count_n_14 : STD_LOGIC;
  signal count_n_15 : STD_LOGIC;
  signal count_n_2 : STD_LOGIC;
  signal count_n_3 : STD_LOGIC;
  signal count_n_4 : STD_LOGIC;
  signal count_n_5 : STD_LOGIC;
  signal count_n_6 : STD_LOGIC;
  signal count_n_7 : STD_LOGIC;
  signal count_n_8 : STD_LOGIC;
  signal count_n_9 : STD_LOGIC;
begin
comp: entity work.comparator
     port map (
      DI(3) => count_n_0,
      DI(2) => count_n_1,
      DI(1) => count_n_2,
      DI(0) => count_n_3,
      O(0) => O(0),
      S(3) => count_n_4,
      S(2) => count_n_5,
      S(1) => count_n_6,
      S(0) => count_n_7,
      \above_thresh1_carry__1_0\(3) => count_n_8,
      \above_thresh1_carry__1_0\(2) => count_n_9,
      \above_thresh1_carry__1_0\(1) => count_n_10,
      \above_thresh1_carry__1_0\(0) => count_n_11,
      \above_thresh1_carry__1_1\(3) => count_n_12,
      \above_thresh1_carry__1_1\(2) => count_n_13,
      \above_thresh1_carry__1_1\(1) => count_n_14,
      \above_thresh1_carry__1_1\(0) => count_n_15
    );
count: entity work.counter
     port map (
      DI(3) => count_n_0,
      DI(2) => count_n_1,
      DI(1) => count_n_2,
      DI(0) => count_n_3,
      MSB => MSB,
      S(3) => count_n_4,
      S(2) => count_n_5,
      S(1) => count_n_6,
      S(0) => count_n_7,
      SR(0) => SR(0),
      clk_out1 => clk_out1,
      end_bunch => end_bunch,
      \int_counter_reg[14]_0\(3) => count_n_8,
      \int_counter_reg[14]_0\(2) => count_n_9,
      \int_counter_reg[14]_0\(1) => count_n_10,
      \int_counter_reg[14]_0\(0) => count_n_11,
      \int_counter_reg[14]_1\(3) => count_n_12,
      \int_counter_reg[14]_1\(2) => count_n_13,
      \int_counter_reg[14]_1\(1) => count_n_14,
      \int_counter_reg[14]_1\(0) => count_n_15
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sig_gen is
  port (
    reset : in STD_LOGIC;
    sig : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sig_gen : entity is true;
end sig_gen;

architecture STRUCTURE of sig_gen is
  signal CLK10MHZ : STD_LOGIC;
  signal MSB : STD_LOGIC;
  signal bits_sent_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal clear : STD_LOGIC;
  signal end_bunch : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal sig_OBUF : STD_LOGIC;
  signal sig_OBUF_BUFG : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bits_sent[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits_sent[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bits_sent[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bits_sent[4]_i_1\ : label is "soft_lutpair0";
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of clock : label is "/home/jtrieloff/cern/Xilinx/Vivado/2019.2/VHDL-modules/projects/neopixel-pwm/neopixel-pwm.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of clock : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of clock : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of clock : label is "TRUE";
begin
\bits_sent[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bits_sent_reg(0),
      O => plusOp(0)
    );
\bits_sent[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bits_sent_reg(0),
      I1 => bits_sent_reg(1),
      O => plusOp(1)
    );
\bits_sent[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bits_sent_reg(0),
      I1 => bits_sent_reg(1),
      I2 => bits_sent_reg(2),
      O => plusOp(2)
    );
\bits_sent[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bits_sent_reg(1),
      I1 => bits_sent_reg(0),
      I2 => bits_sent_reg(2),
      I3 => bits_sent_reg(3),
      O => plusOp(3)
    );
\bits_sent[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bits_sent_reg(2),
      I1 => bits_sent_reg(0),
      I2 => bits_sent_reg(1),
      I3 => bits_sent_reg(3),
      I4 => bits_sent_reg(4),
      O => plusOp(4)
    );
\bits_sent_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => plusOp(0),
      Q => bits_sent_reg(0),
      R => clear
    );
\bits_sent_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => plusOp(1),
      Q => bits_sent_reg(1),
      R => clear
    );
\bits_sent_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => plusOp(2),
      Q => bits_sent_reg(2),
      R => clear
    );
\bits_sent_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => plusOp(3),
      Q => bits_sent_reg(3),
      R => clear
    );
\bits_sent_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => plusOp(4),
      Q => bits_sent_reg(4),
      R => clear
    );
clock: entity work.clk_wiz_0
     port map (
      clk_in1 => CLK100MHZ,
      clk_out1 => CLK10MHZ,
      reset => reset_IBUF
    );
end_bunch_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA80000"
    )
        port map (
      I0 => bits_sent_reg(3),
      I1 => bits_sent_reg(1),
      I2 => bits_sent_reg(0),
      I3 => bits_sent_reg(2),
      I4 => bits_sent_reg(4),
      O => clear
    );
end_bunch_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sig_OBUF_BUFG,
      CE => '1',
      D => clear,
      Q => end_bunch,
      R => '0'
    );
pwm_gen: entity work.pwm_gen
     port map (
      MSB => MSB,
      O(0) => sig_OBUF,
      SR(0) => reset_IBUF,
      clk_out1 => CLK10MHZ,
      end_bunch => end_bunch
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
shift_in: entity work.shift_register
     port map (
      CLK => sig_OBUF_BUFG,
      MSB => MSB,
      SR(0) => reset_IBUF
    );
sig_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => sig_OBUF,
      O => sig_OBUF_BUFG
    );
sig_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => sig_OBUF_BUFG,
      O => sig
    );
end STRUCTURE;
