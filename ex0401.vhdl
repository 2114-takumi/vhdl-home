library ieee;
use ieee.std_logic_1164.all;

entity ex0401 is
end ex0401;

architecture rtl of ex0401 is
    signal A, B : std_logic;
    signal X, Y : std_logic;
begin
    X <= A and B;
    Y <= A or B;

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
