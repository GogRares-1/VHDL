
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_env is 
    Port (
        clk : in STD_LOGIC;
        btn : in STD_LOGIC_VECTOR (4 downto 0);
        sw  : in STD_LOGIC_VECTOR (15 downto 0);
        led : out STD_LOGIC_VECTOR (15 downto 0);
        an  : out STD_LOGIC_VECTOR (3 downto 0);
        cat : out STD_LOGIC_VECTOR (6 downto 0)
        );
end test_env;

architecture Behavioral of test_env is

--MPG--
component Debouncer 
    Port ( btn : in STD_LOGIC_VECTOR(4 DOWNTO 0);
           clk : in STD_LOGIC;
           en  : out STD_LOGIC_VECTOR(4 DOWNTO 0));
end component;

--7-SEG Display--
component ssdisplay 
    Port( d0 : in STD_LOGIC_VECTOR (3 downto 0);
          d1 : in STD_LOGIC_VECTOR (3 downto 0);
          d2 : in STD_LOGIC_VECTOR (3 downto 0);
          d3 : in STD_LOGIC_VECTOR (3 downto 0);
          clk: in STD_LOGIC;
          cat: out STD_LOGIC_VECTOR (6 downto 0);
          an : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--fetches the current instruction from ROM--
component INSTR_FETCH
  Port( clk       : in std_logic;
        BranchAddr: in std_logic_vector(15 downto 0);
        JumpAddr  : in std_logic_vector(15 downto 0);
        JumpCtrl  : in std_logic;
        PCSrc     : in std_logic;
        En        : in std_logic;
        Reset     : in std_logic;
        Instr     : out std_logic_vector(15 downto 0);
        nextInstr : out std_logic_vector(15 downto 0));
end component;

--decodes the instruction and read from register file--
component InstrDecoder 
  Port (clk      : in std_logic;
        Instr    : in std_logic_vector(15 downto 0);
        WD       : in std_logic_vector(15 downto 0);
        RegWrite : in std_logic;
        RegDst   : in std_logic;
        ExtOp    : in std_logic;
        RD1      : out std_logic_vector(15 downto 0);
        RD2      : out std_logic_vector(15 downto 0);
        Ext_Imm  : out std_logic_vector(15 downto 0);
        func     : out std_logic_vector(2 downto 0);
        sa       : out std_logic);
end component;

--generates control signals--
component ControlUnit 
 Port ( opcode   : in  STD_LOGIC_VECTOR(2 downto 0);
        RegDst   : out STD_LOGIC;
        RegWrite : out STD_LOGIC;
        ALUSrc   : out STD_LOGIC;
        MemToReg : out STD_LOGIC;
        MemWrite : out STD_LOGIC;
        Branch   : out STD_LOGIC;
        Jump     : out STD_LOGIC;
        ExtOp    : out STD_LOGIC;
        ALUOp    : out STD_LOGIC_VECTOR(2 downto 0));
end component;

--performs the operations--
component ExecUnit 
  Port( nextInstr     : in  STD_LOGIC_VECTOR (15 downto 0);
        rd1           : in  STD_LOGIC_VECTOR (15 downto 0);
        rd2           : in  STD_LOGIC_VECTOR (15 downto 0);
        ext_imm       : in  STD_LOGIC_VECTOR (15 downto 0);
        sa            : in  STD_LOGIC;
        func          : in  STD_LOGIC_VECTOR (2 downto 0);
        ALUSrc        : in  STD_LOGIC;
        ALUOp         : in  STD_LOGIC_vector (2 downto 0);
        branch_address: out STD_LOGIC_VECTOR (15 downto 0);
        ALURes        : out STD_LOGIC_VECTOR (15 downto 0);
        zero          : out STD_LOGIC );
end component;

--RAM--
component MemUnit 
 port ( clk   : in std_logic;
        we    : in std_logic;
        en    : in std_logic;
        addr  : in std_logic_vector(3 downto 0);
        di    : in std_logic_vector(15 downto 0);
        do    : out std_logic_vector(15 downto 0);
        ALUres: out std_logic_vector(15 downto 0));
end component;

signal instr, nextPC, jAddr, branchAddr: std_logic_vector(15 downto 0);
signal branchAddrReg, jAddrReg: std_logic_vector(15 downto 0);
signal en: std_logic_vector(4 downto 0);
signal readData1, readData2, extImm, writeData, aluOut, memData, aluFinal : std_logic_vector(15 downto 0);
signal funct, ALUOp: std_logic_vector(2 downto 0);
signal sa, zero, PCSrc, Jump, PCSrcReg, JumpReg: std_logic;
signal RegDst, RegWrite, ALUSrc, MemToReg, MemWrite, Branch, ExtOp : std_logic;
signal disp: std_logic_vector(15 downto 0);

begin

    MPG : Debouncer port map(btn, clk, en);

process(clk)--removes the loop from nextPC
    begin
        if rising_edge(en(0)) then
            PCSrcReg      <= Branch and zero;
            JumpReg       <= Jump;
            branchAddrReg <= branchAddr;
            jAddrReg      <= "000000000000" & instr(3 downto 0);
        end if;
end process;

    INSTRUCTION_FETCH: INSTR_FETCH port map(clk, branchAddrReg, jAddrReg, JumpReg, PCSrcReg, en(0), en(1), instr, nextPC);
    CONTROL_UNIT     : ControlUnit port map(instr(15 downto 13), RegDst, RegWrite, ALUSrc, MemToReg, MemWrite, Branch, Jump, ExtOp, ALUOp);
    DECODE           : InstrDecoder port map(clk, instr, writeData, RegWrite, RegDst, ExtOp, readData1, readData2, extImm, funct, sa);
    EXECUTION_UNIT   : ExecUnit port map(nextPC, readData1, readData2, extImm, sa, funct, ALUSrc, ALUOp, branchAddr, aluOut, zero);
    MEMORY_UNIT      : MemUnit port map(clk, MemWrite, '1', aluOut(3 downto 0), readData2, memData, aluFinal);
    DISPLAY          : ssdisplay port map(disp(3 downto 0), disp(7 downto 4), disp(11 downto 8), disp(15 downto 12), clk, cat, an);
    
process(MemToReg, memData, aluFinal)
    begin
        case MemToReg is
            when '0'    => writeData <= aluFinal;
            when '1'    => writeData <= memData;
            when others => writeData <= aluFinal;
        end case;
end process;

process(sw(7 downto 5))
    begin
        case sw(7 downto 5) is
            when "000" => disp <= instr;
            when "001" => disp <= nextPC;
            when "010" => disp <= readData1;
            when "011" => disp <= readData2;
            when "100" => disp <= extImm;
            when "101" => disp <= aluFinal;
            when "110" => disp <= memData;
            when "111" => disp <= writeData;
            when others => disp <= X"FFFF";
        end case;
end process;

process(sw(0))
    begin
        if sw(0) = '0' then
            led(0) <= RegDst;
            led(1) <= ExtOp;
            led(2) <= ALUSrc;
            led(3) <= Branch;
            led(4) <= Jump;
            led(5) <= MemToReg;
            led(6) <= MemWrite;
            led(7) <= RegWrite;
            led(15 downto 8) <= (others => '0');
        else
            led(0) <= ALUOp(0);
            led(1) <= ALUOp(1);
            led(2) <= ALUOp(2);
            led(15 downto 3) <= (others => '0');
        end if;
end process;

end Behavioral;
