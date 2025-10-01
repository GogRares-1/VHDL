library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_env_tb is
end test_env_tb;

architecture Behavioral of test_env_tb is

    component test_env
        Port (
            clk : in STD_LOGIC;
            btn : in STD_LOGIC_VECTOR (4 downto 0);
            sw  : in STD_LOGIC_VECTOR (15 downto 0);
            led : out STD_LOGIC_VECTOR (15 downto 0);
            an  : out STD_LOGIC_VECTOR (3 downto 0);
            cat : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    signal clk_tb   : STD_LOGIC := '0';
    signal btn_tb   : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
    signal sw_tb    : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal led_tb   : STD_LOGIC_VECTOR (15 downto 0);
    signal an_tb    : STD_LOGIC_VECTOR (3 downto 0);
    signal cat_tb   : STD_LOGIC_VECTOR (6 downto 0);

    constant clk_period : time := 10 ns;
    constant step_time : time := 20 ns; -- fixed time between button presses

begin

    -- Instantiate the DUT
    DUT: test_env
        port map (
            clk => clk_tb,
            btn => btn_tb,
            sw  => sw_tb,
            led => led_tb,
            an => an_tb,
            cat => cat_tb
        );

    -- Clock generation
    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period/2;
        clk_tb <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        -- Initial Reset
        btn_tb(1) <= '1';
        wait for step_time;
        btn_tb(1) <= '0';
        wait for step_time;

        -- 16 step-by-step instruction executions via btn(0), without loop
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;
        btn_tb(0) <= '1'; wait for step_time; btn_tb(0) <= '0'; wait for step_time;

        -- Finish simulation
        wait for 1 ms;
        assert false report "Simulation finished." severity failure;
    end process;

end Behavioral;
