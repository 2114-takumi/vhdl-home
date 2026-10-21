library ieee;
use ieee.std_logic_1164.all;

entity ex0401_logic is
end ex0401_logic;

architecture rtl of ex0401_logic is
    signal A, B, S, F : std_logic;
begin
    F <= ((not S) and A and B)
         or (S and (A or B));

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
