-- Traffic light state machine with train support
-- Inputs:
--   clk:        clock signal
--   reset:      reset signal (active high)
--   train_present: train present signal (active high)
-- Outputs:
--   red_light:  red light output (active high)
--   yel_light:  yellow light output (active high)
--   grn_light:  green light output (active high)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity traffic_lights is
    port (
        clk:        in  std_logic;
        reset:      in  std_logic;
        train_present: in std_logic;
        red_light:  out std_logic;
        yel_light:  out std_logic;
        grn_light:  out std_logic
    );
end entity;

architecture behavioral of traffic_lights is
    -- States
    type state_type is (red, yellow, green, train_red, train_yellow);
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
                        if train_present = '1' then
                            state <= train_red;
                        else
                            state <= green;
                        end if;
                    when yellow =>
                        state <= red;
                    when green =>
                        state <= yellow;
                    when train_red =>
                        if train_present = '0' then
                            state <= train_yellow;
                        end if;
                    when train_yellow =>
                        state <= red;
                end case;
            end if;
        end if;
    end process;
    
    -- Output assignments
    red_light <= '0' when state = red or state = train_red else '1';
    yel_light <= '0' when state = yellow or state = train_yellow else '1';
    grn_light <= '0' when state = green else '1';
end architecture;
