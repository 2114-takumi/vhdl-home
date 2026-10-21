
library ieee;
use ieee.std_logic_1164.all;

entity ex0402 is
end ex0402;

architecture rtl of ex0402 is

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;
    signal F : std_logic;

    signal X : std_logic;
    signal Y : std_logic;

begin

    -- Logic circuit
    X <= A and B;
    Y <= not C;
    F <= X or Y;

    -- Testbench
    process begin

        A <= '0';
        B <= '0';
        C <= '0';
        wait for 3 ns;

        A <= '0';
        B <= '0';
        C <= '1';
        wait for 3 ns;

        A <= '0';
        B <= '1';
        C <= '0';
        wait for 3 ns;

        A <= '0';
        B <= '1';
        C <= '1';
        wait for 3 ns;

        A <= '1';
        B <= '0';
        C <= '0';
        wait for 3 ns;

        A <= '1';
        B <= '0';
        C <= '1';
        wait for 3 ns;

        A <= '1';
        B <= '1';
        C <= '0';
        wait for 3 ns;

        A <= '1';
        B <= '1';
        C <= '1';
        wait for 3 ns;

        wait;

    end process;

end rtl;
