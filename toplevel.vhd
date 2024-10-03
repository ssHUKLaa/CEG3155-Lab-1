LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY topLevel IS
	PORT (
			RightInput, LeftInput, GClock, GReset : IN STD_LOGIC;
			DisplayOut : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end topLevel;

architecture basic of topLevel is
	COMPONENT datapath 
			PORT(
				loadDisp		: IN	STD_LOGIC;
				loadL			: IN	STD_LOGIC;
				loadR			: IN	STD_LOGIC;
				selD1			: IN	STD_LOGIC;
				selD2			: IN	STD_LOGIC;
				selL			: IN	STD_LOGIC;
				selR			: IN	STD_LOGIC; 
				leftInput	: IN	STD_LOGIC; 
				RightInput	: IN	STD_LOGIC;
				loadLeft		: IN  STD_LOGIC;
				loadRight	: IN  STD_LOGIC;
				i_clock		: IN	STD_LOGIC; 
				GReset		: IN	STD_LOGIC;
				zeroLeft		: OUT	STD_LOGIC;
				zeroRight	: OUT	STD_LOGIC;
				regDispOut 	: OUT STD_LOGIC_VECTOR(7 downto 0)
			);
	END COMPONENT;
	
	COMPONENT controlLogic 
			PORT(
				zeroLeft		: IN  STD_LOGIC;
				zeroRight	: IN  STD_LOGIC;
				i_clock		: IN  STD_LOGIC;
				loadDisp		: OUT STD_LOGIC;
				loadL			: OUT STD_LOGIC; 
				loadR			: OUT STD_LOGIC; 
				selD1			: OUT STD_LOGIC;
				selD2			: OUT STD_LOGIC; 
				selL			: OUT STD_LOGIC; 
				selR			: OUT STD_LOGIC
			);
	END COMPONENT;
	
	SIGNAL transitoryDispLoad, transitoryLeftLoad, transitoryRightLoad, transitoryRightInput, transitoryLeftInput : STD_LOGIC;
	SIGNAL transitorySelL, transitorySelR, transitorySelD1, transitorySelD2 : STD_LOGIC;
	SIGNAL transitoryZeroLeft, transitoryZeroRight : STD_LOGIC;

BEGIN

	transitoryRightInput <= RightInput AND NOT(GReset);
	transitoryLeftInput <= LeftInput AND NOT(GReset);
	datapath_inst: datapath
		PORT MAP (
			loadDisp => transitoryDispLoad,
			loadL => transitoryLeftLoad,
			loadR => transitoryRightLoad,
			selD1 => transitorySelD1,
			selD2 => transitorySelD2,
			selL => transitorySelL,
			selR => transitorySelR,
			leftInput => transitoryRightInput,
			RightInput => transitoryLeftInput,
			loadLeft => '1',
			loadRight => '1',
			i_clock => GClock,
			GReset => GReset,
			zeroLeft => transitoryZeroLeft,
			zeroRight => transitoryZeroRight,
			regDispOut => DisplayOut
		);
		
	controlLogic_inst : controlLogic
		PORT MAP (
			zeroLeft => transitoryZeroLeft,
			zeroRight => transitoryZeroRight,
			i_clock => GClock,
			loadDisp => transitoryDispLoad,
			loadL => transitoryLeftLoad,
			loadR => transitoryRightLoad,
			selD1 => transitorySelD1,
			selD2 => transitorySelD2,
			selL => transitorySelL,
			selR => transitorySelR
		);
	

end basic;