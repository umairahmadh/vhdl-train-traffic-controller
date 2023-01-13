-- Train light controller with red and green lights and button support
-- Inputs:
--   clk:          clock signal
--   reset:        reset signal (active high)
--   train_present: train present signal (active high)
--   button_pressed: button pressed signal (active high)
-- Outputs:
--   red_light:   red light output (active high)
--   green_light: green light output (active high)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity train_lights is
    port (
        clk:          in  std_logic;
        reset:        in  std_logic;
        train_present: in std_logic;
        button_pressed: in std_logic;
        red_light:   out std_logic;
        green_light: out std_logic
    );
end entity;

architecture behavioral of train_lights is
    type state_type is (red, green);
    signal state: state_type;
    
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= red;
            else
                case state is
                    when red =>
                        if train_present = '1' and button_pressed = '1' then
                            state <= green;
                        end if;
                    when green =>
                        if train_present = '0' then
                            state <= red;
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    red_light <= '0' when state = red else '1';
    green_light <= '0' when state = green else '1';
end architecture;
