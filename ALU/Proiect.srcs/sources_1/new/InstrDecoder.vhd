
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity InstrDecoder is
  Port (clk      : in std_logic;                     -- clock signal
        Instr    : in std_logic_vector(15 downto 0); -- 16 bits instr input
        WD       : in std_logic_vector(15 downto 0); -- data to insert in register file
        RegWrite : in std_logic;                     -- register write enabler
        RegDst   : in std_logic;                     -- select register to write
        ExtOp    : in std_logic;                     -- select sign/zero extend
        RD1      : out std_logic_vector(15 downto 0);-- output from rs register
        RD2      : out std_logic_vector(15 downto 0);-- output from rt register
        Ext_Imm  : out std_logic_vector(15 downto 0);-- sign/zero extended immediate
        func     : out std_logic_vector(2 downto 0); -- ALU function field
        sa       : out std_logic);                   -- Shift amount bit
end InstrDecoder;

architecture Behavioral of InstrDecoder is

component RegFile is 
  Port ( clk   : in std_logic;                      -- clock signal
         ra1   : in std_logic_vector (2 downto 0);  -- read address 1
         ra2   : in std_logic_vector(2 downto 0);   -- read address 2
         wa    : in std_logic_vector(2 downto 0);   -- write address
         wd    : in std_logic_vector(15 downto 0);  -- write data
         RegWr : in std_logic;                      --register write enabler
         rd1   : out std_logic_vector(15 downto 0); --read data 1
         rd2   : out std_logic_vector(15 downto 0));--read data 2
end component;

signal mux_out : std_logic_vector(2 downto 0); --mux output for register write address

begin

RegFile_inst : RegFile
  port map (
    clk    => clk,
    ra1    => Instr(12 downto 10), -- rs
    ra2    => Instr(9 downto 7),   -- rt
    wa     => mux_out,             -- write address selected by mux
    wd     => WD,                  -- write data input
    RegWr  => RegWrite,            -- enable write
    rd1    => RD1,                 -- register rs output
    rd2    => RD2                  -- register rt output
  );

--MUX--
process (RegDst, Instr(6 downto 4),Instr(9 downto 7))
    begin
        case(RegDst) is
            when '0' => mux_out <= Instr(9 downto 7);
            when others => mux_out <=instr(6 downto 4);
        end case;
end process;

--Ext Unit--
process(ExtOp,Instr)
    begin
        if(ExtOp = '0') then 
            Ext_Imm <= ("000000000" & Instr(6 downto 0));
          else
            if(Instr(6)='1') then
                Ext_Imm <= "111111111" & instr(6 downto 0);
              else
                Ext_Imm <= "000000000" & instr(6 downto 0);
            end if;
        end if;
end process;

func <= Instr(2 downto 0);
sa <= Instr(3);

end Behavioral;
