library ieee;
use ieee.std_logic_1164.all;

entity ex_sensor_logic is
end ex_sensor_logic;

architecture rtl of ex_sensor_logic is
    signal A, B, C, F : std_logic;
begin
    F <= (A and B) or
         (A and C) or
         (B and C);

    process
    begin
        A <= '0'; B <= '0'; C <= '0';
        wait for 3 ns;
        A <= '0'; B <= '0'; C <= '1';
        wait for 3 ns;
        A <= '0'; B <= '1'; C <= '0';
        wait for 3 ns;
        A <= '0'; B <= '1'; C <= '1';
        wait for 3 ns;
        A <= '1'; B <= '0'; C <= '0';
        wait for 3 ns;
        A <= '1'; B <= '0'; C <= '1';
        wait for 3 ns;
        A <= '1'; B <= '1'; C <= '0';
        wait for 3 ns;
        A <= '1'; B <= '1'; C <= '1';
        wait for 3 ns;
        wait;
    end process;
end rtl;
