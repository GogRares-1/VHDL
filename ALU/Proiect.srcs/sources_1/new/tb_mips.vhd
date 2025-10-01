library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_mips is
end tb_mips;

architecture sim of tb_mips is

  -- Signals to connect to DUT
  signal clk      : std_logic := '0';
  signal btn      : std_logic_vector(4 downto 0) := (others => '0');
  signal sw       : std_logic_vector(15 downto 0) := (others => '0');
  signal led      : std_logic_vector(15 downto 0);
  signal an       : std_logic_vector(3 downto 0);
  signal cat      : std_logic_vector(6 downto 0);

  -- Extra internal signals to monitor
  signal instr        : std_logic_vector(15 downto 0);
  signal readData1    : std_logic_vector(15 downto 0);
  signal readData2    : std_logic_vector(15 downto 0);
  signal writeData    : std_logic_vector(15 downto 0);
  signal aluOut       : std_logic_vector(15 downto 0);
  signal nextPC       : std_logic_vector(15 downto 0);

begin

  -- Instantiate DUT (Device Under Test)
  uut: entity work.test_env
    port map (
      clk  => clk,
      btn  => btn,
      sw   => sw,
      led  => led,
      an   => an,
      cat  => cat
    );

  -- Generate FPGA Clock (50 MHz = 20 ns period)
  clk_process : process
  begin
    while true loop
      clk <= '0'; wait for 5 ns;
      clk <= '1'; wait for 5 ns;
    end loop;
  end process;

  btn_process : process
  begin
    wait for 100 ns;
    -- First instruction
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;

    -- Second instruction
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;

    -- Third instruction
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --4
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --5
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --6
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --7
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --8
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --9
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --10
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --11
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --12
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --13
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --14
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --15
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
    --16
    btn(1) <= '1'; wait for 20 ns;
    btn(1) <= '0'; wait for 100 ns;
  end process;

end sim;
