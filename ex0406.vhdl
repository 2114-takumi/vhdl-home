library ieee;
use ieee.std_logic_1164.all;

entity ex0406 is
end ex0406;

architecture rtl of ex0406 is
    signal A, B, F : std_logic;
begin
    process(A, B)
    begin
        F <= A and B;
    end process;

    process begin
        A <= '0'; B <= '0';
        wait for 3 ns;
        A <= '0'; B <= '1';
        wait for 3 ns;
        A <= '1'; B <= '0';
        wait for 3 ns;
        A <= '1'; B <= '1';
        wait for 3 ns;
        wait;
    end process;
end rtl;
