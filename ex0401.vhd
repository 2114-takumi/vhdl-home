library ieee;
use ieee.std_logic_1164.all;

entity ex0401 is
end ex0401;

architecture rtl of ex0401 is
    signal A, B, S, F : std_logic;
begin
    process(A, B, S)
    begin
        if S = '0' then
            F <= A and B;
        else
            F <= A or B;
        end if;
    end process;

    process
    begin
        A <= '0'; B <= '0'; S <= '0';
        wait for 3 ns;
        A <= '0'; B <= '1'; S <= '0';
        wait for 3 ns;
        A <= '1'; B <= '0'; S <= '0';
        wait for 3 ns;
        A <= '1'; B <= '1'; S <= '0';
        wait for 3 ns;

        A <= '0'; B <= '0'; S <= '1';
        wait for 3 ns;
        A <= '0'; B <= '1'; S <= '1';
        wait for 3 ns;
        A <= '1'; B <= '0'; S <= '1';
        wait for 3 ns;
        A <= '1'; B <= '1'; S <= '1';
        wait for 3 ns;
        wait;
    end process;
end rtl;
