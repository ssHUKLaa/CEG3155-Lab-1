LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY datapath IS
	PORT(
		loadDisp,loadL,loadR,selD1,selD2,selL,selR, leftInput, RightInput			: IN	STD_LOGIC;
		loadLeft,loadRight	: IN STD_LOGIC;
		i_clock, GReset			: IN	STD_LOGIC;
		zeroLeft,zeroRight: OUT STD_LOGIC;
		regDispOut : OUT STD_LOGIC_VECTOR(7 downto 0)
	);	
end datapath;

architecture basic of datapath is
	COMPONENT mux_4to1
        PORT(
            en    : IN STD_LOGIC;                     -- Enable signal
			   sel   : IN  STD_LOGIC_VECTOR(1 downto 0); -- Selection signal
			   d_in0 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 1st 8-bit input
			   d_in1 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 2nd 8-bit input
			   d_in2 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 3rd 8-bit input
			   d_in3 : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 4th 8-bit input
			   d_out : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output 
        );
    END COMPONENT;
	 
	 COMPONENT mux_2to1_8bit
        PORT(
			   sel     : IN  STD_LOGIC;                             -- Select input
			   d_in1   : IN  STD_LOGIC_VECTOR(7 downto 0);        -- 8-bit Data input 1
			   d_in2   : IN  STD_LOGIC_VECTOR(7 downto 0);        -- 8-bit Data input 2
			   clk     : IN  STD_LOGIC;                             -- Clock input
			   reset   : IN  STD_LOGIC;                             -- Reset input
			   d_out   : OUT STD_LOGIC_VECTOR(7 downto 0)  
        );
    END COMPONENT;
	 
	 COMPONENT register_8bit
        PORT(
            i_d         : IN  STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
			   i_clock     : IN  STD_LOGIC;                      -- Clock input
			   i_enable    : IN  STD_LOGIC;                      -- Enable signal (single bit)
			   o_q         : OUT STD_LOGIC_VECTOR(7 downto 0) 
        );
    END COMPONENT;
	 
	 COMPONENT register_1bit_special
        PORT(
            i_d         : IN  STD_LOGIC;                      -- 1-bit input data
			   i_clock     : IN  STD_LOGIC;                      -- Clock input
			   i_enable    : IN  STD_LOGIC;                      -- Enable signal (single bit)
			   o_q         : OUT STD_LOGIC  
        );
    END COMPONENT;
	 
	 COMPONENT lshift_8bit
        PORT(
				data_in : IN STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
				i_clock    : IN  STD_LOGIC; 
				data_out : OUT STD_LOGIC_VECTOR(7 downto 0) 
        );
    END COMPONENT;
	 
	 COMPONENT rshift_8bit
        PORT(
				data_in : IN STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit input data
				i_clock    : IN  STD_LOGIC;
				data_out : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT or_gate_8bit
        PORT(
				a : IN STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input A
			   b : IN STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input B
			   y : OUT STD_LOGIC_VECTOR(7 downto 0)   -- 8-bit output Y       : OUT STD_LOGIC_VECTOR(7 downto 0) 
        );
    END COMPONENT;
	 
	 SIGNAL combineSelD : STD_LOGIC_VECTOR(1 downto 0);
	 SIGNAL ResetMask, leftshiftout, rightshiftout, dispMuxOut, lmaskMuxOut, rmaskMuxOut, lmaskRegOut, rmaskRegOut, lrAndOut : STD_LOGIC_VECTOR(7 downto 0);
	 
	 

BEGIN

	combineSelD(0) <= selD1 AND NOT(GReset);
	combineSelD(1) <= selD2 AND NOT(GReset);
	ResetMask(0) <= NOT(GReset);
	ResetMask(1) <= NOT(GReset);
	ResetMask(2) <= NOT(GReset);
	ResetMask(3) <= NOT(GReset);
	ResetMask(4) <= NOT(GReset);
	ResetMask(5) <= NOT(GReset);
	ResetMask(6) <= NOT(GReset);
	ResetMask(7) <= NOT(GReset);

	
	mux_4to1_disp: mux_4to1
		PORT MAP (
            en => '1',
			   sel =>  combineSelD,
			   d_in0 => "00000000",
			   d_in1 => lmaskMuxOut,
			   d_in2 => rmaskMuxOut,
			   d_in3 => lrAndOut,
			   d_out => dispMuxOut
        );
		  
	mux_2to1_LReg : mux_2to1_8bit
		PORT MAP (
				sel => selL,
				d_in1 => "10000000",
				d_in2 => leftshiftout,
				clk => i_clock,
				reset => GReset,
				d_out => lmaskMuxOut
			);
	
	mux_2to1_RReg : mux_2to1_8bit
		PORT MAP (
				sel => selR,
				d_in1 => "00000001",
				d_in2 => rightshiftout,
				clk => i_clock,
				reset => GReset,
				d_out => rmaskMuxOut
			);
			
	register_8bit_Disp : register_8bit
		PORT MAP (
				i_d => dispMuxOut,
				i_clock => i_clock,
				i_enable => loadDisp,
				o_q => regDispOut
			);
		
	register_8bit_LMASK : register_8bit
		PORT MAP (
				i_d => lmaskMuxOut,
				i_clock => i_clock,
				i_enable => loadL,
				o_q => lmaskRegOut
			);
			
	register_8bit_RMASK : register_8bit
		PORT MAP (
				i_d => rmaskMuxOut,
				i_clock => i_clock,
				i_enable => loadR,
				o_q => rmaskRegOut
			);
	lshift_8bit_0 : lshift_8bit
		PORT MAP (
				data_in => lmaskRegOut,
				i_clock => i_clock,
				data_out => leftshiftout
			);
	
	rshift_8bit_0 : rshift_8bit
		PORT MAP (
				data_in => rmaskRegOut,
				i_clock => i_clock,
				data_out => rightshiftout
			);
			
	AND_LMASK_RMASK : or_gate_8bit
		PORT MAP (
				a => lmaskRegOut,
				b => rmaskRegOut,
				y => lrAndOut
			);
	
	leftRegister : register_1bit_special
		PORT MAP (
				i_d => leftInput,
				i_clock => i_clock,
				i_enable => loadLeft,
				o_q => zeroLeft
			);
			
	rightRegister : register_1bit_special
		PORT MAP (
				i_d => rightInput,
				i_clock => i_clock,
				i_enable => loadRight,
				o_q => zeroRight
			);
end basic;
	 
	 