library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ex0405 is
end ex0405;

architecture rtl of ex0405 is
    signal a : std_logic_vector(2 downto 0);
    signal b : std_logic;
begin
    process begin
        for i in 0 to 7 loop
            a <= conv_std_logic_vector(i, 3);
            wait for 3 ns;
        end loop;
        wait;
    end process;

    process begin
        b <= '0';
        wait until a = "010";
        b <= '1';
        wait until a = "100";
        b <= '0';
        wait until a = "110";
        b <= '1';
        wait;
    end process;
end rtl;
