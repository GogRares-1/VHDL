
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Debouncer is
    Port ( btn : in STD_LOGIC_VECTOR(4 DOWNTO 0);  -- button input
           clk : in STD_LOGIC;                     -- clock input
           en  : out STD_LOGIC_VECTOR(4 DOWNTO 0));-- debounced output
end Debouncer;

architecture Behavioral of Debouncer is

signal counter: std_logic_vector(15 downto 0); -- debounce counter
signal Q1:STD_LOGIC_VECTOR(4 DOWNTO 0); -- shift register 1
signal Q2:STD_LOGIC_VECTOR(4 DOWNTO 0); -- shift register 2 
signal Q3:STD_LOGIC_VECTOR(4 DOWNTO 0); -- shift register 3

begin

process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
        end if;
end process;
           
process(clk)
    begin
	   if rising_edge(clk) then
	       if counter = x"FFFF" then
		      Q1 <= btn;
	       end if;
	   end if;
end process;

process(clk)
    begin
	   if rising_edge(clk) then
	       Q2 <= Q1;
	   end if;
end process;

process(clk)
    begin
	   if rising_edge(clk) then
	       Q3 <= Q2;
	   end if;
end process;
              
en <= Q2 and (not Q3);

end Behavioral;
