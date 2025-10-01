
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ExecUnit is
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
end ExecUnit;

architecture Behavioral of ExecUnit is

signal ALU_Ops  : std_logic_vector(2 downto 0) := "000";
signal ALU_Input: std_logic_vector(15 downto 0);
signal result   : std_logic_vector(15 downto 0);
signal auxZeroFlag: std_logic;

begin

branch_address <= nextInstr + ext_imm;

--MUX--
process(ALUSrc, ext_imm, rd2)
    begin
        if ALUSrc = '1' then
            ALU_Input <= ext_imm;
        else
            ALU_Input <= rd2;
        end if;
end process;

--ALU Control--
process(ALUOp, func)
    begin
        case ALUOp is
            -- R-TYPE --
            when "000" =>
                case func is
                    when "000" => ALU_Ops <= "000"; -- ADD
                    when "001" => ALU_Ops <= "000"; -- ADDU same as ADD
                    when "010" => ALU_Ops <= "100"; -- AND
                    when "101" => ALU_Ops <= "101"; -- OR
                    when "110" => ALU_Ops <= "001"; -- SUB
                    when "011" => ALU_Ops <= "011"; -- SRL
                    when "100" => ALU_Ops <= "010"; -- SLL
                    when "111" => ALU_Ops <= "110"; -- DIV and DIVU
                    when others => ALU_Ops <= "000";
                end case;
            -- I-TYPE --
            when "001" => ALU_Ops <= "001"; --BEQ
            when "100" => ALU_Ops <= "001"; --BEQ
            when "010" => ALU_Ops <= "000"; -- ADDI / ADDIU
            when "011" => ALU_Ops <= "100"; -- ANDI
            when others => ALU_Ops <= "000";
        end case;
end process;

-- ALU Operations--
process(ALU_Ops, rd1, ALU_Input, sa,result)
    begin
        case ALU_Ops is
            --ADD--
            when "000" => result <= rd1 + ALU_Input;
            --SUB--
            when "001" => result <= rd1 - ALU_Input;
            --SLL ~ 1BIT SHIFT LEFT--
            when "010" =>
                if sa = '1' then
                    result <= rd1(14 downto 0) & '0';
                    --result(0) <= '0';
                else
                    result <= rd1;
                end if;
            --SRL ~ 1BIT SHIFT RIGHT--
            when "011" =>
                if sa = '1' then
                    result<= '0' & rd1(15 downto 1);
                    --result(15) <= '0';
                else
                    result <= rd1;
                end if;
            --AND--
            when "100" => result <= rd1 and ALU_Input;
            --OR--
            when "101" => result <= rd1 or ALU_Input;
            --DIV--
            when "110" => 
                if ALU_Input /= x"0000" then
                    result <=conv_std_logic_vector(conv_integer(rd1) / conv_integer( ALU_Input),16);
                else
                    result <= (others => '0');
                end if;
            --OTHER--
            when others => result <= (others => '0');
        end case;

        -- ZERO FLAG--
        if result = x"0000" then
            auxZeroFlag <= '1';
        else
            auxZeroFlag <= '0';
        end if;
end process;

ALURes <= result;
zero <= auxZeroFlag;

end Behavioral;
