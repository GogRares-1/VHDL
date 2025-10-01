
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MemUnit is
    port (
        clk   : in std_logic;
        we    : in std_logic;                      -- write enabler
        en    : in std_logic;                      -- memory enabler
        addr  : in std_logic_vector(3 downto 0);   -- address
        di    : in std_logic_vector(15 downto 0);  -- data input
        do    : out std_logic_vector(15 downto 0); -- data output
        ALUres: out std_logic_vector(15 downto 0));-- gives ALURes for WB
end MemUnit;

architecture Behavioral of MemUnit is

type ram_type is array (0 to 15) of std_logic_vector(15 downto 0);
signal RAM : ram_type := (X"0000", X"0001", X"0002", X"0003",X"0004", X"0005", X"0006", X"0007",others => X"FFFF");

begin

process (clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if we = '1' then
                    RAM(conv_integer(addr)) <= di;-- write
                else
                    do <= RAM(conv_integer(addr));-- read
                end if;
            end if;
        end if;
end process;

ALUres <= ("000000000000" & addr);

end Behavioral;
