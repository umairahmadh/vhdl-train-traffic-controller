library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture behavior of testbench is

component train_crossing_system is
    port (
        clk:          in  std_logic;
        reset:        in  std_logic;
        train_present: in std_logic;
        button_pressed: in std_logic;
        pedestrian_request: in std_logic;
        traffic_red:   out std_logic;
        traffic_yellow: out std_logic;
        traffic_green: out std_logic;
        pedestrian_red: out std_logic;
        pedestrian_green: out std_logic;
        train_red:     out std_logic;
        train_green:   out std_logic
    );
end component;

signal clk: std_logic := '0';
signal reset, train_present, button_pressed, pedestrian_request: std_logic := '0';
signal traffic_red, traffic_yellow, traffic_green, pedestrian_red, pedestrian_green, train_red, train_green: std_logic;

begin

train_crossing_system_inst: train_crossing_system
    port map (
        clk => clk,
        reset => reset,
        train_present => train_present,
        button_pressed => button_pressed,
        pedestrian_request => pedestrian_request,
        traffic_red => traffic_red,
        traffic_yellow => traffic_yellow,
        traffic_green => traffic_green,
        pedestrian_red => pedestrian_red,
        pedestrian_green => pedestrian_green,
        train_red => train_red,
        train_green => train_green
    );

-- Clock generator process
clk_gen: process
begin
    while true loop
        clk <= '0';
        for i in 1 to 10 loop
            wait for 5 ns;
        end loop;
        clk <= '1';
        for i in 1 to 10 loop
            wait for 5 ns;
        end loop;
    end loop;
end process;

-- Testbench stimulus
stim: process
begin
    -- Test case 1: Reset
    reset <= '1';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    reset <= '0';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;

    -- Test case 2: Train present
    train_present <= '1';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    train_present <= '0';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;

    -- Test case 3: Button pressed
    button_pressed <= '1';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    button_pressed <= '0';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;

    -- Test case 4: Pedestrian request
    pedestrian_request <= '1';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    pedestrian_request <= '0';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    
    -- Test case 5: Multiple inputs
    reset <= '1';
    train_present <= '1';
    button_pressed <= '1';
    pedestrian_request <= '1';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;
    reset <= '0';
    train_present <= '0';
    button_pressed <= '0';
    pedestrian_request <= '0';
    for i in 1 to 10 loop
        wait for 5 ns;
    end loop;

    wait;
end process;

end behavior;