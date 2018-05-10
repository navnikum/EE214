-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "02/19/2018 10:10:32"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(15 DOWNTO 0);
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \b|p~0_combout\ : std_logic;
SIGNAL \b|MUX2_0h|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0h|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_0g|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0h|o~2_combout\ : std_logic;
SIGNAL \b|MUX2_1f|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0f|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0f|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_1e|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0e|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_1d|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_1d|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_1d|o~2_combout\ : std_logic;
SIGNAL \b|MUX2_0d|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_1c|o~0_combout\ : std_logic;
SIGNAL \b|p~combout\ : std_logic;
SIGNAL \b|MUX2_1c|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_0c|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_1b|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_1b|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_0b|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0a|o~0_combout\ : std_logic;
SIGNAL \b|MUX2_0a|o~1_combout\ : std_logic;
SIGNAL \b|MUX2_0a|o~2_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X8_Y5_N2
\b|p~0\ : maxv_lcell
-- Equation(s):
-- \b|p~0_combout\ = (\input_vector~combout\(6)) # ((\input_vector~combout\(4)) # ((\input_vector~combout\(3)) # (\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|p~0_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X9_Y7_N7
\b|MUX2_0h|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0h|o~0_combout\ = (!\input_vector~combout\(2) & (!\input_vector~combout\(7) & (!\b|p~0_combout\ & !\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(7),
	datac => \b|p~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0h|o~0_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X10_Y7_N8
\b|MUX2_0h|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0h|o~1_combout\ = ((\b|MUX2_0h|o~0_combout\ & (\input_vector~combout\(8) & !\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b|MUX2_0h|o~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0h|o~1_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X10_Y7_N4
\b|MUX2_0g|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0g|o~0_combout\ = (\b|MUX2_0h|o~0_combout\ & ((\input_vector~combout\(0) & ((\input_vector~combout\(8)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \b|MUX2_0h|o~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0g|o~0_combout\);

-- Location: LC_X9_Y7_N8
\b|MUX2_0h|o~2\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0h|o~2_combout\ = ((!\input_vector~combout\(7) & (!\b|p~0_combout\ & !\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(7),
	datac => \b|p~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0h|o~2_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X9_Y7_N1
\b|MUX2_1f|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1f|o~0_combout\ = ((\input_vector~combout\(1) & (\input_vector~combout\(8))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1f|o~0_combout\);

-- Location: LC_X10_Y7_N1
\b|MUX2_0f|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0f|o~0_combout\ = ((!\input_vector~combout\(1) & (\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0f|o~0_combout\);

-- Location: LC_X12_Y7_N4
\b|MUX2_0f|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0f|o~1_combout\ = (\b|MUX2_0h|o~2_combout\ & ((\input_vector~combout\(0) & ((\b|MUX2_0f|o~0_combout\))) # (!\input_vector~combout\(0) & (\b|MUX2_1f|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_0h|o~2_combout\,
	datab => \b|MUX2_1f|o~0_combout\,
	datac => \input_vector~combout\(0),
	datad => \b|MUX2_0f|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0f|o~1_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X10_Y7_N9
\b|MUX2_1e|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1e|o~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(9))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1e|o~0_combout\);

-- Location: LC_X12_Y7_N5
\b|MUX2_0e|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0e|o~0_combout\ = (\b|MUX2_0h|o~2_combout\ & ((\input_vector~combout\(0) & (\b|MUX2_1f|o~0_combout\)) # (!\input_vector~combout\(0) & ((\b|MUX2_1e|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_0h|o~2_combout\,
	datab => \b|MUX2_1f|o~0_combout\,
	datac => \input_vector~combout\(0),
	datad => \b|MUX2_1e|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0e|o~0_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X9_Y7_N3
\b|MUX2_1d|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1d|o~1_combout\ = (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(10)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1d|o~1_combout\);

-- Location: LC_X9_Y7_N2
\b|MUX2_1d|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1d|o~0_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(8) & !\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1d|o~0_combout\);

-- Location: LC_X9_Y7_N6
\b|MUX2_1d|o~2\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1d|o~2_combout\ = (!\input_vector~combout\(7) & (!\b|p~0_combout\ & ((\b|MUX2_1d|o~1_combout\) # (\b|MUX2_1d|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_1d|o~1_combout\,
	datab => \input_vector~combout\(7),
	datac => \b|p~0_combout\,
	datad => \b|MUX2_1d|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1d|o~2_combout\);

-- Location: LC_X12_Y7_N6
\b|MUX2_0d|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0d|o~0_combout\ = (\input_vector~combout\(0) & (\b|MUX2_0h|o~2_combout\ & ((\b|MUX2_1e|o~0_combout\)))) # (!\input_vector~combout\(0) & (((\b|MUX2_1d|o~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_0h|o~2_combout\,
	datab => \b|MUX2_1d|o~2_combout\,
	datac => \input_vector~combout\(0),
	datad => \b|MUX2_1e|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0d|o~0_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X10_Y7_N3
\b|MUX2_1c|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1c|o~0_combout\ = ((\input_vector~combout\(1) & (\input_vector~combout\(11))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(13),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1c|o~0_combout\);

-- Location: LC_X9_Y7_N4
\b|p\ : maxv_lcell
-- Equation(s):
-- \b|p~combout\ = (((\b|p~0_combout\) # (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b|p~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|p~combout\);

-- Location: LC_X10_Y7_N0
\b|MUX2_1c|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1c|o~1_combout\ = (!\b|p~combout\ & ((\input_vector~combout\(2) & ((\b|MUX2_0f|o~0_combout\))) # (!\input_vector~combout\(2) & (\b|MUX2_1c|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_1c|o~0_combout\,
	datab => \b|p~combout\,
	datac => \input_vector~combout\(2),
	datad => \b|MUX2_0f|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1c|o~1_combout\);

-- Location: LC_X12_Y7_N2
\b|MUX2_0c|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0c|o~0_combout\ = ((\input_vector~combout\(0) & (\b|MUX2_1d|o~2_combout\)) # (!\input_vector~combout\(0) & ((\b|MUX2_1c|o~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b|MUX2_1d|o~2_combout\,
	datac => \input_vector~combout\(0),
	datad => \b|MUX2_1c|o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0c|o~0_combout\);

-- Location: LC_X9_Y7_N9
\b|MUX2_1b|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1b|o~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(8)) # ((!\input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(10) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1b|o~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X9_Y7_N5
\b|MUX2_1b|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_1b|o~1_combout\ = (\input_vector~combout\(2) & (\b|MUX2_1b|o~0_combout\)) # (!\input_vector~combout\(2) & ((\b|MUX2_1b|o~0_combout\ & ((\input_vector~combout\(12)))) # (!\b|MUX2_1b|o~0_combout\ & (\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \b|MUX2_1b|o~0_combout\,
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_1b|o~1_combout\);

-- Location: LC_X10_Y7_N2
\b|MUX2_0b|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0b|o~0_combout\ = (\input_vector~combout\(0) & (((\b|MUX2_1c|o~1_combout\)))) # (!\input_vector~combout\(0) & (\b|MUX2_1b|o~1_combout\ & (!\b|p~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_1b|o~1_combout\,
	datab => \b|p~combout\,
	datac => \b|MUX2_1c|o~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0b|o~0_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X10_Y7_N7
\b|MUX2_0a|o~0\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0a|o~0_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(11))))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(1) & (\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0a|o~0_combout\);

-- Location: LC_X10_Y7_N6
\b|MUX2_0a|o~1\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0a|o~1_combout\ = (\input_vector~combout\(1) & ((\b|MUX2_0a|o~0_combout\ & (\input_vector~combout\(9))) # (!\b|MUX2_0a|o~0_combout\ & ((\input_vector~combout\(13)))))) # (!\input_vector~combout\(1) & (((\b|MUX2_0a|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(1),
	datac => \b|MUX2_0a|o~0_combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0a|o~1_combout\);

-- Location: LC_X10_Y7_N5
\b|MUX2_0a|o~2\ : maxv_lcell
-- Equation(s):
-- \b|MUX2_0a|o~2_combout\ = (!\b|p~combout\ & ((\input_vector~combout\(0) & (\b|MUX2_1b|o~1_combout\)) # (!\input_vector~combout\(0) & ((\b|MUX2_0a|o~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b|MUX2_1b|o~1_combout\,
	datab => \b|p~combout\,
	datac => \b|MUX2_0a|o~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \b|MUX2_0a|o~2_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0h|o~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0g|o~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0f|o~1_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0e|o~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0d|o~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0c|o~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0b|o~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \b|MUX2_0a|o~2_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


