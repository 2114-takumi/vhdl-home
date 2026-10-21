library ieee;
use ieee.std_logic_1164.all;

entity ex_sensor_if is
end ex_sensor_if;

architecture rtl of ex_sensor_if is
    signal A, B, C, F : std_logic;
begin
    process(A, B, C)
    begin
        if A = '1' and B = '1' then
            F <= '1';
        elsif A = '1' and C = '1' then
            F <= '1';
        elsif B = '1' and C = '1' then
            F <= '1';
        else
            F <= '0';
        end if;
    end process;

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
