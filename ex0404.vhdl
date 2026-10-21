library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ex0404 is
end ex0404;

architecture rtl of ex0404 is
    signal a : std_logic_vector(3 downto 0);
begin
    process begin
        for i in 0 to 15 loop
            a <= conv_std_logic_vector(i, 4);
            wait for 3 ns;
        end loop;
        wait;
    end process;
end rtl;
