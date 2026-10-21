library ieee;
use ieee.std_logic_1164.all;

entity ex_multiplier_logic is
end ex_multiplier_logic;

architecture rtl of ex_multiplier_logic is
    signal A, B : std_logic_vector(1 downto 0);
    signal C : std_logic_vector(3 downto 0);
    signal P0, P1, P2, P3, T : std_logic;
begin
    P0 <= A(0) and B(0);
    P1 <= A(1) and B(0);
    P2 <= A(0) and B(1);
    P3 <= A(1) and B(1);

    C(0) <= P0;
    C(1) <= P1 xor P2;
    T    <= P1 and P2;
    C(2) <= P3 xor T;
    C(3) <= P3 and T;

    process
    begin
        A <= "00"; B <= "00";
        wait for 3 ns;
        A <= "00"; B <= "01";
        wait for 3 ns;
        A <= "00"; B <= "10";
        wait for 3 ns;
        A <= "00"; B <= "11";
        wait for 3 ns;

        A <= "01"; B <= "00";
        wait for 3 ns;
        A <= "01"; B <= "01";
        wait for 3 ns;
        A <= "01"; B <= "10";
        wait for 3 ns;
        A <= "01"; B <= "11";
        wait for 3 ns;

        A <= "10"; B <= "00";
        wait for 3 ns;
        A <= "10"; B <= "01";
        wait for 3 ns;
        A <= "10"; B <= "10";
        wait for 3 ns;
        A <= "10"; B <= "11";
        wait for 3 ns;

        A <= "11"; B <= "00";
        wait for 3 ns;
        A <= "11"; B <= "01";
        wait for 3 ns;
        A <= "11"; B <= "10";
        wait for 3 ns;
        A <= "11"; B <= "11";
        wait for 3 ns;
        wait;
    end process;
end rtl;
