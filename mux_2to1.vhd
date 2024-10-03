LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_2to1 IS
    PORT(
        d0 : IN STD_LOGIC_VECTOR(7 downto 0);   -- First 8-bit input
        d1 : IN STD_LOGIC_VECTOR(7 downto 0);   -- Second 8-bit input
        sel, en : IN STD_LOGIC;                     -- 1-bit selector
        d_out : OUT STD_LOGIC_VECTOR(7 downto 0)  -- 8-bit output
    );
END mux_2to1;

ARCHITECTURE structural OF mux_2to1 IS
    COMPONENT mux_2to1_1bit
        PORT(
            d0 : IN STD_LOGIC;
            d1 : IN STD_LOGIC;
            sel : IN STD_LOGIC;
				en : IN STD_LOGIC;
            d_out : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 
BEGIN
	 mux0 : mux_2to1_1bit
        PORT MAP(d0 => d0(0), d1 => d1(0), sel => sel, en => en, d_out => d_out(0));

    mux1 : mux_2to1_1bit
        PORT MAP(d0 => d0(1), d1 => d1(1), sel => sel, en => en, d_out => d_out(1));

    mux2 : mux_2to1_1bit
        PORT MAP(d0 => d0(2), d1 => d1(2), sel => sel, en => en, d_out => d_out(2));

    mux3 : mux_2to1_1bit
        PORT MAP(d0 => d0(3), d1 => d1(3), sel => sel, en => en, d_out => d_out(3));

    mux4 : mux_2to1_1bit
        PORT MAP(d0 => d0(4), d1 => d1(4), sel => sel, en => en, d_out => d_out(4));

    mux5 : mux_2to1_1bit
        PORT MAP(d0 => d0(5), d1 => d1(5), sel => sel, en => en, d_out => d_out(5));

    mux6 : mux_2to1_1bit
        PORT MAP(d0 => d0(6), d1 => d1(6), sel => sel, en => en, d_out => d_out(6));

    mux7 : mux_2to1_1bit
        PORT MAP(d0 => d0(7), d1 => d1(7), sel => sel, en => en, d_out => d_out(7));

END structural;