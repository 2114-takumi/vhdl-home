library ieee;
use ieee.std_logic_1164.all;

entity ex0202 is
end ex0202;

architecture rtl of ex0202 is

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;

begin

    C <= not A;

    sig_gen: process begin

        A <= '0';
        B <= '0';
        wait for 3 ns;

        A <= '1';
        B <= '0';
        wait for 3 ns;

        A <= '0';
        B <= '1';
        wait for 3 ns;

        A <= '1';
        B <= '1';
        wait for 3 ns;

        wait;

    end process;

end rtl;