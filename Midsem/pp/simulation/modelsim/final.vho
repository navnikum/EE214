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

-- DATE "03/10/2018 16:54:06"

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

ENTITY 	final IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END final;

-- Design Ports Information


ARCHITECTURE structure OF final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL \g~1_combout\ : std_logic;
SIGNAL \g~3_combout\ : std_logic;
SIGNAL \g~2_combout\ : std_logic;
SIGNAL \g~5_combout\ : std_logic;
SIGNAL \g~4_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \g~6_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_g~6_combout\ : std_logic;

BEGIN

ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_g~6_combout\ <= NOT \g~6_combout\;

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: LC_X6_Y4_N5
\g~1\ : maxv_lcell
-- Equation(s):
-- \g~1_combout\ = (\x~combout\(6) & (((\x~combout\(1)) # (\x~combout\(0))))) # (!\x~combout\(6) & (((\x~combout\(1) & \x~combout\(0)))))

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
	dataa => \x~combout\(6),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LC_X6_Y4_N4
\g~3\ : maxv_lcell
-- Equation(s):
-- \g~3_combout\ = (\x~combout\(4) & ((\x~combout\(2)) # ((\x~combout\(5))))) # (!\x~combout\(4) & (\x~combout\(2) & (\x~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(4),
	datab => \x~combout\(2),
	datac => \x~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~3_combout\);

-- Location: LC_X6_Y4_N2
\g~2\ : maxv_lcell
-- Equation(s):
-- \g~2_combout\ = \x~combout\(4) $ (\x~combout\(2) $ ((\x~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(4),
	datab => \x~combout\(2),
	datac => \x~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~2_combout\);

-- Location: LC_X6_Y4_N6
\g~5\ : maxv_lcell
-- Equation(s):
-- \g~5_combout\ = (\g~1_combout\ & ((\g~3_combout\) # ((\x~combout\(3) & \g~2_combout\)))) # (!\g~1_combout\ & (\x~combout\(3) & (\g~3_combout\ & \g~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g~1_combout\,
	datab => \x~combout\(3),
	datac => \g~3_combout\,
	datad => \g~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~5_combout\);

-- Location: LC_X6_Y4_N9
\g~4\ : maxv_lcell
-- Equation(s):
-- \g~4_combout\ = (\g~1_combout\ & ((\x~combout\(3) & ((\g~3_combout\) # (!\g~2_combout\))) # (!\x~combout\(3) & ((\g~2_combout\))))) # (!\g~1_combout\ & (\g~3_combout\ & (\x~combout\(3) $ (\g~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g~1_combout\,
	datab => \x~combout\(3),
	datac => \g~3_combout\,
	datad => \g~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~4_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: LC_X6_Y4_N7
\g~0\ : maxv_lcell
-- Equation(s):
-- \g~0_combout\ = \x~combout\(6) $ (((\x~combout\(1) $ (\x~combout\(0)))))

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
	dataa => \x~combout\(6),
	datac => \x~combout\(1),
	datad => \x~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~0_combout\);

-- Location: LC_X6_Y4_N8
\g~6\ : maxv_lcell
-- Equation(s):
-- \g~6_combout\ = (\g~5_combout\ & (!\g~4_combout\ & (!\x~combout\(7) & !\g~0_combout\))) # (!\g~5_combout\ & (((!\g~0_combout\) # (!\x~combout\(7))) # (!\g~4_combout\)))

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
	dataa => \g~5_combout\,
	datab => \g~4_combout\,
	datac => \x~combout\(7),
	datad => \g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~6_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g~6_combout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_g~6_combout\,
	oe => VCC,
	padio => ww_y(1));
END structure;


