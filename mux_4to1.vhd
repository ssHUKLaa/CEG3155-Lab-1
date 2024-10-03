LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_4to1 IS
    PORT(
        en    : IN STD_LOGIC;                     -- Enable signal
        sel   : IN  STD_LOGIC_VECTOR(1 downto 0); -- Selection signal
        d_in0 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 1st 8-bit input
        d_in1 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 2nd 8-bit input
        d_in2 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 3rd 8-bit input
        d_in3 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 4th 8-bit input
        d_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output
    );
END mux_4to1;

ARCHITECTURE structural OF mux_4to1 IS
    COMPONENT mux_4to1_1bit
        PORT(
            d_in : IN STD_LOGIC_VECTOR(3 downto 0);  -- 4-bit input for 1-bit MUX
            sel  : IN STD_LOGIC_VECTOR(1 downto 0);  -- Selection signal
            en   : IN STD_LOGIC;                      -- Enable signal
            d_out : OUT STD_LOGIC                     -- Output for 1-bit MUX
        );
    END COMPONENT;
	 SIGNAL bitComparing_1, bitComparing_2, bitComparing_3, bitComparing_4, bitComparing_5, bitComparing_6, bitComparing_7, bitComparing_8 : STD_LOGIC_VECTOR(3 downto 0);

BEGIN
	 bitComparing_1(0) <= d_in0(0);
	 bitComparing_1(1) <= d_in1(0);
	 bitComparing_1(2) <= d_in2(0);
	 bitComparing_1(3) <= d_in3(0);
	 
	 bitComparing_2(0) <= d_in0(1);
	 bitComparing_2(1) <= d_in1(1);
	 bitComparing_2(2) <= d_in2(1);
	 bitComparing_2(3) <= d_in3(1);
	 
	 bitComparing_3(0) <= d_in0(2);
	 bitComparing_3(1) <= d_in1(2);
	 bitComparing_3(2) <= d_in2(2);
	 bitComparing_3(3) <= d_in3(2);
	 
	 bitComparing_4(0) <= d_in0(3);
	 bitComparing_4(1) <= d_in1(3);
	 bitComparing_4(2) <= d_in2(3);
	 bitComparing_4(3) <= d_in3(3);
	 
	 bitComparing_5(0) <= d_in0(4);
	 bitComparing_5(1) <= d_in1(4);
	 bitComparing_5(2) <= d_in2(4);
	 bitComparing_5(3) <= d_in3(4);
	 
	 bitComparing_6(0) <= d_in0(5);
	 bitComparing_6(1) <= d_in1(5);
	 bitComparing_6(2) <= d_in2(5);
	 bitComparing_6(3) <= d_in3(5);
	 
	 bitComparing_7(0) <= d_in0(6);
	 bitComparing_7(1) <= d_in1(6);
	 bitComparing_7(2) <= d_in2(6);
	 bitComparing_7(3) <= d_in3(6);
	 
	 bitComparing_8(0) <= d_in0(7);
	 bitComparing_8(1) <= d_in1(7);
	 bitComparing_8(2) <= d_in2(7);
	 bitComparing_8(3) <= d_in3(7);
	 
    -- Use individual inputs for the 4-to-1 selection
    mux0 : mux_4to1_1bit
        PORT MAP(
				d_in => bitComparing_1, 
				sel => sel, 
				en => en, 
				d_out => d_out(0)
			);

    mux1 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_2, 
				sel => sel, 
				en => en, 
				d_out => d_out(1)
			);
			
    mux2 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_3, 
				sel => sel, 
				en => en, 
				d_out => d_out(2)
			);
    mux3 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_4, 
				sel => sel, 
				en => en, 
				d_out => d_out(3)
			);
    mux4 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_5, 
				sel => sel, 
				en => en, 
				d_out => d_out(4)
			);
    mux5 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_6, 
				sel => sel, 
				en => en, 
				d_out => d_out(5)
			);
    mux6 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_7, 
				sel => sel, 
				en => en, 
				d_out => d_out(6)
			);
    mux7 : mux_4to1_1bit
			PORT MAP(
				d_in => bitComparing_8, 
				sel => sel, 
				en => en, 
				d_out => d_out(7)
			);
END structural;
