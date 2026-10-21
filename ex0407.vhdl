library ieee;
use ieee.std_logic_1164.all;

entity ex0407 is
end ex0407;

architecture rtl of ex0407 is
    signal A, B, C, F : std_logic;
    signal X, Y, Z : std_logic;
begin
    X <= A and B;
    Y <= A and C;
    Z <= B and C;
    F <= X or Y or Z;

    process begin
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
