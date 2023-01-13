-- Pedestrian crossing light controller
-- Inputs:
--   clk:          clock signal
--   reset:        reset signal (active high)
--   train_present: train present signal (active high)
--   traffic_red:   traffic red light signal (active high)
--   pedestrian_request: pedestrian request signal (active high)
-- Outputs:
--   pedestrian_red: pedestrian red light output (active high)
--   pedestrian_green: pedestrian green light output (active high)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pedestrian_crossing is
    port (
        clk:          in  std_logic;
        reset:        in  std_logic;
        train_present: in std_logic;
        traffic_red:   in std_logic;
        pedestrian_request: in std_logic;
        pedestrian_red: out std_logic;
        pedestrian_green: out std_logic
    );
end entity;

architecture behavioral of pedestrian_crossing is
    -- States
    type state_type is (red, green, waiting);
    signal state: state_type;
    
begin
    -- State machine
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= red;
            else
                case state is
                    when red =>
                        if pedestrian_request = '1' and traffic_red = '1' and train_present = '0' then
                            state <= green;
                        elsif pedestrian_request = '1' then
                            state <= waiting;
                        end if;
                    when green =>
                        if pedestrian_request = '0' then
                            state <= red;
                        end if;
                    when waiting =>
                        if pedestrian_request = '0' or traffic_red = '1' or train_present = '1' then
                            state <= red;
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    -- Output assignments
    pedestrian_red <= '0' when state = red or state = green else '1';
    pedestrian_green <= '0' when state = red or state = waiting else '1';
end architecture;
