-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Apr 22 15:50:33 2025
-- Host        : DESKTOP-NVIC6H2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/admin/Desktop/Programe/Facultate/Anu2/Anu2
--               Sem2/CA/Proiect/Proiect.sim/sim_1/impl/func/xsim/test_env_func_impl.vhd}
-- Design      : test_env
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    an_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \counter_reg[15]_0\ : out STD_LOGIC;
    \counter_reg[15]_1\ : out STD_LOGIC;
    \counter_reg[14]_0\ : out STD_LOGIC;
    \en[1]\ : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal \DISPLAY/sel_reg\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal Q1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \Q1[2]_i_2_n_0\ : STD_LOGIC;
  signal \Q1[2]_i_3_n_0\ : STD_LOGIC;
  signal \Q1[2]_i_4_n_0\ : STD_LOGIC;
  signal Q2 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal Q3 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_counter_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
\Q1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \Q1[2]_i_2_n_0\,
      I1 => \DISPLAY/sel_reg\(6),
      I2 => \DISPLAY/sel_reg\(7),
      I3 => \DISPLAY/sel_reg\(3),
      I4 => \DISPLAY/sel_reg\(5),
      I5 => \Q1[2]_i_3_n_0\,
      O => eqOp
    );
\Q1[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => \DISPLAY/sel_reg\(9),
      I3 => \DISPLAY/sel_reg\(4),
      O => \Q1[2]_i_2_n_0\
    );
\Q1[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \DISPLAY/sel_reg\(2),
      I1 => \DISPLAY/sel_reg\(8),
      I2 => \DISPLAY/sel_reg\(0),
      I3 => \DISPLAY/sel_reg\(12),
      I4 => \Q1[2]_i_4_n_0\,
      O => \Q1[2]_i_3_n_0\
    );
\Q1[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \DISPLAY/sel_reg\(13),
      I1 => \DISPLAY/sel_reg\(10),
      I2 => \DISPLAY/sel_reg\(11),
      I3 => \DISPLAY/sel_reg\(1),
      O => \Q1[2]_i_4_n_0\
    );
\Q1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => D(0),
      Q => Q1(1),
      R => '0'
    );
\Q1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => eqOp,
      D => D(1),
      Q => Q1(2),
      R => '0'
    );
\Q2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1(1),
      Q => Q2(1),
      R => '0'
    );
\Q2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q1(2),
      Q => Q2(2),
      R => '0'
    );
\Q3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q2(1),
      Q => Q3(1),
      R => '0'
    );
\Q3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q2(2),
      Q => Q3(2),
      R => '0'
    );
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => an_OBUF(1)
    );
\an_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => an_OBUF(2)
    );
\an_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => an_OBUF(3)
    );
\cat_OBUF[6]_inst_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => \counter_reg[15]_0\
    );
\cat_OBUF[6]_inst_i_57\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => \counter_reg[15]_1\
    );
\cat_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => \counter_reg[14]_0\
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DISPLAY/sel_reg\(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => \DISPLAY/sel_reg\(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => \DISPLAY/sel_reg\(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => \DISPLAY/sel_reg\(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => \DISPLAY/sel_reg\(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => \DISPLAY/sel_reg\(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 2) => \^p_0_in\(1 downto 0),
      S(1 downto 0) => \DISPLAY/sel_reg\(13 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => \DISPLAY/sel_reg\(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => \^p_0_in\(0),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => \^p_0_in\(1),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => \DISPLAY/sel_reg\(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => \DISPLAY/sel_reg\(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => \DISPLAY/sel_reg\(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => \DISPLAY/sel_reg\(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => \DISPLAY/sel_reg\(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => \DISPLAY/sel_reg\(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => \DISPLAY/sel_reg\(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => \DISPLAY/sel_reg\(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => \DISPLAY/sel_reg\(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => \DISPLAY/sel_reg\(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => \DISPLAY/sel_reg\(9),
      R => '0'
    );
\en_BUFG[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q2(1),
      I1 => Q3(1),
      O => \en[1]\
    );
\pc[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q2(2),
      I1 => Q3(2),
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ExecUnit is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[15]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \branchAddrReg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end ExecUnit;

architecture STRUCTURE of ExecUnit is
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
begin
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \branchAddrReg_reg[7]\(3 downto 0),
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \branchAddrReg_reg[7]_0\(3 downto 0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \branchAddrReg_reg[11]\(3 downto 0),
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \branchAddrReg_reg[11]_0\(3 downto 0)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \branchAddrReg_reg[15]\(2 downto 0),
      O(3 downto 0) => D(15 downto 12),
      S(3 downto 0) => \branchAddrReg_reg[15]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity INSTR_FETCH is
  port (
    cat_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    PCSrcReg_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pc_reg[3]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_reg[0]_0\ : out STD_LOGIC;
    \pc_reg[3]_1\ : out STD_LOGIC;
    \pc_reg[3]_2\ : out STD_LOGIC;
    \pc_reg[0]_1\ : out STD_LOGIC;
    \pc_reg[0]_2\ : out STD_LOGIC;
    \pc_reg[3]_3\ : out STD_LOGIC;
    \pc_reg[0]_3\ : out STD_LOGIC;
    led_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    PCSrcReg_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[14]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \branchAddrReg_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \branchAddrReg_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    we : out STD_LOGIC;
    \en_BUFG[1]\ : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cat_OBUF[5]_inst_i_1_0\ : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_3_0\ : in STD_LOGIC;
    an_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \cat_OBUF[6]_inst_i_22_0\ : in STD_LOGIC;
    \cat_OBUF[5]_inst_i_1_1\ : in STD_LOGIC;
    \cat_OBUF[5]_inst_i_1_2\ : in STD_LOGIC;
    PCSrcReg_reg_1 : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_2_0\ : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_3_1\ : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_4_0\ : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_3_2\ : in STD_LOGIC;
    \cat_OBUF[6]_inst_i_36_0\ : in STD_LOGIC;
    PCSrc : in STD_LOGIC;
    \pc_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end INSTR_FETCH;

architecture STRUCTURE of INSTR_FETCH is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PCSrcReg_i_10_n_0 : STD_LOGIC;
  signal PCSrcReg_i_11_n_0 : STD_LOGIC;
  signal PCSrcReg_i_15_n_0 : STD_LOGIC;
  signal PCSrcReg_i_17_n_0 : STD_LOGIC;
  signal PCSrcReg_i_18_n_0 : STD_LOGIC;
  signal PCSrcReg_i_19_n_0 : STD_LOGIC;
  signal PCSrcReg_i_20_n_0 : STD_LOGIC;
  signal PCSrcReg_i_21_n_0 : STD_LOGIC;
  signal PCSrcReg_i_22_n_0 : STD_LOGIC;
  signal PCSrcReg_i_23_n_0 : STD_LOGIC;
  signal PCSrcReg_i_24_n_0 : STD_LOGIC;
  signal PCSrcReg_i_28_n_0 : STD_LOGIC;
  signal PCSrcReg_i_30_n_0 : STD_LOGIC;
  signal PCSrcReg_i_31_n_0 : STD_LOGIC;
  signal PCSrcReg_i_32_n_0 : STD_LOGIC;
  signal PCSrcReg_i_33_n_0 : STD_LOGIC;
  signal PCSrcReg_i_34_n_0 : STD_LOGIC;
  signal PCSrcReg_i_35_n_0 : STD_LOGIC;
  signal PCSrcReg_i_36_n_0 : STD_LOGIC;
  signal PCSrcReg_i_37_n_0 : STD_LOGIC;
  signal PCSrcReg_i_38_n_0 : STD_LOGIC;
  signal PCSrcReg_i_3_n_0 : STD_LOGIC;
  signal PCSrcReg_i_40_n_0 : STD_LOGIC;
  signal PCSrcReg_i_41_n_0 : STD_LOGIC;
  signal PCSrcReg_i_42_n_0 : STD_LOGIC;
  signal PCSrcReg_i_8_n_0 : STD_LOGIC;
  signal PCSrcReg_i_9_n_0 : STD_LOGIC;
  signal \^pcsrcreg_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PCSrcReg_reg_i_12_n_0 : STD_LOGIC;
  signal PCSrcReg_reg_i_16_n_0 : STD_LOGIC;
  signal PCSrcReg_reg_i_2_n_0 : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_12_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_14_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_16_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_17_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_18_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_19_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_22_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_23_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_24_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_25_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_26_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_27_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_28_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_31_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_34_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_36_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_38_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_40_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_41_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_43_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_44_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_45_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_47_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_49_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_50_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_51_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_52_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_53_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_55_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_56_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \cat_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 6 );
  signal instr : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal nextPC : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pc : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \^pc_reg[0]_3\ : STD_LOGIC;
  signal \^pc_reg[3]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^pc_reg[3]_1\ : STD_LOGIC;
  signal \^pc_reg[3]_3\ : STD_LOGIC;
  signal pc_reg_rep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal NLW_PCSrcReg_reg_i_12_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PCSrcReg_reg_i_16_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PCSrcReg_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PCSrcReg_reg_i_27_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_plusOp_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of PCSrcReg_reg_i_12 : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of PCSrcReg_reg_i_12 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of PCSrcReg_reg_i_16 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of PCSrcReg_reg_i_16 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of PCSrcReg_reg_i_2 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of PCSrcReg_reg_i_2 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of PCSrcReg_reg_i_27 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of PCSrcReg_reg_i_27 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pc[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pc[6]_i_1\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  PCSrcReg_reg(3 downto 0) <= \^pcsrcreg_reg\(3 downto 0);
  \pc_reg[0]_3\ <= \^pc_reg[0]_3\;
  \pc_reg[3]_0\(7 downto 0) <= \^pc_reg[3]_0\(7 downto 0);
  \pc_reg[3]_1\ <= \^pc_reg[3]_1\;
  \pc_reg[3]_3\ <= \^pc_reg[3]_3\;
PCSrcReg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E30FFFF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => data0(0),
      I5 => PCSrcReg_i_3_n_0,
      O => \pc_reg[0]_2\
    );
PCSrcReg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09CD"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_10_n_0
    );
PCSrcReg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2870"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_11_n_0
    );
PCSrcReg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6882"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => instr(13)
    );
PCSrcReg_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => instr(15),
      I1 => instr(14),
      I2 => data0(6),
      I3 => data0(12),
      I4 => data0(11),
      I5 => data0(15),
      O => PCSrcReg_i_15_n_0
    );
PCSrcReg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_17_n_0
    );
PCSrcReg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_18_n_0
    );
PCSrcReg_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_19_n_0
    );
PCSrcReg_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_20_n_0
    );
PCSrcReg_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_21_n_0
    );
PCSrcReg_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_22_n_0
    );
PCSrcReg_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_23_n_0
    );
PCSrcReg_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_24_n_0
    );
PCSrcReg_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8803"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      O => instr(14)
    );
PCSrcReg_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_28_n_0
    );
PCSrcReg_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => \p_0_in__0\(6)
    );
PCSrcReg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^pc_reg[3]_3\,
      I1 => data0(10),
      I2 => instr(13),
      I3 => data0(9),
      I4 => PCSrcReg_reg_1,
      I5 => PCSrcReg_i_15_n_0,
      O => PCSrcReg_i_3_n_0
    );
PCSrcReg_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_30_n_0
    );
PCSrcReg_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_31_n_0
    );
PCSrcReg_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_32_n_0
    );
PCSrcReg_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_33_n_0
    );
PCSrcReg_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_34_n_0
    );
PCSrcReg_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_35_n_0
    );
PCSrcReg_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_36_n_0
    );
PCSrcReg_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_37_n_0
    );
PCSrcReg_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_38_n_0
    );
PCSrcReg_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => \p_0_in__0\(7)
    );
PCSrcReg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => \p_0_in__0\(3)
    );
PCSrcReg_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_40_n_0
    );
PCSrcReg_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_41_n_0
    );
PCSrcReg_i_42: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5042"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => PCSrcReg_i_42_n_0
    );
PCSrcReg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09C9"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => \p_0_in__0\(2)
    );
PCSrcReg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09CD"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => \p_0_in__0\(1)
    );
PCSrcReg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0588"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => p_1_in(0)
    );
PCSrcReg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09C8"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_8_n_0
    );
PCSrcReg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09C9"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => PCSrcReg_i_9_n_0
    );
PCSrcReg_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => PCSrcReg_reg_i_16_n_0,
      CO(3) => PCSrcReg_reg_i_12_n_0,
      CO(2 downto 0) => NLW_PCSrcReg_reg_i_12_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => PCSrcReg_i_17_n_0,
      DI(2) => PCSrcReg_i_18_n_0,
      DI(1) => PCSrcReg_i_19_n_0,
      DI(0) => PCSrcReg_i_20_n_0,
      O(3 downto 1) => data0(11 downto 9),
      O(0) => \^pc_reg[3]_0\(5),
      S(3) => PCSrcReg_i_21_n_0,
      S(2) => PCSrcReg_i_22_n_0,
      S(1) => PCSrcReg_i_23_n_0,
      S(0) => PCSrcReg_i_24_n_0
    );
PCSrcReg_reg_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => PCSrcReg_reg_i_2_n_0,
      CO(3) => PCSrcReg_reg_i_16_n_0,
      CO(2 downto 0) => NLW_PCSrcReg_reg_i_16_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3) => PCSrcReg_i_28_n_0,
      DI(2) => \p_0_in__0\(6),
      DI(1) => PCSrcReg_i_30_n_0,
      DI(0) => PCSrcReg_i_31_n_0,
      O(3) => \^pc_reg[3]_0\(4),
      O(2) => data0(6),
      O(1 downto 0) => \^pc_reg[3]_0\(3 downto 2),
      S(3) => PCSrcReg_i_32_n_0,
      S(2) => PCSrcReg_i_33_n_0,
      S(1) => PCSrcReg_i_34_n_0,
      S(0) => PCSrcReg_i_35_n_0
    );
PCSrcReg_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PCSrcReg_reg_i_2_n_0,
      CO(2 downto 0) => NLW_PCSrcReg_reg_i_2_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \p_0_in__0\(3 downto 1),
      DI(0) => p_1_in(0),
      O(3 downto 2) => \^pc_reg[3]_0\(1 downto 0),
      O(1 downto 0) => data0(1 downto 0),
      S(3) => PCSrcReg_i_8_n_0,
      S(2) => PCSrcReg_i_9_n_0,
      S(1) => PCSrcReg_i_10_n_0,
      S(0) => PCSrcReg_i_11_n_0
    );
PCSrcReg_reg_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => PCSrcReg_reg_i_12_n_0,
      CO(3 downto 0) => NLW_PCSrcReg_reg_i_27_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => PCSrcReg_i_36_n_0,
      DI(1) => PCSrcReg_i_37_n_0,
      DI(0) => PCSrcReg_i_38_n_0,
      O(3) => data0(15),
      O(2 downto 1) => \^pc_reg[3]_0\(7 downto 6),
      O(0) => data0(12),
      S(3) => \p_0_in__0\(7),
      S(2) => PCSrcReg_i_40_n_0,
      S(1) => PCSrcReg_i_41_n_0,
      S(0) => PCSrcReg_i_42_n_0
    );
RAM_reg_0_15_0_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => we
    );
RAM_reg_0_15_0_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1CF0000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => data0(0),
      O => \pc_reg[0]_1\
    );
RAM_reg_0_15_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2828A"
    )
        port map (
      I0 => data0(1),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(0),
      I4 => pc_reg_rep(1),
      O => \^pc_reg[3]_3\
    );
RAM_reg_0_15_0_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A2828A"
    )
        port map (
      I0 => \^pc_reg[3]_0\(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(0),
      I4 => pc_reg_rep(1),
      O => \pc_reg[3]_2\
    );
RAM_reg_0_15_0_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F1CF0000"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => \^pc_reg[3]_0\(1),
      O => \pc_reg[0]_0\
    );
\cat_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4092"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_5_n_0\,
      I1 => \cat_OBUF[6]_inst_i_4_n_0\,
      I2 => \cat_OBUF[6]_inst_i_3_n_0\,
      I3 => \cat_OBUF[6]_inst_i_2_n_0\,
      O => cat_OBUF(0)
    );
\cat_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C4A"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_5_n_0\,
      I1 => \cat_OBUF[6]_inst_i_4_n_0\,
      I2 => \cat_OBUF[6]_inst_i_3_n_0\,
      I3 => \cat_OBUF[6]_inst_i_2_n_0\,
      O => cat_OBUF(1)
    );
\cat_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A120"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_5_n_0\,
      I1 => \cat_OBUF[6]_inst_i_3_n_0\,
      I2 => \cat_OBUF[6]_inst_i_4_n_0\,
      I3 => \cat_OBUF[6]_inst_i_2_n_0\,
      O => cat_OBUF(2)
    );
\cat_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"421C"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_5_n_0\,
      I1 => \cat_OBUF[6]_inst_i_4_n_0\,
      I2 => \cat_OBUF[6]_inst_i_3_n_0\,
      I3 => \cat_OBUF[6]_inst_i_2_n_0\,
      O => cat_OBUF(3)
    );
\cat_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04D5"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_2_n_0\,
      I1 => \cat_OBUF[6]_inst_i_3_n_0\,
      I2 => \cat_OBUF[6]_inst_i_4_n_0\,
      I3 => \cat_OBUF[6]_inst_i_5_n_0\,
      O => cat_OBUF(4)
    );
\cat_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4017"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_2_n_0\,
      I1 => \cat_OBUF[6]_inst_i_3_n_0\,
      I2 => \cat_OBUF[6]_inst_i_4_n_0\,
      I3 => \cat_OBUF[6]_inst_i_5_n_0\,
      O => cat_OBUF(5)
    );
\cat_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"801C"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_2_n_0\,
      I1 => \cat_OBUF[6]_inst_i_3_n_0\,
      I2 => \cat_OBUF[6]_inst_i_4_n_0\,
      I3 => \cat_OBUF[6]_inst_i_5_n_0\,
      O => cat_OBUF(6)
    );
\cat_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEFFFEF"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => sw_IBUF(3),
      I2 => instr(1),
      I3 => sw_IBUF(1),
      I4 => nextPC(1),
      O => \cat_OBUF[6]_inst_i_11_n_0\
    );
\cat_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EF4F0000"
    )
        port map (
      I0 => \^pc_reg[3]_1\,
      I1 => Q(1),
      I2 => sw_IBUF(2),
      I3 => \^pc_reg[3]_3\,
      I4 => sw_IBUF(3),
      I5 => \cat_OBUF[6]_inst_i_34_n_0\,
      O => \cat_OBUF[6]_inst_i_12_n_0\
    );
\cat_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800000AAAAAAAA"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_3_0\,
      I1 => data1(13),
      I2 => sw_IBUF(1),
      I3 => instr(13),
      I4 => \cat_OBUF[6]_inst_i_3_2\,
      I5 => \cat_OBUF[6]_inst_i_36_n_0\,
      O => \cat_OBUF[6]_inst_i_13_n_0\
    );
\cat_OBUF[6]_inst_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A8A8A888A88"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_22_0\,
      I1 => \cat_OBUF[6]_inst_i_3_1\,
      I2 => sw_IBUF(2),
      I3 => \cat_OBUF[6]_inst_i_38_n_0\,
      I4 => sw_IBUF(1),
      I5 => instr(5),
      O => \cat_OBUF[6]_inst_i_14_n_0\
    );
\cat_OBUF[6]_inst_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \^pc_reg[0]_3\,
      I1 => Q(5),
      I2 => sw_IBUF(3),
      I3 => sw_IBUF(2),
      I4 => \cat_OBUF[6]_inst_i_40_n_0\,
      O => \cat_OBUF[6]_inst_i_16_n_0\
    );
\cat_OBUF[6]_inst_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => \^pc_reg[0]_3\,
      I1 => Q(4),
      I2 => sw_IBUF(3),
      I3 => sw_IBUF(2),
      I4 => \cat_OBUF[6]_inst_i_41_n_0\,
      O => \cat_OBUF[6]_inst_i_17_n_0\
    );
\cat_OBUF[6]_inst_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777707774747077"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_4_0\,
      I1 => sw_IBUF(3),
      I2 => sw_IBUF(2),
      I3 => \^pcsrcreg_reg\(2),
      I4 => sw_IBUF(1),
      I5 => \cat_OBUF[6]_inst_i_43_n_0\,
      O => \cat_OBUF[6]_inst_i_18_n_0\
    );
\cat_OBUF[6]_inst_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FF000047FF47FF"
    )
        port map (
      I0 => nextPC(2),
      I1 => sw_IBUF(1),
      I2 => instr(2),
      I3 => \cat_OBUF[6]_inst_i_3_0\,
      I4 => \cat_OBUF[6]_inst_i_44_n_0\,
      I5 => \cat_OBUF[6]_inst_i_45_n_0\,
      O => \cat_OBUF[6]_inst_i_19_n_0\
    );
\cat_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_6_n_0\,
      I1 => \cat_OBUF[6]_inst_i_7_n_0\,
      I2 => \cat_OBUF[6]_inst_i_22_0\,
      I3 => \cat_OBUF[6]_inst_i_9_n_0\,
      I4 => sw_IBUF(3),
      I5 => \cat_OBUF[5]_inst_i_1_1\,
      O => \cat_OBUF[6]_inst_i_2_n_0\
    );
\cat_OBUF[6]_inst_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD5D"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => plusOp(7),
      I2 => PCSrc,
      I3 => \pc_reg[15]_0\(7),
      I4 => \cat_OBUF[6]_inst_i_47_n_0\,
      O => \cat_OBUF[6]_inst_i_22_n_0\
    );
\cat_OBUF[6]_inst_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330FFFFF55FFFFFF"
    )
        port map (
      I0 => instr(15),
      I1 => data1(15),
      I2 => data1(11),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_23_n_0\
    );
\cat_OBUF[6]_inst_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8BBBBBBB8BB"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_49_n_0\,
      I1 => sw_IBUF(3),
      I2 => sw_IBUF(2),
      I3 => instr(3),
      I4 => sw_IBUF(1),
      I5 => nextPC(3),
      O => \cat_OBUF[6]_inst_i_24_n_0\
    );
\cat_OBUF[6]_inst_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF74FF74FF00FFFF"
    )
        port map (
      I0 => \pc_reg[15]_0\(0),
      I1 => PCSrc,
      I2 => pc_reg_rep(0),
      I3 => sw_IBUF(2),
      I4 => \^di\(0),
      I5 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_25_n_0\
    );
\cat_OBUF[6]_inst_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444F44"
    )
        port map (
      I0 => \^pc_reg[0]_3\,
      I1 => Q(0),
      I2 => sw_IBUF(1),
      I3 => \^di\(0),
      I4 => sw_IBUF(2),
      O => \cat_OBUF[6]_inst_i_26_n_0\
    );
\cat_OBUF[6]_inst_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D7D5D75"
    )
        port map (
      I0 => data0(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(0),
      O => \cat_OBUF[6]_inst_i_27_n_0\
    );
\cat_OBUF[6]_inst_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28000000FFFFFFFF"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      I5 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_28_n_0\
    );
\cat_OBUF[6]_inst_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0254"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      O => instr(4)
    );
\cat_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F2"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_11_n_0\,
      I1 => \cat_OBUF[6]_inst_i_12_n_0\,
      I2 => an_OBUF(0),
      I3 => \cat_OBUF[6]_inst_i_13_n_0\,
      I4 => \cat_OBUF[6]_inst_i_14_n_0\,
      I5 => \cat_OBUF[5]_inst_i_1_2\,
      O => \cat_OBUF[6]_inst_i_3_n_0\
    );
\cat_OBUF[6]_inst_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => sw_IBUF(3),
      I2 => \cat_OBUF[6]_inst_i_50_n_0\,
      I3 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_31_n_0\
    );
\cat_OBUF[6]_inst_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FFF0000FFFFFFFF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => sw_IBUF(1),
      I5 => sw_IBUF(2),
      O => \^pc_reg[0]_3\
    );
\cat_OBUF[6]_inst_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A2AAA"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(0),
      O => \^pc_reg[3]_1\
    );
\cat_OBUF[6]_inst_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7F700FF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_51_n_0\,
      I1 => data0(1),
      I2 => \cat_OBUF[6]_inst_i_52_n_0\,
      I3 => instr(1),
      I4 => sw_IBUF(1),
      I5 => sw_IBUF(2),
      O => \cat_OBUF[6]_inst_i_34_n_0\
    );
\cat_OBUF[6]_inst_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1D00"
    )
        port map (
      I0 => plusOp(9),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(9),
      I3 => sw_IBUF(1),
      I4 => \cat_OBUF[6]_inst_i_53_n_0\,
      O => \cat_OBUF[6]_inst_i_36_n_0\
    );
\cat_OBUF[6]_inst_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B800"
    )
        port map (
      I0 => \pc_reg[15]_0\(5),
      I1 => PCSrc,
      I2 => plusOp(5),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(3),
      O => \cat_OBUF[6]_inst_i_38_n_0\
    );
\cat_OBUF[6]_inst_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0650"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      O => instr(5)
    );
\cat_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550F0F333300FF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_16_n_0\,
      I1 => \cat_OBUF[6]_inst_i_17_n_0\,
      I2 => \cat_OBUF[6]_inst_i_18_n_0\,
      I3 => \cat_OBUF[6]_inst_i_19_n_0\,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \cat_OBUF[6]_inst_i_4_n_0\
    );
\cat_OBUF[6]_inst_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \pc_reg[15]_0\(14),
      I1 => PCSrc,
      I2 => plusOp(14),
      I3 => sw_IBUF(1),
      I4 => instr(14),
      O => \cat_OBUF[6]_inst_i_40_n_0\
    );
\cat_OBUF[6]_inst_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \pc_reg[15]_0\(10),
      I1 => PCSrc,
      I2 => plusOp(10),
      I3 => sw_IBUF(1),
      I4 => instr(10),
      O => \cat_OBUF[6]_inst_i_41_n_0\
    );
\cat_OBUF[6]_inst_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => plusOp(6),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(6),
      O => \cat_OBUF[6]_inst_i_43_n_0\
    );
\cat_OBUF[6]_inst_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51555555FFFFFFFF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_55_n_0\,
      I1 => sw_IBUF(1),
      I2 => \cat_OBUF[6]_inst_i_52_n_0\,
      I3 => \^pc_reg[3]_0\(0),
      I4 => \cat_OBUF[6]_inst_i_51_n_0\,
      I5 => sw_IBUF(3),
      O => \cat_OBUF[6]_inst_i_44_n_0\
    );
\cat_OBUF[6]_inst_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF08FFFFFF00FF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_51_n_0\,
      I1 => \^pc_reg[3]_0\(0),
      I2 => \cat_OBUF[6]_inst_i_52_n_0\,
      I3 => sw_IBUF(2),
      I4 => Q(2),
      I5 => \^pc_reg[3]_1\,
      O => \cat_OBUF[6]_inst_i_45_n_0\
    );
\cat_OBUF[6]_inst_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555577FFFFD"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_22_0\,
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(0),
      I5 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_47_n_0\
    );
\cat_OBUF[6]_inst_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      O => instr(15)
    );
\cat_OBUF[6]_inst_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FBFF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_28_n_0\,
      I1 => \^pc_reg[3]_0\(1),
      I2 => \cat_OBUF[6]_inst_i_52_n_0\,
      I3 => \cat_OBUF[6]_inst_i_51_n_0\,
      I4 => \cat_OBUF[6]_inst_i_56_n_0\,
      O => \cat_OBUF[6]_inst_i_49_n_0\
    );
\cat_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEAEEEAEEFFFF"
    )
        port map (
      I0 => \cat_OBUF[5]_inst_i_1_0\,
      I1 => \cat_OBUF[6]_inst_i_3_0\,
      I2 => \cat_OBUF[6]_inst_i_22_n_0\,
      I3 => \cat_OBUF[6]_inst_i_23_n_0\,
      I4 => \cat_OBUF[6]_inst_i_24_n_0\,
      I5 => an_OBUF(0),
      O => \cat_OBUF[6]_inst_i_5_n_0\
    );
\cat_OBUF[6]_inst_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D77E00000000"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \cat_OBUF[6]_inst_i_50_n_0\
    );
\cat_OBUF[6]_inst_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9FF"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      O => \cat_OBUF[6]_inst_i_51_n_0\
    );
\cat_OBUF[6]_inst_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2044"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => \cat_OBUF[6]_inst_i_52_n_0\
    );
\cat_OBUF[6]_inst_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555577FF7FFF"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_36_0\,
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      I4 => pc_reg_rep(2),
      I5 => sw_IBUF(1),
      O => \cat_OBUF[6]_inst_i_53_n_0\
    );
\cat_OBUF[6]_inst_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F78"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(1),
      O => instr(10)
    );
\cat_OBUF[6]_inst_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBABAAAABAAAAB"
    )
        port map (
      I0 => sw_IBUF(2),
      I1 => sw_IBUF(1),
      I2 => pc_reg_rep(3),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(1),
      I5 => pc_reg_rep(0),
      O => \cat_OBUF[6]_inst_i_55_n_0\
    );
\cat_OBUF[6]_inst_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444F44"
    )
        port map (
      I0 => \^pc_reg[0]_3\,
      I1 => Q(3),
      I2 => sw_IBUF(1),
      I3 => instr(3),
      I4 => sw_IBUF(2),
      O => \cat_OBUF[6]_inst_i_56_n_0\
    );
\cat_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFEAEFEAEFEAEAE"
    )
        port map (
      I0 => an_OBUF(0),
      I1 => \cat_OBUF[6]_inst_i_25_n_0\,
      I2 => sw_IBUF(3),
      I3 => \cat_OBUF[6]_inst_i_26_n_0\,
      I4 => \cat_OBUF[6]_inst_i_27_n_0\,
      I5 => \cat_OBUF[6]_inst_i_28_n_0\,
      O => \cat_OBUF[6]_inst_i_6_n_0\
    );
\cat_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFC5F5"
    )
        port map (
      I0 => instr(4),
      I1 => sw_IBUF(3),
      I2 => sw_IBUF(1),
      I3 => \^pcsrcreg_reg\(0),
      I4 => sw_IBUF(2),
      I5 => \cat_OBUF[6]_inst_i_2_0\,
      O => \cat_OBUF[6]_inst_i_7_n_0\
    );
\cat_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A080A0A020002020"
    )
        port map (
      I0 => \cat_OBUF[6]_inst_i_31_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => data1(8),
      I4 => sw_IBUF(1),
      I5 => data1(12),
      O => \cat_OBUF[6]_inst_i_9_n_0\
    );
\do[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      O => E(0)
    );
\led_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0097D544"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      O => led_OBUF(0)
    );
\led_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C0C343"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(0),
      I4 => pc_reg_rep(1),
      O => led_OBUF(1)
    );
\led_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404181"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => pc_reg_rep(3),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(0),
      I4 => pc_reg_rep(1),
      O => led_OBUF(2)
    );
\led_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => pc_reg_rep(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => sw_IBUF(0),
      O => led_OBUF(3)
    );
\led_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000880"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      I4 => sw_IBUF(0),
      O => led_OBUF(4)
    );
\led_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      I4 => sw_IBUF(0),
      O => led_OBUF(5)
    );
\led_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554555"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => pc_reg_rep(1),
      I2 => pc_reg_rep(2),
      I3 => pc_reg_rep(3),
      I4 => pc_reg_rep(0),
      O => led_OBUF(6)
    );
\pc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(0),
      O => nextPC(0)
    );
\pc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(10),
      I1 => PCSrc,
      I2 => plusOp(10),
      O => data1(10)
    );
\pc[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(11),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(11),
      O => data1(11)
    );
\pc[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(12),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(12),
      O => data1(12)
    );
\pc[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(13),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(13),
      O => data1(13)
    );
\pc[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(14),
      I1 => PCSrc,
      I2 => plusOp(14),
      O => data1(14)
    );
\pc[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(15),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(15),
      O => data1(15)
    );
\pc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(1),
      I1 => PCSrc,
      I2 => plusOp(1),
      O => nextPC(1)
    );
\pc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(2),
      I1 => PCSrc,
      I2 => plusOp(2),
      O => nextPC(2)
    );
\pc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(3),
      I1 => PCSrc,
      I2 => plusOp(3),
      O => nextPC(3)
    );
\pc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(4),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(4),
      O => \^pcsrcreg_reg\(0)
    );
\pc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(5),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(5),
      O => \^pcsrcreg_reg\(1)
    );
\pc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(6),
      I1 => PCSrc,
      I2 => plusOp(6),
      O => data1(6)
    );
\pc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(7),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(7),
      O => data1(7)
    );
\pc[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(8),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(8),
      O => data1(8)
    );
\pc[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(9),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(9),
      O => data1(9)
    );
\pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => nextPC(0),
      Q => pc_reg_rep(0)
    );
\pc_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(10),
      Q => pc(10)
    );
\pc_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(11),
      Q => pc(11)
    );
\pc_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(12),
      Q => pc(12)
    );
\pc_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(13),
      Q => pc(13)
    );
\pc_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(14),
      Q => pc(14)
    );
\pc_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(15),
      Q => pc(15)
    );
\pc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => nextPC(1),
      Q => pc_reg_rep(1)
    );
\pc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => nextPC(2),
      Q => pc_reg_rep(2)
    );
\pc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => nextPC(3),
      Q => pc_reg_rep(3)
    );
\pc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => \^pcsrcreg_reg\(0),
      Q => pc(4)
    );
\pc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => \^pcsrcreg_reg\(1),
      Q => pc(5)
    );
\pc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(6),
      Q => pc(6)
    );
\pc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(7),
      Q => pc(7)
    );
\pc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(8),
      Q => pc(8)
    );
\pc_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      CLR => AR(0),
      D => data1(9),
      Q => pc(9)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2 downto 0) => NLW_plusOp_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => pc_reg_rep(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => pc(4),
      S(2 downto 0) => pc_reg_rep(3 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => pc(8 downto 5)
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(7),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(7),
      O => \^pcsrcreg_reg\(3)
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1644"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => \^pcsrcreg_reg\(2)
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(7),
      I1 => PCSrc,
      I2 => plusOp(7),
      O => \branchAddrReg_reg[7]\(3)
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(6),
      I1 => PCSrc,
      I2 => plusOp(6),
      I3 => \^pcsrcreg_reg\(2),
      O => \branchAddrReg_reg[7]\(2)
    );
\plusOp_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6969A"
    )
        port map (
      I0 => \^pcsrcreg_reg\(1),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      O => \branchAddrReg_reg[7]\(1)
    );
\plusOp_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA6999A"
    )
        port map (
      I0 => \^pcsrcreg_reg\(0),
      I1 => pc_reg_rep(0),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(2),
      I4 => pc_reg_rep(3),
      O => \branchAddrReg_reg[7]\(0)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2 downto 0) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => pc(12 downto 9)
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(11),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(11),
      O => PCSrcReg_reg_0(3)
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(10),
      I1 => PCSrc,
      I2 => plusOp(10),
      O => PCSrcReg_reg_0(2)
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(9),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(9),
      O => PCSrcReg_reg_0(1)
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(8),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(8),
      O => PCSrcReg_reg_0(0)
    );
\plusOp_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(11),
      I1 => PCSrc,
      I2 => plusOp(11),
      O => \branchAddrReg_reg[11]\(3)
    );
\plusOp_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(10),
      I1 => PCSrc,
      I2 => plusOp(10),
      O => \branchAddrReg_reg[11]\(2)
    );
\plusOp_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(9),
      I1 => PCSrc,
      I2 => plusOp(9),
      O => \branchAddrReg_reg[11]\(1)
    );
\plusOp_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(8),
      I1 => PCSrc,
      I2 => plusOp(8),
      O => \branchAddrReg_reg[11]\(0)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 0) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => pc(15 downto 13)
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(14),
      I1 => PCSrc,
      I2 => plusOp(14),
      O => \branchAddrReg_reg[14]\(2)
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(13),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(13),
      O => \branchAddrReg_reg[14]\(1)
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => plusOp(12),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(12),
      O => \branchAddrReg_reg[14]\(0)
    );
\plusOp_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(15),
      I1 => PCSrc,
      I2 => plusOp(15),
      O => \branchAddrReg_reg[15]\(3)
    );
\plusOp_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(14),
      I1 => PCSrc,
      I2 => plusOp(14),
      O => \branchAddrReg_reg[15]\(2)
    );
\plusOp_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(13),
      I1 => PCSrc,
      I2 => plusOp(13),
      O => \branchAddrReg_reg[15]\(1)
    );
\plusOp_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(12),
      I1 => PCSrc,
      I2 => plusOp(12),
      O => \branchAddrReg_reg[15]\(0)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(3),
      I1 => PCSrc,
      I2 => plusOp(3),
      O => \^di\(3)
    );
plusOp_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3421"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      O => instr(2)
    );
plusOp_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"703D"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => instr(1)
    );
plusOp_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(2),
      I1 => PCSrc,
      I2 => plusOp(2),
      O => \^di\(2)
    );
plusOp_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pc_reg[15]_0\(1),
      I1 => PCSrc,
      I2 => plusOp(1),
      O => \^di\(1)
    );
plusOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C72"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(0),
      I3 => pc_reg_rep(1),
      O => \^di\(0)
    );
plusOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => plusOp(3),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(3),
      I3 => instr(3),
      O => S(3)
    );
plusOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => plusOp(2),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(2),
      I3 => instr(2),
      O => S(2)
    );
plusOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => plusOp(1),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(1),
      I3 => instr(1),
      O => S(1)
    );
plusOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2ED1"
    )
        port map (
      I0 => pc_reg_rep(0),
      I1 => PCSrc,
      I2 => \pc_reg[15]_0\(0),
      I3 => \^di\(0),
      O => S(0)
    );
plusOp_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => pc_reg_rep(3),
      I1 => pc_reg_rep(2),
      I2 => pc_reg_rep(1),
      I3 => pc_reg_rep(0),
      O => instr(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MemUnit is
  port (
    \do_reg[6]_0\ : out STD_LOGIC;
    \do_reg[14]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \do_reg[4]_0\ : out STD_LOGIC;
    \do_reg[5]_0\ : out STD_LOGIC;
    \do_reg[12]_0\ : out STD_LOGIC;
    \do_reg[7]_0\ : out STD_LOGIC;
    \do_reg[13]_0\ : out STD_LOGIC;
    \cat_OBUF[6]_inst_i_3\ : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cat_OBUF[6]_inst_i_14\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cat_OBUF[6]_inst_i_5\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \en_BUFG[1]\ : in STD_LOGIC;
    we : in STD_LOGIC;
    \do_reg[15]_0\ : in STD_LOGIC;
    \do_reg[15]_1\ : in STD_LOGIC;
    \do_reg[15]_2\ : in STD_LOGIC;
    \do_reg[15]_3\ : in STD_LOGIC
  );
end MemUnit;

architecture STRUCTURE of MemUnit is
  signal \cat_OBUF[6]_inst_i_46_n_0\ : STD_LOGIC;
  signal do : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal p_1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_15_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_15_0_0 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg_0_15_0_0 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_0_0 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_0_0 : label is "GND:A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_15_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_15_0_0 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of RAM_reg_0_15_10_10 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_10_10 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_10_10 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_10_10 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_10_10 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_10_10 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_10_10 : label is 15;
  attribute ram_offset of RAM_reg_0_15_10_10 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_10_10 : label is 10;
  attribute ram_slice_end of RAM_reg_0_15_10_10 : label is 10;
  attribute RTL_RAM_BITS of RAM_reg_0_15_11_11 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_11_11 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_11_11 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_11_11 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_11_11 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_11_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_11_11 : label is 15;
  attribute ram_offset of RAM_reg_0_15_11_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_11_11 : label is 11;
  attribute ram_slice_end of RAM_reg_0_15_11_11 : label is 11;
  attribute RTL_RAM_BITS of RAM_reg_0_15_12_12 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_12_12 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_12_12 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_12_12 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_12_12 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_12_12 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_12_12 : label is 15;
  attribute ram_offset of RAM_reg_0_15_12_12 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_12_12 : label is 12;
  attribute ram_slice_end of RAM_reg_0_15_12_12 : label is 12;
  attribute RTL_RAM_BITS of RAM_reg_0_15_13_13 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_13_13 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_13_13 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_13_13 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_13_13 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_13_13 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_13_13 : label is 15;
  attribute ram_offset of RAM_reg_0_15_13_13 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_13_13 : label is 13;
  attribute ram_slice_end of RAM_reg_0_15_13_13 : label is 13;
  attribute RTL_RAM_BITS of RAM_reg_0_15_14_14 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_14_14 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_14_14 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_14_14 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_14_14 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_14_14 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_14_14 : label is 15;
  attribute ram_offset of RAM_reg_0_15_14_14 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_14_14 : label is 14;
  attribute ram_slice_end of RAM_reg_0_15_14_14 : label is 14;
  attribute RTL_RAM_BITS of RAM_reg_0_15_15_15 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_15_15 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_15_15 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_15_15 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_15_15 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_15_15 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_15_15 : label is 15;
  attribute ram_offset of RAM_reg_0_15_15_15 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_15_15 : label is 15;
  attribute ram_slice_end of RAM_reg_0_15_15_15 : label is 15;
  attribute RTL_RAM_BITS of RAM_reg_0_15_1_1 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_1_1 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_1_1 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_1_1 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_1_1 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_1_1 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_1_1 : label is 15;
  attribute ram_offset of RAM_reg_0_15_1_1 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_1_1 : label is 1;
  attribute ram_slice_end of RAM_reg_0_15_1_1 : label is 1;
  attribute RTL_RAM_BITS of RAM_reg_0_15_2_2 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_2_2 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_2_2 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_2_2 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_2_2 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_2_2 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_2_2 : label is 15;
  attribute ram_offset of RAM_reg_0_15_2_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_2_2 : label is 2;
  attribute ram_slice_end of RAM_reg_0_15_2_2 : label is 2;
  attribute RTL_RAM_BITS of RAM_reg_0_15_3_3 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_3_3 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_3_3 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_3_3 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_3_3 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_3_3 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_3_3 : label is 15;
  attribute ram_offset of RAM_reg_0_15_3_3 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_3_3 : label is 3;
  attribute ram_slice_end of RAM_reg_0_15_3_3 : label is 3;
  attribute RTL_RAM_BITS of RAM_reg_0_15_4_4 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_4_4 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_4_4 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_4_4 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_4_4 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_4_4 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_4_4 : label is 15;
  attribute ram_offset of RAM_reg_0_15_4_4 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_4_4 : label is 4;
  attribute ram_slice_end of RAM_reg_0_15_4_4 : label is 4;
  attribute RTL_RAM_BITS of RAM_reg_0_15_5_5 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_5_5 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_5_5 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_5_5 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_5_5 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_5_5 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_5_5 : label is 15;
  attribute ram_offset of RAM_reg_0_15_5_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_5_5 : label is 5;
  attribute ram_slice_end of RAM_reg_0_15_5_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_0_15_6_6 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_6_6 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_6_6 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_6_6 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_6_6 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_6_6 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_6_6 : label is 15;
  attribute ram_offset of RAM_reg_0_15_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_0_15_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_0_15_7_7 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_7_7 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_7_7 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_7_7 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_7_7 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_7_7 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_7_7 : label is 15;
  attribute ram_offset of RAM_reg_0_15_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_0_15_7_7 : label is 7;
  attribute RTL_RAM_BITS of RAM_reg_0_15_8_8 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_8_8 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_8_8 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_8_8 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_8_8 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_8_8 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_8_8 : label is 15;
  attribute ram_offset of RAM_reg_0_15_8_8 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_8_8 : label is 8;
  attribute ram_slice_end of RAM_reg_0_15_8_8 : label is 8;
  attribute RTL_RAM_BITS of RAM_reg_0_15_9_9 : label is 256;
  attribute RTL_RAM_NAME of RAM_reg_0_15_9_9 : label is "MEMORY_UNIT/RAM_reg";
  attribute RTL_RAM_TYPE of RAM_reg_0_15_9_9 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_9_9 : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of RAM_reg_0_15_9_9 : label is "GND:A4";
  attribute ram_addr_begin of RAM_reg_0_15_9_9 : label is 0;
  attribute ram_addr_end of RAM_reg_0_15_9_9 : label is 15;
  attribute ram_offset of RAM_reg_0_15_9_9 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_15_9_9 : label is 9;
  attribute ram_slice_end of RAM_reg_0_15_9_9 : label is 9;
begin
RAM_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FFAA"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(0),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_10_10: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(10),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_11_11: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(11),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_12_12: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(12),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_13_13: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(13),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_14_14: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(14),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_15_15: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(15),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FFCC"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(1),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FFF0"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(2),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(3),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(4),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(5),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(6),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(7),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(8),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
RAM_reg_0_15_9_9: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"0000FF00"
    )
        port map (
      A0 => \do_reg[15]_0\,
      A1 => \do_reg[15]_1\,
      A2 => \do_reg[15]_2\,
      A3 => \do_reg[15]_3\,
      A4 => '0',
      D => '0',
      O => p_1_out(9),
      WCLK => \en_BUFG[1]\,
      WE => we
    );
\cat_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFFCFFF"
    )
        port map (
      I0 => do(12),
      I1 => \cat_OBUF[6]_inst_i_3\,
      I2 => do(8),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => \do_reg[12]_0\
    );
\cat_OBUF[6]_inst_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200300000000000"
    )
        port map (
      I0 => do(13),
      I1 => \cat_OBUF[6]_inst_i_3\,
      I2 => do(9),
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => sw_IBUF(1),
      O => \do_reg[13]_0\
    );
\cat_OBUF[6]_inst_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AAAA"
    )
        port map (
      I0 => sw_IBUF(1),
      I1 => \cat_OBUF[6]_inst_i_5\,
      I2 => do(7),
      I3 => \cat_OBUF[6]_inst_i_3\,
      I4 => \cat_OBUF[6]_inst_i_46_n_0\,
      O => \do_reg[7]_0\
    );
\cat_OBUF[6]_inst_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => do(4),
      I1 => sw_IBUF(1),
      I2 => sw_IBUF(0),
      I3 => \cat_OBUF[6]_inst_i_14\,
      O => \do_reg[4]_0\
    );
\cat_OBUF[6]_inst_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => do(5),
      I1 => sw_IBUF(1),
      I2 => sw_IBUF(0),
      I3 => \cat_OBUF[6]_inst_i_14\,
      O => \do_reg[5]_0\
    );
\cat_OBUF[6]_inst_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => do(6),
      I1 => \cat_OBUF[6]_inst_i_3\,
      O => \do_reg[6]_0\
    );
\cat_OBUF[6]_inst_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF53FFFF"
    )
        port map (
      I0 => do(15),
      I1 => do(11),
      I2 => p_0_in(0),
      I3 => \cat_OBUF[6]_inst_i_3\,
      I4 => p_0_in(1),
      O => \cat_OBUF[6]_inst_i_46_n_0\
    );
\do_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(0),
      Q => \do_reg[14]_0\(0),
      R => '0'
    );
\do_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(10),
      Q => \do_reg[14]_0\(4),
      R => '0'
    );
\do_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(11),
      Q => do(11),
      R => '0'
    );
\do_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(12),
      Q => do(12),
      R => '0'
    );
\do_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(13),
      Q => do(13),
      R => '0'
    );
\do_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(14),
      Q => \do_reg[14]_0\(5),
      R => '0'
    );
\do_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(15),
      Q => do(15),
      R => '0'
    );
\do_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(1),
      Q => \do_reg[14]_0\(1),
      R => '0'
    );
\do_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(2),
      Q => \do_reg[14]_0\(2),
      R => '0'
    );
\do_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(3),
      Q => \do_reg[14]_0\(3),
      R => '0'
    );
\do_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(4),
      Q => do(4),
      R => '0'
    );
\do_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(5),
      Q => do(5),
      R => '0'
    );
\do_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(6),
      Q => do(6),
      R => '0'
    );
\do_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(7),
      Q => do(7),
      R => '0'
    );
\do_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(8),
      Q => do(8),
      R => '0'
    );
\do_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => E(0),
      D => p_1_out(9),
      Q => do(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_env is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cat : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of test_env : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of test_env : entity is "6757eeec";
end test_env;

architecture STRUCTURE of test_env is
  signal \DISPLAY/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal INSTRUCTION_FETCH_n_11 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_12 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_13 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_23 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_24 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_25 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_26 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_27 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_28 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_29 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_38 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_39 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_40 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_41 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_42 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_43 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_44 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_45 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_46 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_47 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_48 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_49 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_50 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_51 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_52 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_53 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_54 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_55 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_56 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_57 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_58 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_59 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_60 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_61 : STD_LOGIC;
  signal INSTRUCTION_FETCH_n_7 : STD_LOGIC;
  signal MEMORY_UNIT_n_0 : STD_LOGIC;
  signal MEMORY_UNIT_n_10 : STD_LOGIC;
  signal MEMORY_UNIT_n_11 : STD_LOGIC;
  signal MEMORY_UNIT_n_7 : STD_LOGIC;
  signal MEMORY_UNIT_n_8 : STD_LOGIC;
  signal MEMORY_UNIT_n_9 : STD_LOGIC;
  signal MPG_n_6 : STD_LOGIC;
  signal MPG_n_7 : STD_LOGIC;
  signal MPG_n_8 : STD_LOGIC;
  signal PCSrc : STD_LOGIC;
  signal PCSrcReg_i_14_n_0 : STD_LOGIC;
  signal PCSrcReg_i_25_n_0 : STD_LOGIC;
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal branchAddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal branchAddrReg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal btn_IBUF : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal cat_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \cat_OBUF[6]_inst_i_21_n_0\ : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal data1 : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal do : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal do1 : STD_LOGIC;
  signal en : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \en[1]\ : STD_LOGIC;
  signal \en_BUFG[1]\ : STD_LOGIC;
  signal instr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal led_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sw_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
EXECUTION_UNIT: entity work.ExecUnit
     port map (
      D(15 downto 0) => branchAddr(15 downto 0),
      DI(3) => INSTRUCTION_FETCH_n_11,
      DI(2) => INSTRUCTION_FETCH_n_12,
      DI(1) => INSTRUCTION_FETCH_n_13,
      DI(0) => instr(0),
      S(3) => INSTRUCTION_FETCH_n_53,
      S(2) => INSTRUCTION_FETCH_n_54,
      S(1) => INSTRUCTION_FETCH_n_55,
      S(0) => INSTRUCTION_FETCH_n_56,
      \branchAddrReg_reg[11]\(3) => INSTRUCTION_FETCH_n_38,
      \branchAddrReg_reg[11]\(2) => INSTRUCTION_FETCH_n_39,
      \branchAddrReg_reg[11]\(1) => INSTRUCTION_FETCH_n_40,
      \branchAddrReg_reg[11]\(0) => INSTRUCTION_FETCH_n_41,
      \branchAddrReg_reg[11]_0\(3) => INSTRUCTION_FETCH_n_57,
      \branchAddrReg_reg[11]_0\(2) => INSTRUCTION_FETCH_n_58,
      \branchAddrReg_reg[11]_0\(1) => INSTRUCTION_FETCH_n_59,
      \branchAddrReg_reg[11]_0\(0) => INSTRUCTION_FETCH_n_60,
      \branchAddrReg_reg[15]\(2) => INSTRUCTION_FETCH_n_42,
      \branchAddrReg_reg[15]\(1) => INSTRUCTION_FETCH_n_43,
      \branchAddrReg_reg[15]\(0) => INSTRUCTION_FETCH_n_44,
      \branchAddrReg_reg[15]_0\(3) => INSTRUCTION_FETCH_n_45,
      \branchAddrReg_reg[15]_0\(2) => INSTRUCTION_FETCH_n_46,
      \branchAddrReg_reg[15]_0\(1) => INSTRUCTION_FETCH_n_47,
      \branchAddrReg_reg[15]_0\(0) => INSTRUCTION_FETCH_n_48,
      \branchAddrReg_reg[7]\(3) => INSTRUCTION_FETCH_n_7,
      \branchAddrReg_reg[7]\(2) => instr(6),
      \branchAddrReg_reg[7]\(1 downto 0) => data1(5 downto 4),
      \branchAddrReg_reg[7]_0\(3) => INSTRUCTION_FETCH_n_49,
      \branchAddrReg_reg[7]_0\(2) => INSTRUCTION_FETCH_n_50,
      \branchAddrReg_reg[7]_0\(1) => INSTRUCTION_FETCH_n_51,
      \branchAddrReg_reg[7]_0\(0) => INSTRUCTION_FETCH_n_52
    );
INSTRUCTION_FETCH: entity work.INSTR_FETCH
     port map (
      AR(0) => en(2),
      DI(3) => INSTRUCTION_FETCH_n_11,
      DI(2) => INSTRUCTION_FETCH_n_12,
      DI(1) => INSTRUCTION_FETCH_n_13,
      DI(0) => instr(0),
      E(0) => do1,
      PCSrc => PCSrc,
      PCSrcReg_reg(3) => INSTRUCTION_FETCH_n_7,
      PCSrcReg_reg(2) => instr(6),
      PCSrcReg_reg(1 downto 0) => data1(5 downto 4),
      PCSrcReg_reg_0(3) => INSTRUCTION_FETCH_n_38,
      PCSrcReg_reg_0(2) => INSTRUCTION_FETCH_n_39,
      PCSrcReg_reg_0(1) => INSTRUCTION_FETCH_n_40,
      PCSrcReg_reg_0(0) => INSTRUCTION_FETCH_n_41,
      PCSrcReg_reg_1 => PCSrcReg_i_14_n_0,
      Q(5) => do(14),
      Q(4) => do(10),
      Q(3 downto 0) => do(3 downto 0),
      S(3) => INSTRUCTION_FETCH_n_53,
      S(2) => INSTRUCTION_FETCH_n_54,
      S(1) => INSTRUCTION_FETCH_n_55,
      S(0) => INSTRUCTION_FETCH_n_56,
      an_OBUF(0) => an_OBUF(0),
      \branchAddrReg_reg[11]\(3) => INSTRUCTION_FETCH_n_57,
      \branchAddrReg_reg[11]\(2) => INSTRUCTION_FETCH_n_58,
      \branchAddrReg_reg[11]\(1) => INSTRUCTION_FETCH_n_59,
      \branchAddrReg_reg[11]\(0) => INSTRUCTION_FETCH_n_60,
      \branchAddrReg_reg[14]\(2) => INSTRUCTION_FETCH_n_42,
      \branchAddrReg_reg[14]\(1) => INSTRUCTION_FETCH_n_43,
      \branchAddrReg_reg[14]\(0) => INSTRUCTION_FETCH_n_44,
      \branchAddrReg_reg[15]\(3) => INSTRUCTION_FETCH_n_45,
      \branchAddrReg_reg[15]\(2) => INSTRUCTION_FETCH_n_46,
      \branchAddrReg_reg[15]\(1) => INSTRUCTION_FETCH_n_47,
      \branchAddrReg_reg[15]\(0) => INSTRUCTION_FETCH_n_48,
      \branchAddrReg_reg[7]\(3) => INSTRUCTION_FETCH_n_49,
      \branchAddrReg_reg[7]\(2) => INSTRUCTION_FETCH_n_50,
      \branchAddrReg_reg[7]\(1) => INSTRUCTION_FETCH_n_51,
      \branchAddrReg_reg[7]\(0) => INSTRUCTION_FETCH_n_52,
      cat_OBUF(6 downto 0) => cat_OBUF(6 downto 0),
      \cat_OBUF[5]_inst_i_1_0\ => MEMORY_UNIT_n_10,
      \cat_OBUF[5]_inst_i_1_1\ => MEMORY_UNIT_n_9,
      \cat_OBUF[5]_inst_i_1_2\ => MEMORY_UNIT_n_11,
      \cat_OBUF[6]_inst_i_22_0\ => MPG_n_8,
      \cat_OBUF[6]_inst_i_2_0\ => MEMORY_UNIT_n_7,
      \cat_OBUF[6]_inst_i_36_0\ => MPG_n_7,
      \cat_OBUF[6]_inst_i_3_0\ => \cat_OBUF[6]_inst_i_21_n_0\,
      \cat_OBUF[6]_inst_i_3_1\ => MEMORY_UNIT_n_8,
      \cat_OBUF[6]_inst_i_3_2\ => MPG_n_6,
      \cat_OBUF[6]_inst_i_4_0\ => MEMORY_UNIT_n_0,
      \en_BUFG[1]\ => \en_BUFG[1]\,
      led_OBUF(6 downto 4) => led_OBUF(7 downto 5),
      led_OBUF(3 downto 0) => led_OBUF(3 downto 0),
      p_0_in(1 downto 0) => \DISPLAY/p_0_in\(1 downto 0),
      \pc_reg[0]_0\ => INSTRUCTION_FETCH_n_23,
      \pc_reg[0]_1\ => INSTRUCTION_FETCH_n_26,
      \pc_reg[0]_2\ => INSTRUCTION_FETCH_n_27,
      \pc_reg[0]_3\ => INSTRUCTION_FETCH_n_29,
      \pc_reg[15]_0\(15 downto 0) => branchAddrReg(15 downto 0),
      \pc_reg[3]_0\(7 downto 6) => data0(14 downto 13),
      \pc_reg[3]_0\(5 downto 4) => data0(8 downto 7),
      \pc_reg[3]_0\(3 downto 0) => data0(5 downto 2),
      \pc_reg[3]_1\ => INSTRUCTION_FETCH_n_24,
      \pc_reg[3]_2\ => INSTRUCTION_FETCH_n_25,
      \pc_reg[3]_3\ => INSTRUCTION_FETCH_n_28,
      sw_IBUF(3 downto 1) => sw_IBUF(7 downto 5),
      sw_IBUF(0) => sw_IBUF(0),
      we => INSTRUCTION_FETCH_n_61
    );
MEMORY_UNIT: entity work.MemUnit
     port map (
      E(0) => do1,
      \cat_OBUF[6]_inst_i_14\ => INSTRUCTION_FETCH_n_24,
      \cat_OBUF[6]_inst_i_3\ => INSTRUCTION_FETCH_n_29,
      \cat_OBUF[6]_inst_i_5\ => MPG_n_8,
      \do_reg[12]_0\ => MEMORY_UNIT_n_9,
      \do_reg[13]_0\ => MEMORY_UNIT_n_11,
      \do_reg[14]_0\(5) => do(14),
      \do_reg[14]_0\(4) => do(10),
      \do_reg[14]_0\(3 downto 0) => do(3 downto 0),
      \do_reg[15]_0\ => INSTRUCTION_FETCH_n_26,
      \do_reg[15]_1\ => INSTRUCTION_FETCH_n_28,
      \do_reg[15]_2\ => INSTRUCTION_FETCH_n_25,
      \do_reg[15]_3\ => INSTRUCTION_FETCH_n_23,
      \do_reg[4]_0\ => MEMORY_UNIT_n_7,
      \do_reg[5]_0\ => MEMORY_UNIT_n_8,
      \do_reg[6]_0\ => MEMORY_UNIT_n_0,
      \do_reg[7]_0\ => MEMORY_UNIT_n_10,
      \en_BUFG[1]\ => \en_BUFG[1]\,
      p_0_in(1 downto 0) => \DISPLAY/p_0_in\(1 downto 0),
      sw_IBUF(1 downto 0) => sw_IBUF(7 downto 6),
      we => INSTRUCTION_FETCH_n_61
    );
MPG: entity work.Debouncer
     port map (
      AR(0) => en(2),
      D(1 downto 0) => btn_IBUF(2 downto 1),
      an_OBUF(3 downto 0) => an_OBUF(3 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \counter_reg[14]_0\ => MPG_n_8,
      \counter_reg[15]_0\ => MPG_n_6,
      \counter_reg[15]_1\ => MPG_n_7,
      \en[1]\ => \en[1]\,
      p_0_in(1 downto 0) => \DISPLAY/p_0_in\(1 downto 0)
    );
PCSrcReg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data0(7),
      I1 => data0(8),
      I2 => data0(3),
      I3 => data0(2),
      I4 => PCSrcReg_i_25_n_0,
      O => PCSrcReg_i_14_n_0
    );
PCSrcReg_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(14),
      I1 => data0(5),
      I2 => data0(13),
      I3 => data0(4),
      O => PCSrcReg_i_25_n_0
    );
PCSrcReg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => INSTRUCTION_FETCH_n_27,
      Q => PCSrc,
      R => '0'
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
\branchAddrReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(0),
      Q => branchAddrReg(0),
      R => '0'
    );
\branchAddrReg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(10),
      Q => branchAddrReg(10),
      R => '0'
    );
\branchAddrReg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(11),
      Q => branchAddrReg(11),
      R => '0'
    );
\branchAddrReg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(12),
      Q => branchAddrReg(12),
      R => '0'
    );
\branchAddrReg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(13),
      Q => branchAddrReg(13),
      R => '0'
    );
\branchAddrReg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(14),
      Q => branchAddrReg(14),
      R => '0'
    );
\branchAddrReg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(15),
      Q => branchAddrReg(15),
      R => '0'
    );
\branchAddrReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(1),
      Q => branchAddrReg(1),
      R => '0'
    );
\branchAddrReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(2),
      Q => branchAddrReg(2),
      R => '0'
    );
\branchAddrReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(3),
      Q => branchAddrReg(3),
      R => '0'
    );
\branchAddrReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(4),
      Q => branchAddrReg(4),
      R => '0'
    );
\branchAddrReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(5),
      Q => branchAddrReg(5),
      R => '0'
    );
\branchAddrReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(6),
      Q => branchAddrReg(6),
      R => '0'
    );
\branchAddrReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(7),
      Q => branchAddrReg(7),
      R => '0'
    );
\branchAddrReg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(8),
      Q => branchAddrReg(8),
      R => '0'
    );
\branchAddrReg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \en_BUFG[1]\,
      CE => '1',
      D => branchAddr(9),
      Q => branchAddrReg(9),
      R => '0'
    );
\btn_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => btn(1),
      O => btn_IBUF(1)
    );
\btn_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => btn(2),
      O => btn_IBUF(2)
    );
\cat_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(0),
      O => cat(0)
    );
\cat_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(1),
      O => cat(1)
    );
\cat_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(2),
      O => cat(2)
    );
\cat_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(3),
      O => cat(3)
    );
\cat_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(4),
      O => cat(4)
    );
\cat_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(5),
      O => cat(5)
    );
\cat_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cat_OBUF(6),
      O => cat(6)
    );
\cat_OBUF[6]_inst_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sw_IBUF(7),
      I1 => sw_IBUF(6),
      O => \cat_OBUF[6]_inst_i_21_n_0\
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => clk,
      O => clk_IBUF
    );
\en_BUFG[1]_inst\: unisim.vcomponents.BUFG
     port map (
      I => \en[1]\,
      O => \en_BUFG[1]\
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(10)
    );
\led_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(11)
    );
\led_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(12)
    );
\led_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(13)
    );
\led_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(14)
    );
\led_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(15)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(4)
    );
\led_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(5),
      O => led(5)
    );
\led_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(6),
      O => led(6)
    );
\led_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(7),
      O => led(7)
    );
\led_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(8)
    );
\led_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => led(9)
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => sw(0),
      O => sw_IBUF(0)
    );
\sw_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => sw(5),
      O => sw_IBUF(5)
    );
\sw_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => sw(6),
      O => sw_IBUF(6)
    );
\sw_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => sw(7),
      O => sw_IBUF(7)
    );
end STRUCTURE;
