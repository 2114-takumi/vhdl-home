library ieee;
use ieee.std_logic_1164.all;

entity ex0402 is
end ex0402;

architecture rtl of ex0402 is
    signal A : std_logic_vector(1 downto 0);
    signal B : std_logic_vector(1 downto 0);
begin
    process(A)
    begin
        if A = "00" then
            B <= "01";
        elsif A = "01" then
            B <= "10";
        elsif A = "10" then
            B <= "11";
        else
            B <= "00";
        end if;
    end process;

    process
    begin
        A <= "00";
        wait for 3 ns;
        A <= "01";
        wait for 3 ns;
        A <= "10";
        wait for 3 ns;
        A <= "11";
        wait for 3 ns;
        wait;
    end process;
end rtl;
