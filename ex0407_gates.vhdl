library ieee;
use ieee.std_logic_1164.all;

entity ex0407_gates is
end ex0407_gates;

architecture rtl of ex0407_gates is

    signal A, B : std_logic;
    signal X, Y, Z, N : std_logic;

begin

    -- AND circuit
    X <= A and B;

    -- OR circuit
    Y <= A or B;

    -- XOR circuit
    Z <= A xor B;

    -- NOT circuit
    N <= not A;

    -- Testbench
    sig_gen: process begin

        A <= '0';
        B <= '0';
        wait for 3 ns;

        A <= '0';
        B <= '1';
        wait for 3 ns;

        A <= '1';
        B <= '0';
        wait for 3 ns;

        A <= '1';
        B <= '1';
        wait for 3 ns;

        wait;

    end process;

end rtl;
