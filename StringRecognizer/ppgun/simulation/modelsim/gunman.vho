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

-- DATE "03/09/2018 23:28:32"

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

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : OUT std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|cap_shft~0_combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[6]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \dut1|dut|d|An2|o~3_combout\ : std_logic;
SIGNAL \dut1|dut|d|An2|o~12_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~10_combout\ : std_logic;
SIGNAL \dut1|dut|a|An2|o~0_combout\ : std_logic;
SIGNAL \dut1|dut|b|An1|o~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~0_combout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~16_combout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~17_combout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~18_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~4_combout\ : std_logic;
SIGNAL \dut1|dut|a|An0|o~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~3_combout\ : std_logic;
SIGNAL \dut1|dut|c|An4|o~8_combout\ : std_logic;
SIGNAL \dut1|dut|a|An1|o~3_combout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~21_combout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~19_combout\ : std_logic;
SIGNAL \dut1|dut|d|D0|Q~regout\ : std_logic;
SIGNAL \dut1|dut|d|mq[0]~14_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~7_combout\ : std_logic;
SIGNAL \dut1|dut|d|D1|Q~regout\ : std_logic;
SIGNAL \dut1|dut|d|mq[2]~12_combout\ : std_logic;
SIGNAL \dut1|dut|d|D2|Q~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~6_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~8_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~1_combout\ : std_logic;
SIGNAL \dut1|dut|b|An0|o~combout\ : std_logic;
SIGNAL \dut1|dut|b|An1|o~8_combout\ : std_logic;
SIGNAL \dut1|dut|b|mq[1]~0_combout\ : std_logic;
SIGNAL \dut1|dut|b|D1|Q~regout\ : std_logic;
SIGNAL \dut1|dut|b|mq[0]~2_combout\ : std_logic;
SIGNAL \dut1|dut|b|mq[0]~3_combout\ : std_logic;
SIGNAL \dut1|dut|b|mq[0]~4_combout\ : std_logic;
SIGNAL \dut1|dut|b|D0|Q~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~4_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~5_combout\ : std_logic;
SIGNAL \dut1|dut|a|An2|o~combout\ : std_logic;
SIGNAL \dut1|dut|a|An1|o~12_combout\ : std_logic;
SIGNAL \dut1|dut|c|An4|o~9_combout\ : std_logic;
SIGNAL \dut1|dut|a|mq[0]~5_combout\ : std_logic;
SIGNAL \dut1|dut|a|D0|Q~regout\ : std_logic;
SIGNAL \dut1|dut|a|mq[1]~4_combout\ : std_logic;
SIGNAL \dut1|dut|a|D1|Q~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~1_combout\ : std_logic;
SIGNAL \dut1|dut|c|mq[0]~2_combout\ : std_logic;
SIGNAL \dut1|dut|c|mq[0]~3_combout\ : std_logic;
SIGNAL \dut1|dut|c|mq[0]~4_combout\ : std_logic;
SIGNAL \dut1|dut|c|An3|o~0_combout\ : std_logic;
SIGNAL \dut1|dut|c|mq[0]~6_combout\ : std_logic;
SIGNAL \dut1|dut|c|D0|Q~regout\ : std_logic;
SIGNAL \dut1|dut|c|mq[2]~0_combout\ : std_logic;
SIGNAL \dut1|dut|c|D2|Q~regout\ : std_logic;
SIGNAL \dut1|dut|c|mq[0]~5_combout\ : std_logic;
SIGNAL \dut1|dut|c|mq[1]~8_combout\ : std_logic;
SIGNAL \dut1|dut|c|D1|Q~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: LC_X3_Y8_N2
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X3_Y9_N8
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS((\TMS~combout\ & (((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X3_Y9_N9
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS((!\TMS~combout\ & (((\scan_instance|current_state.s_DR~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X3_Y9_N7
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X3_Y9_N3
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X3_Y9_N4
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = (\TMS~combout\) # (((\scan_instance|current_state.s_update~regout\) # (!\scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datac => \scan_instance|current_state.s_update~regout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X3_Y9_N6
\scan_instance|cap_shft~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|cap_shft~0_combout\ = (!\TRST~combout\ & (!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|cap_shft~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X3_Y8_N8
\scan_instance|In_Reg|L1[6]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[6]~1_combout\ = (\TRST~combout\) # ((\scan_instance|current_state.s_idle~regout\ & (!\TMS~combout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[6]~1_combout\);

-- Location: LC_X3_Y8_N5
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\TDI~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \TDI~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X3_Y8_N4
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X3_Y8_N6
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(5)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X3_Y8_N1
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(4))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X3_Y8_N3
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X3_Y8_N7
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X3_Y8_N9
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[6]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X3_Y9_N5
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X10_Y6_N6
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X10_Y6_N4
\scan_instance|In_Reg|PO[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(5) = LCELL((((\scan_instance|In_Reg|L2\(5) & !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(5));

-- Location: LC_X1_Y6_N2
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((((\scan_instance|In_Reg|L1\(1) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X1_Y9_N5
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(4))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X1_Y9_N2
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X1_Y9_N6
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS(((\scan_instance|In_Reg|L1\(0) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(0),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X1_Y9_N8
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(3)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X1_Y9_N3
\dut1|dut|d|An2|o~3\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|An2|o~3_combout\ = ((!\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(0) & !\scan_instance|In_Reg|L2\(3))))

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
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|An2|o~3_combout\);

-- Location: LC_X1_Y10_N3
\dut1|dut|d|An2|o~12\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|An2|o~12_combout\ = (\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(4) & (!\TRST~combout\ & \dut1|dut|d|An2|o~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \TRST~combout\,
	datad => \dut1|dut|d|An2|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|An2|o~12_combout\);

-- Location: LC_X3_Y10_N4
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X1_Y8_N5
\scan_instance|Out_Reg|mux1[0]~10\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~10_combout\ = ((!\dut1|dut|d|D1|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut1|dut|d|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~10_combout\);

-- Location: LC_X1_Y8_N0
\dut1|dut|a|An2|o~0\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|An2|o~0_combout\ = ((\TRST~combout\) # ((\scan_instance|In_Reg|L2\(4)) # (!\scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|An2|o~0_combout\);

-- Location: LC_X1_Y8_N7
\dut1|dut|b|An1|o~9\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|An1|o~9_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) & (!\dut1|dut|a|An2|o~0_combout\ & \scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \dut1|dut|a|An2|o~0_combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|An1|o~9_combout\);

-- Location: LC_X1_Y6_N6
\scan_instance|In_Reg|PO[1]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~0_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~0_combout\);

-- Location: LC_X1_Y10_N7
\dut1|dut|d|mq[0]~16\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~16_combout\ = (\dut1|dut|b|An1|o~9_combout\ & (!\dut1|dut|d|D0|Q~regout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ & \scan_instance|Out_Reg|mux1[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|b|An1|o~9_combout\,
	datab => \dut1|dut|d|D0|Q~regout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~16_combout\);

-- Location: LC_X1_Y10_N5
\dut1|dut|d|mq[0]~17\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~17_combout\ = (\scan_instance|In_Reg|L2\(6) & (\TRST~combout\ & (\dut1|dut|d|D1|Q~regout\ $ (\dut1|dut|d|D2|Q~regout\)))) # (!\scan_instance|In_Reg|L2\(6) & (\dut1|dut|d|D1|Q~regout\ $ (((\dut1|dut|d|D2|Q~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \dut1|dut|d|D1|Q~regout\,
	datac => \TRST~combout\,
	datad => \dut1|dut|d|D2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~17_combout\);

-- Location: LC_X1_Y10_N6
\dut1|dut|d|mq[0]~18\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~18_combout\ = (\dut1|dut|d|An2|o~12_combout\ & (((\dut1|dut|d|mq[2]~12_combout\ & !\dut1|dut|d|D0|Q~regout\)))) # (!\dut1|dut|d|An2|o~12_combout\ & (\dut1|dut|d|mq[0]~17_combout\ & ((\dut1|dut|d|D0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|d|An2|o~12_combout\,
	datab => \dut1|dut|d|mq[0]~17_combout\,
	datac => \dut1|dut|d|mq[2]~12_combout\,
	datad => \dut1|dut|d|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~18_combout\);

-- Location: LC_X1_Y9_N0
\scan_instance|In_Reg|PO[0]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~4_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~4_combout\);

-- Location: LC_X1_Y9_N7
\dut1|dut|a|An0|o~0\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|An0|o~0_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4)) # (\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|An0|o~0_combout\);

-- Location: LC_X1_Y9_N4
\scan_instance|In_Reg|PO[2]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~3_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~3_combout\);

-- Location: LC_X1_Y9_N1
\dut1|dut|c|An4|o~8\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|An4|o~8_combout\ = (!\scan_instance|In_Reg|PO[1]~0_combout\ & (\scan_instance|In_Reg|PO[0]~4_combout\ & (!\dut1|dut|a|An0|o~0_combout\ & \scan_instance|In_Reg|PO[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \scan_instance|In_Reg|PO[0]~4_combout\,
	datac => \dut1|dut|a|An0|o~0_combout\,
	datad => \scan_instance|In_Reg|PO[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|An4|o~8_combout\);

-- Location: LC_X1_Y6_N9
\dut1|dut|a|An1|o~3\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|An1|o~3_combout\ = ((!\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(3) & \scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|An1|o~3_combout\);

-- Location: LC_X1_Y6_N0
\dut1|dut|d|mq[0]~21\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~21_combout\ = (\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(0) & (!\TRST~combout\ & \dut1|dut|a|An1|o~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \dut1|dut|a|An1|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~21_combout\);

-- Location: LC_X1_Y10_N9
\dut1|dut|d|mq[0]~19\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~19_combout\ = (!\dut1|dut|d|D2|Q~regout\ & ((\dut1|dut|d|D0|Q~regout\ & (!\dut1|dut|c|An4|o~8_combout\)) # (!\dut1|dut|d|D0|Q~regout\ & ((\dut1|dut|d|mq[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0072",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|d|D0|Q~regout\,
	datab => \dut1|dut|c|An4|o~8_combout\,
	datac => \dut1|dut|d|mq[0]~21_combout\,
	datad => \dut1|dut|d|D2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~19_combout\);

-- Location: LC_X1_Y10_N8
\dut1|dut|d|D0|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|D0|Q~regout\ = DFFEAS((\dut1|dut|d|mq[0]~16_combout\) # ((\dut1|dut|d|mq[0]~18_combout\) # ((\dut1|dut|d|mq[0]~19_combout\ & \scan_instance|Out_Reg|mux1[0]~10_combout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|d|mq[0]~16_combout\,
	datab => \dut1|dut|d|mq[0]~18_combout\,
	datac => \dut1|dut|d|mq[0]~19_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|d|D0|Q~regout\);

-- Location: LC_X1_Y10_N0
\dut1|dut|d|mq[0]~14\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[0]~14_combout\ = (\scan_instance|Out_Reg|mux1[0]~10_combout\ & (!\dut1|dut|d|D2|Q~regout\ & ((\dut1|dut|d|D0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~10_combout\,
	datab => \dut1|dut|d|D2|Q~regout\,
	datad => \dut1|dut|d|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[0]~14_combout\);

-- Location: LC_X1_Y10_N4
\scan_instance|Out_Reg|mux1[0]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~7_combout\ = (\dut1|dut|d|An2|o~12_combout\ & (((\dut1|dut|d|D0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|d|An2|o~12_combout\,
	datad => \dut1|dut|d|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~7_combout\);

-- Location: LC_X1_Y10_N2
\dut1|dut|d|D1|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|D1|Q~regout\ = DFFEAS((\dut1|dut|d|mq[2]~12_combout\ & (((\dut1|dut|d|mq[0]~14_combout\ & \dut1|dut|c|An4|o~8_combout\)) # (!\scan_instance|Out_Reg|mux1[0]~7_combout\))) # (!\dut1|dut|d|mq[2]~12_combout\ & (\dut1|dut|d|mq[0]~14_combout\ & 
-- ((\dut1|dut|c|An4|o~8_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|d|mq[2]~12_combout\,
	datab => \dut1|dut|d|mq[0]~14_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~7_combout\,
	datad => \dut1|dut|c|An4|o~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|d|D1|Q~regout\);

-- Location: LC_X1_Y10_N1
\dut1|dut|d|mq[2]~12\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|mq[2]~12_combout\ = (\dut1|dut|d|D1|Q~regout\ & (!\dut1|dut|d|D2|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \dut1|dut|d|D1|Q~regout\,
	datac => \TRST~combout\,
	datad => \dut1|dut|d|D2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|d|mq[2]~12_combout\);

-- Location: LC_X2_Y10_N4
\dut1|dut|d|D2|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|d|D2|Q~regout\ = DFFEAS((\dut1|dut|d|An2|o~12_combout\ & ((\dut1|dut|d|D0|Q~regout\ & ((\dut1|dut|d|mq[2]~12_combout\))) # (!\dut1|dut|d|D0|Q~regout\ & (\scan_instance|Out_Reg|mux1[0]~6_combout\)))) # (!\dut1|dut|d|An2|o~12_combout\ & 
-- (\scan_instance|Out_Reg|mux1[0]~6_combout\)), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|d|An2|o~12_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~6_combout\,
	datac => \dut1|dut|d|mq[2]~12_combout\,
	datad => \dut1|dut|d|D0|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|d|D2|Q~regout\);

-- Location: LC_X2_Y10_N7
\scan_instance|Out_Reg|mux1[0]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~6_combout\ = (\dut1|dut|d|D2|Q~regout\ & (!\dut1|dut|d|D1|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|d|D2|Q~regout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut1|dut|d|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~6_combout\);

-- Location: LC_X2_Y10_N8
\scan_instance|Out_Reg|mux1[0]~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~8_combout\ = (\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|cap_shft~0_combout\ & (((\scan_instance|Out_Reg|mux1[0]~6_combout\ & \scan_instance|Out_Reg|mux1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L1\(0),
	datab => \scan_instance|Out_Reg|mux1[0]~6_combout\,
	datac => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~8_combout\);

-- Location: LC_X3_Y10_N2
\scan_instance|In_Reg|PO[6]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~1_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~1_combout\);

-- Location: LC_X2_Y10_N9
\dut1|dut|b|An0|o\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|An0|o~combout\ = (\scan_instance|In_Reg|PO[1]~0_combout\ & (!\dut1|dut|a|An0|o~0_combout\ & (!\scan_instance|In_Reg|PO[2]~3_combout\ & !\scan_instance|In_Reg|PO[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \dut1|dut|a|An0|o~0_combout\,
	datac => \scan_instance|In_Reg|PO[2]~3_combout\,
	datad => \scan_instance|In_Reg|PO[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|An0|o~combout\);

-- Location: LC_X3_Y10_N5
\dut1|dut|b|An1|o~8\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|An1|o~8_combout\ = (!\dut1|dut|a|An2|o~0_combout\ & (\scan_instance|In_Reg|PO[2]~3_combout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ & \scan_instance|In_Reg|PO[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|a|An2|o~0_combout\,
	datab => \scan_instance|In_Reg|PO[2]~3_combout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \scan_instance|In_Reg|PO[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|An1|o~8_combout\);

-- Location: LC_X3_Y10_N0
\dut1|dut|b|mq[1]~0\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|mq[1]~0_combout\ = (!\scan_instance|In_Reg|PO[6]~1_combout\ & (\dut1|dut|b|D1|Q~regout\ & ((!\dut1|dut|b|An0|o~combout\) # (!\dut1|dut|b|D0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~1_combout\,
	datab => \dut1|dut|b|D0|Q~regout\,
	datac => \dut1|dut|b|An0|o~combout\,
	datad => \dut1|dut|b|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|mq[1]~0_combout\);

-- Location: LC_X3_Y10_N8
\dut1|dut|b|D1|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|D1|Q~regout\ = DFFEAS((\dut1|dut|b|mq[1]~0_combout\) # ((\dut1|dut|b|An1|o~8_combout\ & (\scan_instance|Out_Reg|mux1[0]~4_combout\ & !\dut1|dut|b|D1|Q~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|b|An1|o~8_combout\,
	datab => \dut1|dut|b|mq[1]~0_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~4_combout\,
	datad => \dut1|dut|b|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|b|D1|Q~regout\);

-- Location: LC_X3_Y10_N3
\dut1|dut|b|mq[0]~2\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|mq[0]~2_combout\ = (!\scan_instance|In_Reg|PO[6]~1_combout\ & ((\dut1|dut|b|D0|Q~regout\ & (!\dut1|dut|b|An0|o~combout\ & \dut1|dut|b|D1|Q~regout\)) # (!\dut1|dut|b|D0|Q~regout\ & (\dut1|dut|b|An0|o~combout\ & !\dut1|dut|b|D1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|b|D0|Q~regout\,
	datab => \scan_instance|In_Reg|PO[6]~1_combout\,
	datac => \dut1|dut|b|An0|o~combout\,
	datad => \dut1|dut|b|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|mq[0]~2_combout\);

-- Location: LC_X3_Y10_N6
\dut1|dut|b|mq[0]~3\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|mq[0]~3_combout\ = (\scan_instance|Out_Reg|mux1[0]~4_combout\ & (!\dut1|dut|b|D1|Q~regout\ & ((!\dut1|dut|b|An1|o~9_combout\) # (!\scan_instance|In_Reg|PO[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \dut1|dut|b|An1|o~9_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~4_combout\,
	datad => \dut1|dut|b|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|mq[0]~3_combout\);

-- Location: LC_X3_Y10_N1
\dut1|dut|b|mq[0]~4\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|mq[0]~4_combout\ = (\dut1|dut|b|An1|o~9_combout\ & (!\scan_instance|In_Reg|PO[6]~1_combout\ & (!\scan_instance|In_Reg|PO[1]~0_combout\ & !\dut1|dut|b|D0|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|b|An1|o~9_combout\,
	datab => \scan_instance|In_Reg|PO[6]~1_combout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \dut1|dut|b|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|b|mq[0]~4_combout\);

-- Location: LC_X3_Y10_N9
\dut1|dut|b|D0|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|b|D0|Q~regout\ = DFFEAS((\dut1|dut|b|mq[0]~2_combout\) # ((\dut1|dut|b|mq[0]~3_combout\) # ((\dut1|dut|b|mq[0]~4_combout\ & \dut1|dut|b|D1|Q~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|b|mq[0]~2_combout\,
	datab => \dut1|dut|b|mq[0]~3_combout\,
	datac => \dut1|dut|b|mq[0]~4_combout\,
	datad => \dut1|dut|b|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|b|D0|Q~regout\);

-- Location: LC_X3_Y10_N7
\scan_instance|Out_Reg|mux1[0]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~4_combout\ = ((\dut1|dut|b|D0|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datad => \dut1|dut|b|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~4_combout\);

-- Location: LC_X2_Y10_N2
\scan_instance|Out_Reg|mux1[0]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~5_combout\ = (\scan_instance|Out_Reg|mux1[0]~4_combout\ & (\dut1|dut|b|D1|Q~regout\ & (!\scan_instance|cap_shft~0_combout\ & \dut1|dut|b|An0|o~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|mux1[0]~4_combout\,
	datab => \dut1|dut|b|D1|Q~regout\,
	datac => \scan_instance|cap_shft~0_combout\,
	datad => \dut1|dut|b|An0|o~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~5_combout\);

-- Location: LC_X2_Y10_N5
\dut1|dut|a|An2|o\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|An2|o~combout\ = (!\dut1|dut|a|An2|o~0_combout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ & (\scan_instance|In_Reg|PO[2]~3_combout\ & !\scan_instance|In_Reg|PO[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|a|An2|o~0_combout\,
	datab => \scan_instance|In_Reg|PO[1]~0_combout\,
	datac => \scan_instance|In_Reg|PO[2]~3_combout\,
	datad => \scan_instance|In_Reg|PO[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|An2|o~combout\);

-- Location: LC_X4_Y10_N5
\dut1|dut|a|An1|o~12\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|An1|o~12_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(2) & \dut1|dut|a|An1|o~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut1|dut|a|An1|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|An1|o~12_combout\);

-- Location: LC_X4_Y10_N6
\dut1|dut|c|An4|o~9\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|An4|o~9_combout\ = (!\TRST~combout\ & (!\dut1|dut|a|An0|o~0_combout\ & (\scan_instance|In_Reg|L2\(2) & \scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut1|dut|a|An0|o~0_combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|An4|o~9_combout\);

-- Location: LC_X4_Y10_N8
\dut1|dut|a|mq[0]~5\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|mq[0]~5_combout\ = (\dut1|dut|a|D0|Q~regout\ & (!\dut1|dut|a|An1|o~12_combout\)) # (!\dut1|dut|a|D0|Q~regout\ & (((\dut1|dut|c|An4|o~9_combout\ & \scan_instance|In_Reg|PO[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|a|An1|o~12_combout\,
	datab => \dut1|dut|c|An4|o~9_combout\,
	datac => \scan_instance|In_Reg|PO[1]~0_combout\,
	datad => \dut1|dut|a|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|mq[0]~5_combout\);

-- Location: LC_X4_Y10_N9
\dut1|dut|a|D0|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|D0|Q~regout\ = DFFEAS((\dut1|dut|a|mq[0]~5_combout\ & (!\dut1|dut|a|D1|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6))))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \TRST~combout\,
	datab => \dut1|dut|a|mq[0]~5_combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut1|dut|a|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|a|D0|Q~regout\);

-- Location: LC_X4_Y10_N0
\dut1|dut|a|mq[1]~4\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|mq[1]~4_combout\ = (\dut1|dut|a|D1|Q~regout\ & (!\dut1|dut|a|An2|o~combout\ & ((!\dut1|dut|a|D0|Q~regout\)))) # (!\dut1|dut|a|D1|Q~regout\ & (((\dut1|dut|a|An1|o~12_combout\ & \dut1|dut|a|D0|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|a|An2|o~combout\,
	datab => \dut1|dut|a|An1|o~12_combout\,
	datac => \dut1|dut|a|D1|Q~regout\,
	datad => \dut1|dut|a|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|a|mq[1]~4_combout\);

-- Location: LC_X4_Y10_N4
\dut1|dut|a|D1|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|a|D1|Q~regout\ = DFFEAS((\dut1|dut|a|mq[1]~4_combout\ & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(6))))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \TRST~combout\,
	datab => \dut1|dut|a|mq[1]~4_combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|a|D1|Q~regout\);

-- Location: LC_X4_Y10_N7
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = (((\dut1|dut|a|D1|Q~regout\ & !\dut1|dut|a|D0|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut1|dut|a|D1|Q~regout\,
	datad => \dut1|dut|a|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X2_Y10_N6
\scan_instance|Out_Reg|mux1[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~1_combout\ = (!\scan_instance|In_Reg|PO[6]~1_combout\ & (!\scan_instance|cap_shft~0_combout\ & (\dut1|dut|a|An2|o~combout\ & \scan_instance|Out_Reg|mux1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~1_combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \dut1|dut|a|An2|o~combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~1_combout\);

-- Location: LC_X2_Y9_N3
\dut1|dut|c|mq[0]~2\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[0]~2_combout\ = ((!\dut1|dut|c|D2|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut1|dut|c|D2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[0]~2_combout\);

-- Location: LC_X2_Y9_N5
\dut1|dut|c|mq[0]~3\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[0]~3_combout\ = (\dut1|dut|c|mq[0]~2_combout\ & (!\scan_instance|In_Reg|PO[2]~3_combout\ & (!\dut1|dut|a|An2|o~0_combout\ & !\dut1|dut|c|D0|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|c|mq[0]~2_combout\,
	datab => \scan_instance|In_Reg|PO[2]~3_combout\,
	datac => \dut1|dut|a|An2|o~0_combout\,
	datad => \dut1|dut|c|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[0]~3_combout\);

-- Location: LC_X2_Y9_N7
\dut1|dut|c|mq[0]~4\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[0]~4_combout\ = (\dut1|dut|c|mq[0]~3_combout\ & (\scan_instance|In_Reg|PO[0]~4_combout\ & (\scan_instance|In_Reg|PO[1]~0_combout\ $ (\dut1|dut|c|D1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~0_combout\,
	datab => \dut1|dut|c|D1|Q~regout\,
	datac => \dut1|dut|c|mq[0]~3_combout\,
	datad => \scan_instance|In_Reg|PO[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[0]~4_combout\);

-- Location: LC_X1_Y9_N9
\dut1|dut|c|An3|o~0\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|An3|o~0_combout\ = (!\scan_instance|In_Reg|PO[0]~4_combout\ & (\scan_instance|In_Reg|PO[2]~3_combout\ & (!\dut1|dut|a|An0|o~0_combout\ & \scan_instance|In_Reg|PO[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~4_combout\,
	datab => \scan_instance|In_Reg|PO[2]~3_combout\,
	datac => \dut1|dut|a|An0|o~0_combout\,
	datad => \scan_instance|In_Reg|PO[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|An3|o~0_combout\);

-- Location: LC_X2_Y9_N0
\dut1|dut|c|mq[0]~6\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[0]~6_combout\ = (\dut1|dut|c|mq[0]~4_combout\) # ((\dut1|dut|c|D1|Q~regout\ & (\dut1|dut|c|mq[0]~5_combout\ & !\dut1|dut|c|An3|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|c|D1|Q~regout\,
	datab => \dut1|dut|c|mq[0]~5_combout\,
	datac => \dut1|dut|c|mq[0]~4_combout\,
	datad => \dut1|dut|c|An3|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[0]~6_combout\);

-- Location: LC_X2_Y9_N4
\dut1|dut|c|D0|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|D0|Q~regout\ = DFFEAS((\dut1|dut|c|mq[0]~6_combout\) # ((\dut1|dut|c|mq[0]~5_combout\ & (!\dut1|dut|a|An2|o~combout\ & !\dut1|dut|c|D1|Q~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|c|mq[0]~5_combout\,
	datab => \dut1|dut|c|mq[0]~6_combout\,
	datac => \dut1|dut|a|An2|o~combout\,
	datad => \dut1|dut|c|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|c|D0|Q~regout\);

-- Location: LC_X2_Y9_N6
\dut1|dut|c|mq[2]~0\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[2]~0_combout\ = (\dut1|dut|c|D0|Q~regout\ & (\dut1|dut|c|D1|Q~regout\ & (!\dut1|dut|c|D2|Q~regout\ & \dut1|dut|c|An3|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|c|D0|Q~regout\,
	datab => \dut1|dut|c|D1|Q~regout\,
	datac => \dut1|dut|c|D2|Q~regout\,
	datad => \dut1|dut|c|An3|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[2]~0_combout\);

-- Location: LC_X2_Y9_N8
\dut1|dut|c|D2|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|D2|Q~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[6]~1_combout\ & ((\dut1|dut|c|mq[2]~0_combout\) # ((!\dut1|dut|c|An4|o~8_combout\ & \scan_instance|Out_Reg|mux1[0]~2_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4544",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \scan_instance|In_Reg|PO[6]~1_combout\,
	datab => \dut1|dut|c|mq[2]~0_combout\,
	datac => \dut1|dut|c|An4|o~8_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|c|D2|Q~regout\);

-- Location: LC_X3_Y9_N0
\dut1|dut|c|mq[0]~5\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[0]~5_combout\ = (!\dut1|dut|c|D2|Q~regout\ & (\dut1|dut|c|D0|Q~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \dut1|dut|c|D2|Q~regout\,
	datad => \dut1|dut|c|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[0]~5_combout\);

-- Location: LC_X2_Y9_N1
\dut1|dut|c|mq[1]~8\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|mq[1]~8_combout\ = (\dut1|dut|c|mq[0]~2_combout\ & (\dut1|dut|c|D1|Q~regout\ & ((!\dut1|dut|c|D0|Q~regout\) # (!\dut1|dut|c|An3|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut1|dut|c|mq[0]~2_combout\,
	datab => \dut1|dut|c|An3|o~0_combout\,
	datac => \dut1|dut|c|D0|Q~regout\,
	datad => \dut1|dut|c|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut1|dut|c|mq[1]~8_combout\);

-- Location: LC_X2_Y9_N9
\dut1|dut|c|D1|Q\ : maxv_lcell
-- Equation(s):
-- \dut1|dut|c|D1|Q~regout\ = DFFEAS((\dut1|dut|c|mq[1]~8_combout\) # ((\dut1|dut|c|mq[0]~5_combout\ & (\dut1|dut|a|An2|o~combout\ & !\dut1|dut|c|D1|Q~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(5),
	dataa => \dut1|dut|c|mq[0]~5_combout\,
	datab => \dut1|dut|c|mq[1]~8_combout\,
	datac => \dut1|dut|a|An2|o~combout\,
	datad => \dut1|dut|c|D1|Q~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut1|dut|c|D1|Q~regout\);

-- Location: LC_X2_Y9_N2
\scan_instance|Out_Reg|mux1[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~2_combout\ = ((!\dut1|dut|c|D1|Q~regout\ & (!\dut1|dut|c|D0|Q~regout\ & \dut1|dut|c|D2|Q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut1|dut|c|D1|Q~regout\,
	datac => \dut1|dut|c|D0|Q~regout\,
	datad => \dut1|dut|c|D2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~2_combout\);

-- Location: LC_X2_Y10_N0
\scan_instance|Out_Reg|mux1[0]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~3_combout\ = (!\scan_instance|In_Reg|PO[6]~1_combout\ & (!\scan_instance|cap_shft~0_combout\ & (\dut1|dut|c|An4|o~8_combout\ & \scan_instance|Out_Reg|mux1[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[6]~1_combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \dut1|dut|c|An4|o~8_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~3_combout\);

-- Location: LC_X2_Y10_N1
\scan_instance|Out_Reg|mux1[0]~9\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~9_combout\ = (\scan_instance|Out_Reg|mux1[0]~8_combout\) # ((\scan_instance|Out_Reg|mux1[0]~5_combout\) # ((\scan_instance|Out_Reg|mux1[0]~1_combout\) # (\scan_instance|Out_Reg|mux1[0]~3_combout\)))

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
	dataa => \scan_instance|Out_Reg|mux1[0]~8_combout\,
	datab => \scan_instance|Out_Reg|mux1[0]~5_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~1_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~9_combout\);

-- Location: LC_X2_Y10_N3
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & ((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~9_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(0),
	datab => \scan_instance|Selector0~0_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~9_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


