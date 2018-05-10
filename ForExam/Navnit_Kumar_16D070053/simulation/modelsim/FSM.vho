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

-- DATE "04/21/2018 17:08:25"

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
	input_vector : IN std_logic_vector(2 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \dut|D0|Q~regout\ : std_logic;
SIGNAL \dut|D1|Q~regout\ : std_logic;
SIGNAL \dut|An9|c~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

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

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X12_Y3_N7
\dut|D0|Q\ : maxv_lcell
-- Equation(s):
-- \dut|D0|Q~regout\ = DFFEAS((!\input_vector~combout\(2) & (!\dut|D0|Q~regout\ & (\input_vector~combout\(1) $ (!\dut|D1|Q~regout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0201",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \dut|D0|Q~regout\,
	datad => \dut|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|D0|Q~regout\);

-- Location: LC_X12_Y3_N9
\dut|D1|Q\ : maxv_lcell
-- Equation(s):
-- \dut|D1|Q~regout\ = DFFEAS((!\input_vector~combout\(2) & (\dut|D0|Q~regout\ $ (((\input_vector~combout\(1)) # (!\dut|D1|Q~regout\))))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1203",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \dut|D0|Q~regout\,
	datad => \dut|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|D1|Q~regout\);

-- Location: LC_X12_Y3_N6
\dut|An9|c\ : maxv_lcell
-- Equation(s):
-- \dut|An9|c~combout\ = (\dut|D1|Q~regout\ & (!\input_vector~combout\(2) & (\dut|D0|Q~regout\ $ (!\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0802",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|D1|Q~regout\,
	datab => \dut|D0|Q~regout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|An9|c~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dut|An9|c~combout\,
	oe => VCC,
	padio => ww_output_vector(0));
END structure;


