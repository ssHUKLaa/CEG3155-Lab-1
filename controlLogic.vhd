LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY controlLogic IS
	PORT(
		zeroLeft,zeroRight	: IN STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		loadDisp, loadL, loadR, selD1, selD2, selL, selR	: OUT STD_LOGIC
	);	
END controlLogic;

architecture basic of controlLogic is
	COMPONENT d_FF
        PORT(
            i_d       : IN  STD_LOGIC;
            i_clock   : IN  STD_LOGIC;
            o_q       : OUT STD_LOGIC;
            o_qBar    : OUT STD_LOGIC
        );
    END COMPONENT;
	SIGNAL andStates, trans1, trans2, trans3 : STD_LOGIC;
	SIGNAL transitoryStates : STD_LOGIC_VECTOR(4 downto 0);
	
begin
	andStates <= NOT(zeroLeft) AND NOT(zeroRight);
	trans1 <= zeroLeft and zeroRight;
	trans2 <= zeroLeft and NOT(zeroRight);
	trans3 <= NOT(zeroLeft) and zeroRight;
	dff_inst0: d_FF
        PORT MAP (
            i_d     => '1',
            i_clock => i_clock,
            o_q     => transitoryStates(0),
            o_qBar  => open
        );
	
	dff_inst1: d_FF
        PORT MAP (
            i_d     => trans1,
            i_clock => i_clock,
            o_q     => transitoryStates(1),
            o_qBar  => open
        );
		  
	dff_inst2: d_FF
        PORT MAP (
            i_d     => trans2,
            i_clock => i_clock,
            o_q     => transitoryStates(2),
            o_qBar  => open
        );
		  
	dff_inst3: d_FF
        PORT MAP (
            i_d     => trans3,
            i_clock => i_clock,
            o_q     => transitoryStates(3),
            o_qBar  => open
        );
		  
	dff_inst4: d_FF
        PORT MAP (
            i_d     => andStates,
            i_clock => i_clock,
            o_q     => transitoryStates(4),
            o_qBar  => open
        );
		  
	loadDisp <= transitoryStates(0) OR transitoryStates(1) OR transitoryStates(2) OR transitoryStates(3) OR transitoryStates(4);
	
	loadL <= transitoryStates(0) OR transitoryStates(1) OR transitoryStates(2);
	
	loadR <= transitoryStates(0) OR transitoryStates(1) OR transitoryStates(3);
	
	selD1 <= transitoryStates(1) OR transitoryStates(3);
	
	selD2 <= transitoryStates(1) OR transitoryStates(2);
	
	selL <= transitoryStates(1) OR transitoryStates(2);
	
	selR <= transitoryStates(1) OR transitoryStates(3);
	
	
end basic;