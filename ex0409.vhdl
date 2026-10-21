library ieee;
use ieee.std_logic_1164.all;

entity ex0409 is
end ex0409;

architecture rtl of ex0409 is

    signal A, B, C : std_logic;
    signal X, Y, Z : std_logic;

begin

    -- Logic circuit
    process(A, B, C)
    begin
        X <= A;
        Y <= B and C;
        Z <= A or (B and C);
    end process;

    -- Testbench
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
