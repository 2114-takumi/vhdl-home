library ieee;
use ieee.std_logic_1164.all;

entity ex0403 is
end ex0403;

architecture rtl of ex0403 is
    signal A, B, F : std_logic;
begin
    F <= A xor B;

    sig_gen: process begin
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
