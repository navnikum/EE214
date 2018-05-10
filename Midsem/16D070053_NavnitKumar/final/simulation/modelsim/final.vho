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

-- DATE "03/10/2018 16:43:35"

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
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(1 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL \dut|y[1]~2_combout\ : std_logic;
SIGNAL \dut|y[1]~3_combout\ : std_logic;
SIGNAL \dut|y[1]~1_combout\ : std_logic;
SIGNAL \dut|y[1]~5_combout\ : std_logic;
SIGNAL \dut|y[1]~0_combout\ : std_logic;
SIGNAL \dut|y[1]~4_combout\ : std_logic;
SIGNAL \dut|y[1]~6_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|ALT_INV_y[1]~6_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dut|ALT_INV_y[1]~6_combout\ <= NOT \dut|y[1]~6_combout\;

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X11_Y6_N8
\dut|y[1]~2\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~2_combout\ = \input_vector~combout\(4) $ (((\input_vector~combout\(5) $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~2_combout\);

-- Location: LC_X11_Y6_N9
\dut|y[1]~3\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~3_combout\ = (\input_vector~combout\(4) & (((\input_vector~combout\(5)) # (\input_vector~combout\(2))))) # (!\input_vector~combout\(4) & (((\input_vector~combout\(5) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~3_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X11_Y6_N2
\dut|y[1]~1\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~1_combout\ = ((\input_vector~combout\(1) & ((\input_vector~combout\(0)) # (\input_vector~combout\(6)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(0) & \input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~1_combout\);

-- Location: LC_X11_Y6_N6
\dut|y[1]~5\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~5_combout\ = (\dut|y[1]~3_combout\ & ((\dut|y[1]~1_combout\) # ((\dut|y[1]~2_combout\ & \input_vector~combout\(3))))) # (!\dut|y[1]~3_combout\ & (\dut|y[1]~2_combout\ & (\input_vector~combout\(3) & \dut|y[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|y[1]~2_combout\,
	datab => \dut|y[1]~3_combout\,
	datac => \input_vector~combout\(3),
	datad => \dut|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~5_combout\);

-- Location: LC_X11_Y6_N7
\dut|y[1]~0\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~0_combout\ = (\input_vector~combout\(1) $ (\input_vector~combout\(0) $ (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~0_combout\);

-- Location: LC_X11_Y6_N4
\dut|y[1]~4\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~4_combout\ = (\dut|y[1]~3_combout\ & ((\dut|y[1]~2_combout\ & ((\dut|y[1]~1_combout\) # (!\input_vector~combout\(3)))) # (!\dut|y[1]~2_combout\ & (\input_vector~combout\(3))))) # (!\dut|y[1]~3_combout\ & (\dut|y[1]~1_combout\ & 
-- (\dut|y[1]~2_combout\ $ (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|y[1]~2_combout\,
	datab => \dut|y[1]~3_combout\,
	datac => \input_vector~combout\(3),
	datad => \dut|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~4_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X11_Y6_N5
\dut|y[1]~6\ : maxv_lcell
-- Equation(s):
-- \dut|y[1]~6_combout\ = (\dut|y[1]~5_combout\ & (!\dut|y[1]~0_combout\ & (!\dut|y[1]~4_combout\ & !\input_vector~combout\(7)))) # (!\dut|y[1]~5_combout\ & (((!\input_vector~combout\(7)) # (!\dut|y[1]~4_combout\)) # (!\dut|y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|y[1]~5_combout\,
	datab => \dut|y[1]~0_combout\,
	datac => \dut|y[1]~4_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|y[1]~6_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|y[1]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|ALT_INV_y[1]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(1));
END structure;


