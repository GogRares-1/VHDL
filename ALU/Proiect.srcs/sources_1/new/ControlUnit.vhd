library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
 Port ( opcode   : in  STD_LOGIC_VECTOR(2 downto 0);
        RegDst   : out STD_LOGIC;
        RegWrite : out STD_LOGIC;
        ALUSrc   : out STD_LOGIC;
        MemToReg : out STD_LOGIC;
        MemWrite : out STD_LOGIC;
        Branch   : out STD_LOGIC;
        Jump     : out STD_LOGIC;
        ExtOp    : out STD_LOGIC;
        ALUOp    : out STD_LOGIC_VECTOR(2 downto 0)
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
begin

process(opcode)
    begin
       --initialize all outputs--
        RegDst   <= '0';
        RegWrite <= '0';
        ALUSrc   <= '0';
        MemToReg <= '0';
        MemWrite <= '0';
        Branch   <= '0';
        Jump     <= '0';
        ExtOp    <= '0';
        ALUOp    <= "000";

        case opcode is
            -- R-TYPE INSTRUCTIONS--
            when "000" =>
                RegDst   <= '1';
                RegWrite <= '1';
                ALUSrc   <= '0';
                MemToReg <= '0';
                ALUOp    <= "000";
            --SLL/SRL--
            when "001" =>
                RegDst   <= '1';
                RegWrite <= '1';
                ALUSrc   <= '0';
                MemToReg <= '0';
                ALUOp    <= "000";
            --ADDI/ADDIU--
            when "010" =>
                RegDst   <= '0';
                RegWrite <= '1';
                ALUSrc   <= '1';
                MemToReg <= '0';
                ExtOp    <= '1';
                ALUOp    <= "010";
            --ANDI--
            when "011" =>
                RegDst   <= '0';
                RegWrite <= '1';
                ALUSrc   <= '1';
                MemToReg <= '0';
                ExtOp    <= '0';
                ALUOp    <= "011";
            --BEQ--
            when "100" =>
                RegWrite <= '0';
                ALUSrc   <= '0';
                Branch   <= '1';
                ExtOp    <= '1';
                ALUOp    <= "100";
            --LW--
            when "101" =>
                RegDst   <= '0';
                RegWrite <= '1';
                ALUSrc   <= '1';
                MemToReg <= '1';
                ExtOp    <= '1';
                ALUOp    <= "010";
            --SW--
            when "110" =>
                RegWrite <= '0';
                MemWrite <= '1';
                ALUSrc   <= '1';
                ExtOp    <= '1';
                ALUOp    <= "010";
            --JUMP--
            when "111" =>
                Jump <= '1';
            --OTHERS--
            when others =>
                RegDst   <= '0';
                RegWrite <= '0';
                ALUSrc   <= '0';
                MemToReg <= '0';
                MemWrite <= '0';
                Branch   <= '0';
                Jump     <= '0';
                ExtOp    <= '0';
                ALUOp    <= "000";
        end case;
    end process;
end Behavioral;
