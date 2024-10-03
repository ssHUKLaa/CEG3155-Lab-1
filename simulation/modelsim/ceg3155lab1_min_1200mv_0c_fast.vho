-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/30/2024 20:05:32"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	RightInput : IN std_logic;
	LeftInput : IN std_logic;
	GClock : IN std_logic;
	GReset : IN std_logic;
	DisplayOut : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- RightInput	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LeftInput	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DisplayOut[7]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RightInput : std_logic;
SIGNAL ww_LeftInput : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_DisplayOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RightInput~input_o\ : std_logic;
SIGNAL \LeftInput~input_o\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \DisplayOut[0]~output_o\ : std_logic;
SIGNAL \DisplayOut[1]~output_o\ : std_logic;
SIGNAL \DisplayOut[2]~output_o\ : std_logic;
SIGNAL \DisplayOut[3]~output_o\ : std_logic;
SIGNAL \DisplayOut[4]~output_o\ : std_logic;
SIGNAL \DisplayOut[5]~output_o\ : std_logic;
SIGNAL \DisplayOut[6]~output_o\ : std_logic;
SIGNAL \DisplayOut[7]~output_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;
SIGNAL \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ : std_logic;

BEGIN

ww_RightInput <= RightInput;
ww_LeftInput <= LeftInput;
ww_GClock <= GClock;
ww_GReset <= GReset;
DisplayOut <= ww_DisplayOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\;
\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\ <= NOT \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\;

-- Location: IOOBUF_X0_Y34_N9
\DisplayOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DisplayOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DisplayOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DisplayOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DisplayOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DisplayOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DisplayOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DisplayOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|ALT_INV_int_q~0_combout\,
	devoe => ww_devoe,
	o => \DisplayOut[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N0
\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N28
\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst0|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N18
\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N14
\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst1|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N16
\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N4
\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst2|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N6
\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N26
\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst3|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N24
\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N8
\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst4|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N2
\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N30
\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst5|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N12
\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N20
\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst6|slaveLatch|int_q~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\ = (\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\) # (!\GClock~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\,
	datad => \GClock~input_o\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\);

-- Location: LCCOMB_X1_Y36_N22
\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\ = (GLOBAL(\GClock~inputclkctrl_outclk\) & ((\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\))) # (!GLOBAL(\GClock~inputclkctrl_outclk\) & 
-- (\datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\,
	datac => \GClock~inputclkctrl_outclk\,
	datad => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_sSignal~combout\,
	combout => \datapath_inst|register_8bit_Disp|dff_inst7|slaveLatch|int_q~0_combout\);

-- Location: IOIBUF_X1_Y73_N22
\RightInput~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RightInput,
	o => \RightInput~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\LeftInput~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LeftInput,
	o => \LeftInput~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

ww_DisplayOut(0) <= \DisplayOut[0]~output_o\;

ww_DisplayOut(1) <= \DisplayOut[1]~output_o\;

ww_DisplayOut(2) <= \DisplayOut[2]~output_o\;

ww_DisplayOut(3) <= \DisplayOut[3]~output_o\;

ww_DisplayOut(4) <= \DisplayOut[4]~output_o\;

ww_DisplayOut(5) <= \DisplayOut[5]~output_o\;

ww_DisplayOut(6) <= \DisplayOut[6]~output_o\;

ww_DisplayOut(7) <= \DisplayOut[7]~output_o\;
END structure;


