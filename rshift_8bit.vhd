LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rshift_8bit IS
    PORT(
        data_in  : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
        i_clock    : IN  STD_LOGIC;                     -- Clock signal
        data_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output data
    );
END rshift_8bit;

ARCHITECTURE structural OF rshift_8bit IS
    -- Signal to store intermediate flip-flop outputs
    SIGNAL dff_q, transData    : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL dff_qBar : STD_LOGIC_VECTOR(7 downto 0);

    COMPONENT dFF_8bit
        PORT(
            i_d     : IN  STD_LOGIC_VECTOR(7 downto 0);
            i_clock : IN  STD_LOGIC;
            o_q     : OUT STD_LOGIC_VECTOR(7 downto 0);
            o_qBar  : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;

BEGIN
	 transData <= (data_in(0) & data_in(7 downto 1));
    -- Instantiate the 8-bit D flip-flop for right shift
    dff_inst: dFF_8bit
        PORT MAP(
            i_d     => transData,  -- Right shift input by 1 bit, LSB is '0'
            i_clock => i_clock,
            o_q     => data_out,
            o_qBar  => dff_qBar
        );

END structural;
