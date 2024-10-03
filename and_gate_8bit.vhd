LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY or_gate_8bit IS
    PORT(
        a : IN STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input A
        b : IN STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input B
        y : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output Y
    );
END and_gate_8bit;

ARCHITECTURE structural OF and_gate_8bit IS

BEGIN
	 y(0) <= a(0) OR b(0);
    y(1) <= a(1) OR b(1);
    y(2) <= a(2) OR b(2);
    y(3) <= a(3) OR b(3);
    y(4) <= a(4) OR b(4);
    y(5) <= a(5) OR b(5);
    y(6) <= a(6) OR b(6);
    y(7) <= a(7) OR b(7);
END structural;