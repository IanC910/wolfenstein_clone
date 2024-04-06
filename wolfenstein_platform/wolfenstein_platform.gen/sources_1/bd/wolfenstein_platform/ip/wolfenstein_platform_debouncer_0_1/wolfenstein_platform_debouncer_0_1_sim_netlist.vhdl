-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Apr  5 18:21:56 2024
-- Host        : IC-VivoBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform.gen/sources_1/bd/wolfenstein_platform/ip/wolfenstein_platform_debouncer_0_1/wolfenstein_platform_debouncer_0_1_sim_netlist.vhdl
-- Design      : wolfenstein_platform_debouncer_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_debouncer_0_1_debouncer is
  port (
    debounced_BTNS : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BUTTONS : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of wolfenstein_platform_debouncer_0_1_debouncer : entity is "debouncer";
end wolfenstein_platform_debouncer_0_1_debouncer;

architecture STRUCTURE of wolfenstein_platform_debouncer_0_1_debouncer is
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 21 downto 5 );
  signal \count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \debounced_BTNS[4]_i_1_n_0\ : STD_LOGIC;
  signal \debounced_BTNS[4]_i_2_n_0\ : STD_LOGIC;
  signal \debounced_BTNS[4]_i_3_n_0\ : STD_LOGIC;
  signal \debounced_BTNS[4]_i_4_n_0\ : STD_LOGIC;
  signal \debounced_BTNS[4]_i_5_n_0\ : STD_LOGIC;
  signal r0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal r1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
begin
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \count[0]_i_4_n_0\,
      I1 => r1(3),
      I2 => r0(3),
      I3 => r1(4),
      I4 => r0(4),
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000BFFFFFFFFF"
    )
        port map (
      I0 => \count[0]_i_5_n_0\,
      I1 => count_reg(18),
      I2 => count_reg(17),
      I3 => count_reg(19),
      I4 => count_reg(20),
      I5 => count_reg(21),
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => r1(1),
      I1 => r0(1),
      I2 => r1(2),
      I3 => r0(2),
      I4 => r0(0),
      I5 => r1(0),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A2222"
    )
        port map (
      I0 => \debounced_BTNS[4]_i_4_n_0\,
      I1 => count_reg(13),
      I2 => count_reg(12),
      I3 => count_reg(11),
      I4 => \debounced_BTNS[4]_i_3_n_0\,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3_n_0\,
      CO(2) => \count_reg[0]_i_3_n_1\,
      CO(1) => \count_reg[0]_i_3_n_2\,
      CO(0) => \count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3_n_4\,
      O(2) => \count_reg[0]_i_3_n_5\,
      O(1) => \count_reg[0]_i_3_n_6\,
      O(0) => \count_reg[0]_i_3_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => count_reg(21 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => \count[0]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[0]_i_3_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 1) => count_reg(7 downto 5),
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[0]_i_2_n_0\,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1_n_0\
    );
\debounced_BTNS[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
        port map (
      I0 => \count[0]_i_1_n_0\,
      I1 => count_reg(21),
      I2 => count_reg(20),
      I3 => count_reg(19),
      I4 => \debounced_BTNS[4]_i_2_n_0\,
      O => \debounced_BTNS[4]_i_1_n_0\
    );
\debounced_BTNS[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02FF0000"
    )
        port map (
      I0 => \debounced_BTNS[4]_i_3_n_0\,
      I1 => count_reg(11),
      I2 => count_reg(12),
      I3 => count_reg(13),
      I4 => \debounced_BTNS[4]_i_4_n_0\,
      I5 => \debounced_BTNS[4]_i_5_n_0\,
      O => \debounced_BTNS[4]_i_2_n_0\
    );
\debounced_BTNS[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01555555FFFFFFFF"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(5),
      I2 => count_reg(6),
      I3 => count_reg(8),
      I4 => count_reg(7),
      I5 => count_reg(10),
      O => \debounced_BTNS[4]_i_3_n_0\
    );
\debounced_BTNS[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(15),
      I2 => count_reg(14),
      O => \debounced_BTNS[4]_i_4_n_0\
    );
\debounced_BTNS[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(17),
      I1 => count_reg(18),
      O => \debounced_BTNS[4]_i_5_n_0\
    );
\debounced_BTNS_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \debounced_BTNS[4]_i_1_n_0\,
      D => r1(0),
      Q => debounced_BTNS(0),
      R => '0'
    );
\debounced_BTNS_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \debounced_BTNS[4]_i_1_n_0\,
      D => r1(1),
      Q => debounced_BTNS(1),
      R => '0'
    );
\debounced_BTNS_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \debounced_BTNS[4]_i_1_n_0\,
      D => r1(2),
      Q => debounced_BTNS(2),
      R => '0'
    );
\debounced_BTNS_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \debounced_BTNS[4]_i_1_n_0\,
      D => r1(3),
      Q => debounced_BTNS(3),
      R => '0'
    );
\debounced_BTNS_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \debounced_BTNS[4]_i_1_n_0\,
      D => r1(4),
      Q => debounced_BTNS(4),
      R => '0'
    );
\r0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BUTTONS(0),
      Q => r0(0),
      R => '0'
    );
\r0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BUTTONS(1),
      Q => r0(1),
      R => '0'
    );
\r0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BUTTONS(2),
      Q => r0(2),
      R => '0'
    );
\r0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BUTTONS(3),
      Q => r0(3),
      R => '0'
    );
\r0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => BUTTONS(4),
      Q => r0(4),
      R => '0'
    );
\r1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r0(0),
      Q => r1(0),
      R => '0'
    );
\r1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r0(1),
      Q => r1(1),
      R => '0'
    );
\r1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r0(2),
      Q => r1(2),
      R => '0'
    );
\r1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r0(3),
      Q => r1(3),
      R => '0'
    );
\r1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r0(4),
      Q => r1(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity wolfenstein_platform_debouncer_0_1 is
  port (
    clk : in STD_LOGIC;
    BUTTONS : in STD_LOGIC_VECTOR ( 4 downto 0 );
    debounced_BTNS : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of wolfenstein_platform_debouncer_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of wolfenstein_platform_debouncer_0_1 : entity is "wolfenstein_platform_debouncer_0_1,debouncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of wolfenstein_platform_debouncer_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of wolfenstein_platform_debouncer_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of wolfenstein_platform_debouncer_0_1 : entity is "debouncer,Vivado 2020.2";
end wolfenstein_platform_debouncer_0_1;

architecture STRUCTURE of wolfenstein_platform_debouncer_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN wolfenstein_platform_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.wolfenstein_platform_debouncer_0_1_debouncer
     port map (
      BUTTONS(4 downto 0) => BUTTONS(4 downto 0),
      clk => clk,
      debounced_BTNS(4 downto 0) => debounced_BTNS(4 downto 0)
    );
end STRUCTURE;
