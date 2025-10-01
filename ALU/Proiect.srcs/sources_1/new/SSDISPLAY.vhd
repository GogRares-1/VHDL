
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SSDISPLAY is
    Port ( d0 : in STD_LOGIC_VECTOR (3 downto 0);  -- right digit
           d1 : in STD_LOGIC_VECTOR (3 downto 0);  -- middle-right digit
           d2 : in STD_LOGIC_VECTOR (3 downto 0);  -- middle-left digit
           d3 : in STD_LOGIC_VECTOR (3 downto 0);  -- left digit
           clk : in STD_LOGIC;                     -- system clock
           cat : out STD_LOGIC_VECTOR (6 downto 0);-- cathodes
           an : out STD_LOGIC_VECTOR (3 downto 0));-- anodes
end SSDISPLAY;

architecture Behavioral of SSDISPLAY is

signal sel: STD_LOGIC_VECTOR(15 downto 0);      --refresh counter
signal tempD: STD_LOGIC_VECTOR(3 downto 0);     --current digit
signal counter: STD_LOGIC_VECTOR(15 downto 0);
begin

process(sel) --select the digit
    begin
		case sel(15 downto 14)  is
			when "00"	=> tempD <= d0; 
			when "01"	=> tempD <= d1; 
			when "10"	=> tempD <= d2; 
			when others	=> tempD <= d3; 
		end case;
end process;

process(sel) -- activates one digit at a time
    begin
		case sel(15 downto 14) is
			when "00"	=>  an <= "1110";
			when "01"	=>  an <= "1101";
			when "10"	=>  an <= "1011";
			when others	=>  an <= "0111";
		end case;
end process;

process(clk) -- refresh counter
    begin 
        if rising_edge(clk) then
            sel <= sel + 1;
        end if;
end process;
          
process(tempD)--DECODER HEXA TO SS   
    begin
        case tempD is
            when "0000" => cat <= "1000000"; -- 0
            when "0001" => cat <= "1111001"; -- 1
            when "0010" => cat <= "0100100"; -- 2
            when "0011" => cat <= "0110000"; -- 3
            when "0100" => cat <= "0011001"; -- 4
            when "0101" => cat <= "0010010"; -- 5
            when "0110" => cat <= "0000010"; -- 6
            when "0111" => cat <= "1111000"; -- 7
            when "1000" => cat <= "0000000"; -- 8
            when "1001" => cat <= "0010000"; -- 9
            when "1010" => cat <= "0001000"; -- A
            when "1011" => cat <= "0000011"; -- b
            when "1100" => cat <= "1000110"; -- C
            when "1101" => cat <= "0100001"; -- d
            when "1110" => cat <= "0000110"; -- E
            when "1111" => cat <= "0001110"; -- F
            when others => cat <= "1000000"; -- 0
        end case;
end process;


end Behavioral;
