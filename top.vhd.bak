-- Top-level block for train crossing system
-- Inputs:
--   clk:          clock signal
--   reset:        reset signal (active high)
--   train_present: train present signal (active high)
--   button_pressed: button pressed signal (active high)
--   pedestrian_request: pedestrian request signal (active high)
-- Outputs:
--   traffic_red:   traffic red light output (active high)
--   traffic_yellow: traffic yellow light output (active high)
--   traffic_green: traffic green light output (active high)
--   pedestrian_red: pedestrian red light output (active high)
--   pedestrian_green: pedestrian green light output (active high)
--   train_red:     train red light output (active high)
--   train_green:   train green light output (active high)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity train_crossing_system is
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
end entity;

architecture behavioral of train_crossing_system is
    component traffic_lights is
        port (
            clk:          in  std_logic;
            reset:        in  std_logic;
            train_present: in std_logic;
            red_light:          out std_logic;
            yel_light:       out std_logic;
            grn_light:        out std_logic
        );
    end component;
    
    component pedestrian_crossing is
        port (
            clk:          in  std_logic;
            reset:        in  std_logic;
            train_present: in std_logic;
            traffic_red:   in std_logic;
            pedestrian_request: in std_logic;
            pedestrian_red: out std_logic;
            pedestrian_green: out std_logic
        );
    end component;
    
    component train_lights is
        port (
            clk:          in  std_logic;
            reset:        in  std_logic;
            train_present: in std_logic;
            button_pressed: in std_logic;
            red_light:          out std_logic;
            green_light:        out std_logic
        );
    end component;
    
    -- Signals
    signal traffic_red_sig: std_logic;
    signal traffic_yellow_sig: std_logic;
    signal traffic_green_sig: std_logic;
    signal pedestrian_red_sig: std_logic;
    signal pedestrian_green_sig: std_logic;
    signal train_red_sig: std_logic;
    signal train_green_sig: std_logic;
    
begin
    -- Instantiate components
    traffic_lights_inst: traffic_lights
        port map (
            clk => clk,
            reset => reset,
            train_present => button_pressed,
            red_light => traffic_red_sig,
            yel_light => traffic_yellow_sig,
            grn_light => traffic_green_sig
        );
    pedestrian_crossing_inst: pedestrian_crossing
        port map (
            clk => clk,
            reset => reset,
            train_present => train_present,
            traffic_red => traffic_red_sig,
            pedestrian_request => pedestrian_request,
            pedestrian_red => pedestrian_red_sig,
            pedestrian_green => pedestrian_green_sig
        );
    train_lights_inst: train_lights
        port map (
            clk => clk,
            reset => reset,
            train_present => train_present,
            button_pressed => button_pressed,
            red_light => train_red_sig,
            green_light => train_green_sig
        );
    
    -- Output assignments
    traffic_red <= traffic_red_sig;
    traffic_yellow <= traffic_yellow_sig;
    traffic_green <= traffic_green_sig;
    pedestrian_red <= pedestrian_red_sig;
    pedestrian_green <= pedestrian_green_sig;
    train_red <= train_red_sig;
    train_green <= train_green_sig;
end architecture;

