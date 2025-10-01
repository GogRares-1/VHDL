

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegFile is
  Port ( clk   : in std_logic;                      -- clock signal
         ra1   : in std_logic_vector (2 downto 0);  -- read address 1
         ra2   : in std_logic_vector(2 downto 0);   -- read address 2
         wa    : in std_logic_vector(2 downto 0);   -- write address
         wd    : in std_logic_vector(15 downto 0);  -- write data
         RegWr : in std_logic;                      --register write enabler
         rd1   : out std_logic_vector(15 downto 0); --read data 1
         rd2   : out std_logic_vector(15 downto 0));--read data 2
end RegFile;

architecture Behavioral of RegFile is

type RegArray is array (0 to 15) of std_logic_vector(15 downto 0);
signal RegFile : RegArray :=(X"0000",X"0001",X"0002",X"0003",X"0004",X"0005",X"0006",X"0007",X"0008",X"0009",X"000A",X"000B",X"000C",X"000D",X"000E",others => X"000F");
-- register array, each part is 16 bits, initialized with testing values

begin
    process(clk)
        begin
            if rising_edge(clk) then
                if RegWr = '1' then
                if wa /= "000" then
                    RegFile(conv_integer(wa)) <= wd;
                end if;
                end if;
            end if;
    end process;

rd1 <= RegFile(conv_integer(ra1));
rd2 <= RegFile(conv_integer(ra2));

end Behavioral;
