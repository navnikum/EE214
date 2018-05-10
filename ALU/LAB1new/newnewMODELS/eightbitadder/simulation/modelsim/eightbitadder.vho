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

-- DATE "02/19/2018 09:54:34"

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
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
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
SIGNAL \a|HA_1|s~combout\ : std_logic;
SIGNAL \a|FA_1|s~0_combout\ : std_logic;
SIGNAL \a|FA_1|cout~0_combout\ : std_logic;
SIGNAL \a|FA_2|s~0_combout\ : std_logic;
SIGNAL \a|FA_2|cout~0_combout\ : std_logic;
SIGNAL \a|FA_3|s~combout\ : std_logic;
SIGNAL \a|FA_3|cout~0_combout\ : std_logic;
SIGNAL \a|FA_4|s~combout\ : std_logic;
SIGNAL \a|FA_4|cout~0_combout\ : std_logic;
SIGNAL \a|FA_5|s~combout\ : std_logic;
SIGNAL \a|FA_5|cout~0_combout\ : std_logic;
SIGNAL \a|FA_6|s~combout\ : std_logic;
SIGNAL \a|FA_7|s~0_combout\ : std_logic;
SIGNAL \a|FA_7|s~combout\ : std_logic;
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

-- Location: LC_X13_Y3_N6
\a|HA_1|s\ : maxv_lcell
-- Equation(s):
-- \a|HA_1|s~combout\ = (\input_vector~combout\(0) $ (((\input_vector~combout\(8)))))

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
	combout => \a|HA_1|s~combout\);

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

-- Location: LC_X13_Y3_N4
\a|FA_1|s~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_1|s~0_combout\ = \input_vector~combout\(1) $ (\input_vector~combout\(9) $ (((\input_vector~combout\(8) & \input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
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
	combout => \a|FA_1|s~0_combout\);

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

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X13_Y3_N9
\a|FA_1|cout~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_1|cout~0_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(9)) # ((\input_vector~combout\(8) & \input_vector~combout\(0))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(8) & (\input_vector~combout\(0) & 
-- \input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
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
	combout => \a|FA_1|cout~0_combout\);

-- Location: LC_X13_Y3_N5
\a|FA_2|s~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_2|s~0_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(2) $ (\a|FA_1|cout~0_combout\))))

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
	dataa => \input_vector~combout\(10),
	datac => \input_vector~combout\(2),
	datad => \a|FA_1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_2|s~0_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X13_Y3_N2
\a|FA_2|cout~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_2|cout~0_combout\ = (\input_vector~combout\(10) & (((\input_vector~combout\(2)) # (\a|FA_1|cout~0_combout\)))) # (!\input_vector~combout\(10) & (((\input_vector~combout\(2) & \a|FA_1|cout~0_combout\))))

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
	dataa => \input_vector~combout\(10),
	datac => \input_vector~combout\(2),
	datad => \a|FA_1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_2|cout~0_combout\);

-- Location: LC_X13_Y3_N7
\a|FA_3|s\ : maxv_lcell
-- Equation(s):
-- \a|FA_3|s~combout\ = \input_vector~combout\(3) $ (\input_vector~combout\(11) $ (((\a|FA_2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(11),
	datad => \a|FA_2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_3|s~combout\);

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
\a|FA_3|cout~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_3|cout~0_combout\ = (\input_vector~combout\(3) & ((\input_vector~combout\(11)) # ((\a|FA_2|cout~0_combout\)))) # (!\input_vector~combout\(3) & (\input_vector~combout\(11) & ((\a|FA_2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(11),
	datad => \a|FA_2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_3|cout~0_combout\);

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
\a|FA_4|s\ : maxv_lcell
-- Equation(s):
-- \a|FA_4|s~combout\ = \input_vector~combout\(4) $ (((\a|FA_3|cout~0_combout\ $ (\input_vector~combout\(12)))))

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
	datac => \a|FA_3|cout~0_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_4|s~combout\);

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
\a|FA_4|cout~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_4|cout~0_combout\ = (\input_vector~combout\(4) & (((\a|FA_3|cout~0_combout\) # (\input_vector~combout\(12))))) # (!\input_vector~combout\(4) & (((\a|FA_3|cout~0_combout\ & \input_vector~combout\(12)))))

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
	datac => \a|FA_3|cout~0_combout\,
	datad => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_4|cout~0_combout\);

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
\a|FA_5|s\ : maxv_lcell
-- Equation(s):
-- \a|FA_5|s~combout\ = (\input_vector~combout\(5) $ (\a|FA_4|cout~0_combout\ $ (\input_vector~combout\(13))))

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
	datac => \a|FA_4|cout~0_combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_5|s~combout\);

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
\a|FA_5|cout~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_5|cout~0_combout\ = ((\input_vector~combout\(5) & ((\a|FA_4|cout~0_combout\) # (\input_vector~combout\(13)))) # (!\input_vector~combout\(5) & (\a|FA_4|cout~0_combout\ & \input_vector~combout\(13))))

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
	datab => \input_vector~combout\(5),
	datac => \a|FA_4|cout~0_combout\,
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_5|cout~0_combout\);

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
\a|FA_6|s\ : maxv_lcell
-- Equation(s):
-- \a|FA_6|s~combout\ = \input_vector~combout\(14) $ (((\a|FA_5|cout~0_combout\ $ (\input_vector~combout\(6)))))

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
	datac => \a|FA_5|cout~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_6|s~combout\);

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
\a|FA_7|s~0\ : maxv_lcell
-- Equation(s):
-- \a|FA_7|s~0_combout\ = ((\input_vector~combout\(15) $ (\input_vector~combout\(7))))

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
	combout => \a|FA_7|s~0_combout\);

-- Location: LC_X15_Y3_N9
\a|FA_7|s\ : maxv_lcell
-- Equation(s):
-- \a|FA_7|s~combout\ = \a|FA_7|s~0_combout\ $ (((\input_vector~combout\(14) & ((\a|FA_5|cout~0_combout\) # (\input_vector~combout\(6)))) # (!\input_vector~combout\(14) & (\a|FA_5|cout~0_combout\ & \input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "366c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \a|FA_7|s~0_combout\,
	datac => \a|FA_5|cout~0_combout\,
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a|FA_7|s~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|HA_1|s~combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_1|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_2|s~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_3|s~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_4|s~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_5|s~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_6|s~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \a|FA_7|s~combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


