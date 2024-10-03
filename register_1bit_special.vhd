LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register_1bit_special IS
    PORT(
        i_d         : IN  STD_LOGIC;                      -- 1-bit input data
        i_clock     : IN  STD_LOGIC;                      -- Clock input
        i_enable    : IN  STD_LOGIC;                      -- Enable signal (single bit)
        o_q         : OUT STD_LOGIC                       -- 1-bit output data
    );
END register_1bit_special;

ARCHITECTURE rtl OF register_1bit_special IS
    COMPONENT d_FF
        PORT(
            i_d       : IN  STD_LOGIC;                    -- 1-bit input data
            i_clock   : IN  STD_LOGIC;                    -- Clock input
            o_q       : OUT STD_LOGIC;                    -- 1-bit output data
            o_qBar    : OUT STD_LOGIC                     -- 1-bit inverted output data
        );
    END COMPONENT;

    SIGNAL q_internal,i_dtrans : STD_LOGIC;                        -- Internal signal to hold the output of D flip-flop

BEGIN
    -- Instantiate the D flip-flop with inverted input
	 i_dtrans <= i_d AND i_enable;
    dff_inst: d_FF
        PORT MAP (
            i_d     => i_dtrans ,             -- Inverted input when enabled
            i_clock => i_clock,
            o_q     => q_internal,
            o_qBar  => open                               -- Not used
        );

    -- Assign the internal signal to the output
    o_q <= q_internal;

END rtl;
