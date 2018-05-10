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

-- DATE "02/19/2018 10:00:34"

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
SIGNAL \d|HD_1|d~combout\ : std_logic;
SIGNAL \d|FD_1|d~combout\ : std_logic;
SIGNAL \d|FD_1|bout~combout\ : std_logic;
SIGNAL \d|FD_2|d~combout\ : std_logic;
SIGNAL \d|FD_2|bout~combout\ : std_logic;
SIGNAL \d|FD_3|d~combout\ : std_logic;
SIGNAL \d|FD_3|bout~combout\ : std_logic;
SIGNAL \d|FD_4|d~combout\ : std_logic;
SIGNAL \d|FD_4|bout~combout\ : std_logic;
SIGNAL \d|FD_5|d~combout\ : std_logic;
SIGNAL \d|FD_5|bout~combout\ : std_logic;
SIGNAL \d|FD_6|d~combout\ : std_logic;
SIGNAL \d|FD_7|d~0_combout\ : std_logic;
SIGNAL \d|FD_7|d~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X13_Y3_N5
\d|HD_1|d\ : maxv_lcell
-- Equation(s):
-- \d|HD_1|d~combout\ = (\input_vector~combout\(0) $ (((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|HD_1|d~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y3_N7
\d|FD_1|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_1|d~combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(9) $ (((!\input_vector~combout\(8) & \input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bb4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_1|d~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X13_Y3_N9
\d|FD_1|bout\ : maxv_lcell
-- Equation(s):
-- \d|FD_1|bout~combout\ = (\input_vector~combout\(1) & (((!\input_vector~combout\(8) & \input_vector~combout\(0))) # (!\input_vector~combout\(9)))) # (!\input_vector~combout\(1) & (!\input_vector~combout\(8) & (\input_vector~combout\(0) & 
-- !\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_1|bout~combout\);

-- Location: LC_X13_Y3_N4
\d|FD_2|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_2|d~combout\ = (\input_vector~combout\(2) $ (\input_vector~combout\(10) $ (\d|FD_1|bout~combout\)))

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
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(10),
	datad => \d|FD_1|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_2|d~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X13_Y3_N6
\d|FD_2|bout\ : maxv_lcell
-- Equation(s):
-- \d|FD_2|bout~combout\ = ((\input_vector~combout\(2) & ((\d|FD_1|bout~combout\) # (!\input_vector~combout\(10)))) # (!\input_vector~combout\(2) & (!\input_vector~combout\(10) & \d|FD_1|bout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(10),
	datad => \d|FD_1|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_2|bout~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X13_Y3_N2
\d|FD_3|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_3|d~combout\ = (\input_vector~combout\(11) $ (\d|FD_2|bout~combout\ $ (\input_vector~combout\(3))))

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
	datab => \input_vector~combout\(11),
	datac => \d|FD_2|bout~combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_3|d~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X13_Y3_N8
\d|FD_3|bout\ : maxv_lcell
-- Equation(s):
-- \d|FD_3|bout~combout\ = ((\input_vector~combout\(11) & (\d|FD_2|bout~combout\ & \input_vector~combout\(3))) # (!\input_vector~combout\(11) & ((\d|FD_2|bout~combout\) # (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(11),
	datac => \d|FD_2|bout~combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_3|bout~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X15_Y3_N2
\d|FD_4|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_4|d~combout\ = \input_vector~combout\(4) $ (((\d|FD_3|bout~combout\ $ (\input_vector~combout\(12)))))

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
	datac => \d|FD_3|bout~combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_4|d~combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X15_Y3_N4
\d|FD_4|bout\ : maxv_lcell
-- Equation(s):
-- \d|FD_4|bout~combout\ = (\input_vector~combout\(4) & (((\d|FD_3|bout~combout\) # (!\input_vector~combout\(12))))) # (!\input_vector~combout\(4) & (((\d|FD_3|bout~combout\ & !\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \d|FD_3|bout~combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_4|bout~combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X15_Y3_N6
\d|FD_5|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_5|d~combout\ = (\input_vector~combout\(5) $ (\d|FD_4|bout~combout\ $ (\input_vector~combout\(13))))

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
	datab => \input_vector~combout\(5),
	datac => \d|FD_4|bout~combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_5|d~combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X15_Y3_N5
\d|FD_5|bout\ : maxv_lcell
-- Equation(s):
-- \d|FD_5|bout~combout\ = ((\input_vector~combout\(5) & ((\d|FD_4|bout~combout\) # (!\input_vector~combout\(13)))) # (!\input_vector~combout\(5) & (\d|FD_4|bout~combout\ & !\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datac => \d|FD_4|bout~combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_5|bout~combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X15_Y3_N8
\d|FD_6|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_6|d~combout\ = \input_vector~combout\(14) $ (((\d|FD_5|bout~combout\ $ (\input_vector~combout\(6)))))

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
	dataa => \input_vector~combout\(14),
	datac => \d|FD_5|bout~combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_6|d~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X16_Y5_N2
\d|FD_7|d~0\ : maxv_lcell
-- Equation(s):
-- \d|FD_7|d~0_combout\ = ((\input_vector~combout\(15) $ (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_7|d~0_combout\);

-- Location: LC_X15_Y3_N9
\d|FD_7|d\ : maxv_lcell
-- Equation(s):
-- \d|FD_7|d~combout\ = \d|FD_7|d~0_combout\ $ (((\input_vector~combout\(14) & (\d|FD_5|bout~combout\ & \input_vector~combout\(6))) # (!\input_vector~combout\(14) & ((\d|FD_5|bout~combout\) # (\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "399c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \d|FD_7|d~0_combout\,
	datac => \d|FD_5|bout~combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d|FD_7|d~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|HD_1|d~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_1|d~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_2|d~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_3|d~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_4|d~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_5|d~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_6|d~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \d|FD_7|d~combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


