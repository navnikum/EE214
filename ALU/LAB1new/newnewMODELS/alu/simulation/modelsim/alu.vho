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

-- DATE "02/19/2018 19:25:43"

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
	TDO : BUFFER std_logic;
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
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~16_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~19_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~26_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1d|o~1_combout\ : std_logic;
SIGNAL \dut|c|MUX2_2d|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1d|o~0_combout\ : std_logic;
SIGNAL \dut|c|p~0_combout\ : std_logic;
SIGNAL \dut|c|p~combout\ : std_logic;
SIGNAL \dut|c|MUX2_1d|o~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~50_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1f|o~2_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1f|o~3_combout\ : std_logic;
SIGNAL \dut|d|FD_1|bout~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~6_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[14]~7_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1g|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_0h|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_0h|o~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[17]~3_combout\ : std_logic;
SIGNAL \dut|Z[7]~2_combout\ : std_logic;
SIGNAL \dut|b|MUX2_2c|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_0a|o~6_combout\ : std_logic;
SIGNAL \dut|b|MUX2_0a|o~3_combout\ : std_logic;
SIGNAL \dut|b|MUX2_2d|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1b|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1b|o~1_combout\ : std_logic;
SIGNAL \dut|b|MUX2_0a|o~2_combout\ : std_logic;
SIGNAL \dut|b|MUX2_0a|o~4_combout\ : std_logic;
SIGNAL \dut|b|MUX2_0a|o~5_combout\ : std_logic;
SIGNAL \dut|Z[7]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[16]~2_combout\ : std_logic;
SIGNAL \dut|a|HA_1|c~combout\ : std_logic;
SIGNAL \dut|a|FA_1|cout~0_combout\ : std_logic;
SIGNAL \dut|a|FA_2|cout~0_combout\ : std_logic;
SIGNAL \dut|a|FA_3|cout~0_combout\ : std_logic;
SIGNAL \dut|a|FA_4|cout~0_combout\ : std_logic;
SIGNAL \dut|a|FA_5|cout~0_combout\ : std_logic;
SIGNAL \dut|a|FA_6|cout~0_combout\ : std_logic;
SIGNAL \dut|d|FD_1|bout~2_combout\ : std_logic;
SIGNAL \dut|d|FD_1|bout~combout\ : std_logic;
SIGNAL \dut|d|FD_2|bout~combout\ : std_logic;
SIGNAL \dut|d|FD_3|bout~combout\ : std_logic;
SIGNAL \dut|d|FD_4|bout~combout\ : std_logic;
SIGNAL \dut|d|FD_5|bout~combout\ : std_logic;
SIGNAL \dut|d|FD_6|bout~combout\ : std_logic;
SIGNAL \dut|Z[7]~4_combout\ : std_logic;
SIGNAL \dut|Z[7]~5_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~17_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~44_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~24_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1c|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1c|o~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~45_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~46_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~27_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~47_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~48_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~49_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1d|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1d|o~1_combout\ : std_logic;
SIGNAL \dut|a|FA_5|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~40_combout\ : std_logic;
SIGNAL \dut|d|FD_5|d~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~41_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~42_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1e|o~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~52_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1f|o~4_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1e|o~1_combout\ : std_logic;
SIGNAL \dut|d|FD_4|d~combout\ : std_logic;
SIGNAL \dut|a|FA_4|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~37_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~38_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~39_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1f|o~0_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1e|o~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~51_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~20_combout\ : std_logic;
SIGNAL \dut|d|FD_3|d~combout\ : std_logic;
SIGNAL \dut|c|MUX2_1e|o~0_combout\ : std_logic;
SIGNAL \dut|a|FA_3|s~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~34_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~35_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~36_combout\ : std_logic;
SIGNAL \dut|c|MUX2_2c|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1c|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1c|o~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~29_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~30_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[9]~4_combout\ : std_logic;
SIGNAL \dut|b|MUX2_1g|o~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~28_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~31_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~32_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~18_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[8]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~5_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~21_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~53_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1b|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_1b|o~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~22_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~23_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~25_combout\ : std_logic;
SIGNAL \dut|a|HA_1|s~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[12]~1_combout\ : std_logic;
SIGNAL \dut|c|MUX2_0a|o~0_combout\ : std_logic;
SIGNAL \dut|c|MUX2_0a|o~1_combout\ : std_logic;
SIGNAL \dut|Z[0]~0_combout\ : std_logic;
SIGNAL \dut|Z[0]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

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

-- Location: LC_X1_Y8_N0
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = ((!\TMS~combout\ & ((C1_current_state.s_shift) # (\scan_instance|current_state.s_capture~regout\))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X1_Y8_N4
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X1_Y8_N9
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\TMS~combout\) # (\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_update~regout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X1_Y8_N8
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # ((!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_DR~regout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X1_Y8_N2
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

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

-- Location: LC_X1_Y8_N3
\scan_instance|Out_Reg|L1~16\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~16_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (!\scan_instance|current_state.s_update~regout\ & \scan_instance|current_state.s_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_update~regout\,
	datad => \scan_instance|current_state.s_idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~16_combout\);

-- Location: LC_X5_Y9_N1
\scan_instance|In_Reg|L1[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(17) = DFFEAS(((\TDI~combout\ & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TDI~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(17));

-- Location: LC_X5_Y7_N1
\scan_instance|In_Reg|L1[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(16) = DFFEAS(((\scan_instance|In_Reg|L1\(17) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(17),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(16));

-- Location: LC_X4_Y7_N7
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS((\scan_instance|Selector3~0\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L1\(16))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(16),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X4_Y7_N9
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS((\scan_instance|Selector3~0\ & (((\scan_instance|In_Reg|L1\(15) & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(15),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X2_Y7_N8
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(14) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(14),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X3_Y5_N1
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(13)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X3_Y5_N4
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS(((\scan_instance|In_Reg|L1\(12) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(12),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X3_Y5_N2
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS((\scan_instance|In_Reg|L1\(11) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(11),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X3_Y5_N6
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS(((!\TRST~combout\ & (\scan_instance|Selector3~0\ & \scan_instance|In_Reg|L1\(10)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|In_Reg|L1\(10),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X5_Y9_N4
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS(((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(9) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(9),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X5_Y9_N6
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(8) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(8),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X5_Y9_N8
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((\scan_instance|In_Reg|L1\(7) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(7),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X5_Y9_N0
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|In_Reg|L1\(6) & (\scan_instance|Selector3~0\ & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(6),
	datab => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X5_Y9_N5
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS(((\scan_instance|In_Reg|L1\(5) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(5),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X5_Y9_N9
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(4) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X5_Y9_N7
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS(((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(3) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(3),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X2_Y7_N5
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS(((\scan_instance|Selector3~0\ & (!\TRST~combout\ & \scan_instance|In_Reg|L1\(2)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X1_Y9_N1
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|Selector3~0\ & (((!\TRST~combout\ & \scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X1_Y8_N7
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
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
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X2_Y9_N5
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(0)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X5_Y7_N2
\scan_instance|In_Reg|L2[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(16) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(16)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(16),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(16));

-- Location: LC_X5_Y7_N8
\scan_instance|In_Reg|L2[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(17) = DFFEAS(((\scan_instance|In_Reg|L1\(17) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(17),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(17));

-- Location: LC_X4_Y7_N1
\scan_instance|Out_Reg|L1[5]~19\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~19_combout\ = ((!\scan_instance|In_Reg|L2\(16) & (!\TRST~combout\ & \scan_instance|In_Reg|L2\(17))))

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
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~19_combout\);

-- Location: LC_X4_Y7_N4
\scan_instance|Out_Reg|L1[5]~26\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~26_combout\ = (!\TRST~combout\ & ((\scan_instance|Selector3~0\) # ((\scan_instance|In_Reg|L2\(0) & \scan_instance|Out_Reg|L1[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|Out_Reg|L1[5]~19_combout\,
	datad => \scan_instance|Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~26_combout\);

-- Location: LC_X2_Y9_N6
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(1)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X3_Y7_N6
\dut|c|MUX2_1d|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1d|o~1_combout\ = (((!\TRST~combout\ & !\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1d|o~1_combout\);

-- Location: LC_X2_Y7_N6
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X3_Y7_N9
\scan_instance|In_Reg|L2[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(15) = DFFEAS((\scan_instance|In_Reg|L1\(15) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(15),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(15));

-- Location: LC_X2_Y6_N0
\scan_instance|In_Reg|L2[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(11) = DFFEAS((\scan_instance|In_Reg|L1\(11) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(11),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(11));

-- Location: LC_X2_Y7_N7
\dut|c|MUX2_2d|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_2d|o~0_combout\ = (\scan_instance|In_Reg|L2\(2) & ((\TRST~combout\ & ((\scan_instance|In_Reg|L2\(11)))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(15))))) # (!\scan_instance|In_Reg|L2\(2) & (((\scan_instance|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_2d|o~0_combout\);

-- Location: LC_X2_Y7_N4
\scan_instance|In_Reg|L2[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(13) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(13))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(13),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(13));

-- Location: LC_X3_Y7_N4
\dut|c|MUX2_1d|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1d|o~0_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(13) & \scan_instance|In_Reg|L2\(1))))

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
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1d|o~0_combout\);

-- Location: LC_X5_Y9_N3
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((((\scan_instance|In_Reg|L1\(4) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X4_Y8_N0
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS((((\scan_instance|In_Reg|L1\(7) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(7),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X4_Y8_N4
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

-- Location: LC_X4_Y8_N8
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((((\scan_instance|In_Reg|L1\(5) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(5),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X4_Y8_N5
\dut|c|p~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|p~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(7)) # ((\scan_instance|In_Reg|L2\(6)) # (\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5554",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|p~0_combout\);

-- Location: LC_X5_Y9_N2
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((((\scan_instance|In_Reg|L1\(3) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(3),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X4_Y8_N6
\dut|c|p\ : maxv_lcell
-- Equation(s):
-- \dut|c|p~combout\ = (\dut|c|p~0_combout\) # ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4)) # (\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \dut|c|p~0_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|p~combout\);

-- Location: LC_X3_Y7_N2
\dut|c|MUX2_1d|o~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1d|o~2_combout\ = (!\dut|c|p~combout\ & ((\dut|c|MUX2_1d|o~0_combout\) # ((\dut|c|MUX2_1d|o~1_combout\ & \dut|c|MUX2_2d|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|MUX2_1d|o~1_combout\,
	datab => \dut|c|MUX2_2d|o~0_combout\,
	datac => \dut|c|MUX2_1d|o~0_combout\,
	datad => \dut|c|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1d|o~2_combout\);

-- Location: LC_X4_Y7_N0
\scan_instance|Out_Reg|L1[5]~50\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~50_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(17) & (!\scan_instance|In_Reg|L2\(16) & !\scan_instance|Selector3~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~50_combout\);

-- Location: LC_X3_Y7_N5
\dut|c|MUX2_1f|o~2\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1f|o~2_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(13))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(15))) # (!\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \scan_instance|In_Reg|L2\(13),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1f|o~2_combout\);

-- Location: LC_X4_Y9_N2
\dut|c|MUX2_1f|o~3\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1f|o~3_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & (!\dut|c|p~combout\ & \dut|c|MUX2_1f|o~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \dut|c|p~combout\,
	datad => \dut|c|MUX2_1f|o~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1f|o~3_combout\);

-- Location: LC_X3_Y6_N5
\dut|d|FD_1|bout~3\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_1|bout~3_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_1|bout~3_combout\);

-- Location: LC_X2_Y6_N9
\scan_instance|In_Reg|PO[2]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~6_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2))))

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
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~6_combout\);

-- Location: LC_X2_Y8_N8
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(14))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X2_Y6_N4
\scan_instance|In_Reg|PO[14]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[14]~7_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[14]~7_combout\);

-- Location: LC_X3_Y6_N4
\dut|c|MUX2_1g|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1g|o~0_combout\ = (!\dut|d|FD_1|bout~3_combout\ & (!\dut|c|p~combout\ & (!\scan_instance|In_Reg|PO[2]~6_combout\ & \scan_instance|In_Reg|PO[14]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|d|FD_1|bout~3_combout\,
	datab => \dut|c|p~combout\,
	datac => \scan_instance|In_Reg|PO[2]~6_combout\,
	datad => \scan_instance|In_Reg|PO[14]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1g|o~0_combout\);

-- Location: LC_X2_Y8_N9
\dut|c|MUX2_0h|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_0h|o~0_combout\ = (!\scan_instance|In_Reg|L2\(0) & (((!\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_0h|o~0_combout\);

-- Location: LC_X2_Y8_N7
\dut|c|MUX2_0h|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_0h|o~1_combout\ = (!\TRST~combout\ & (\dut|c|MUX2_0h|o~0_combout\ & (\scan_instance|In_Reg|L2\(15) & !\dut|c|p~combout\)))

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
	dataa => \TRST~combout\,
	datab => \dut|c|MUX2_0h|o~0_combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \dut|c|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_0h|o~1_combout\);

-- Location: LC_X1_Y8_N1
\scan_instance|In_Reg|PO[17]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[17]~3_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[17]~3_combout\);

-- Location: LC_X2_Y8_N2
\dut|Z[7]~2\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~2_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(15) $ (\scan_instance|In_Reg|L2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \scan_instance|In_Reg|L2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~2_combout\);

-- Location: LC_X2_Y9_N9
\scan_instance|In_Reg|L2[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(9) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(9)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(9),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(9));

-- Location: LC_X2_Y7_N2
\dut|b|MUX2_2c|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_2c|o~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(9)))) # (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_2c|o~0_combout\);

-- Location: LC_X2_Y7_N1
\dut|b|MUX2_0a|o~6\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_0a|o~6_combout\ = (\TRST~combout\) # ((\dut|b|MUX2_2c|o~0_combout\ & ((\scan_instance|In_Reg|L2\(0)) # (\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut|b|MUX2_2c|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_0a|o~6_combout\);

-- Location: LC_X2_Y8_N0
\dut|b|MUX2_0a|o~3\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_0a|o~3_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)) # (\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_0a|o~3_combout\);

-- Location: LC_X2_Y6_N2
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(12)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(12),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X3_Y9_N3
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS((((\scan_instance|In_Reg|L1\(8) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datac => \scan_instance|In_Reg|L1\(8),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X2_Y6_N5
\dut|b|MUX2_2d|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_2d|o~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(12))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_2d|o~0_combout\);

-- Location: LC_X4_Y9_N1
\scan_instance|In_Reg|L2[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(10) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(10)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(10),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(10));

-- Location: LC_X2_Y6_N7
\dut|b|MUX2_1b|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1b|o~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(14))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(10))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1b|o~0_combout\);

-- Location: LC_X2_Y6_N8
\dut|b|MUX2_1b|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1b|o~1_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\dut|b|MUX2_2d|o~0_combout\)) # (!\scan_instance|In_Reg|L2\(1) & ((\dut|b|MUX2_1b|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut|b|MUX2_2d|o~0_combout\,
	datad => \dut|b|MUX2_1b|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1b|o~1_combout\);

-- Location: LC_X2_Y8_N6
\dut|b|MUX2_0a|o~2\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_0a|o~2_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0)) # ((!\scan_instance|In_Reg|L2\(1) & \scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_0a|o~2_combout\);

-- Location: LC_X1_Y9_N2
\dut|b|MUX2_0a|o~4\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_0a|o~4_combout\ = (\dut|b|MUX2_0a|o~2_combout\ & ((\scan_instance|In_Reg|L2\(11)) # ((\dut|b|MUX2_0a|o~3_combout\)))) # (!\dut|b|MUX2_0a|o~2_combout\ & (((\scan_instance|In_Reg|L2\(15) & !\dut|b|MUX2_0a|o~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \dut|b|MUX2_0a|o~2_combout\,
	datac => \scan_instance|In_Reg|L2\(15),
	datad => \dut|b|MUX2_0a|o~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_0a|o~4_combout\);

-- Location: LC_X1_Y9_N3
\dut|b|MUX2_0a|o~5\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_0a|o~5_combout\ = (\dut|b|MUX2_0a|o~3_combout\ & ((\dut|b|MUX2_0a|o~4_combout\ & ((\dut|b|MUX2_1b|o~1_combout\))) # (!\dut|b|MUX2_0a|o~4_combout\ & (\dut|b|MUX2_0a|o~6_combout\)))) # (!\dut|b|MUX2_0a|o~3_combout\ & 
-- (!\dut|b|MUX2_0a|o~6_combout\ & ((\dut|b|MUX2_0a|o~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d188",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|MUX2_0a|o~6_combout\,
	datab => \dut|b|MUX2_0a|o~3_combout\,
	datac => \dut|b|MUX2_1b|o~1_combout\,
	datad => \dut|b|MUX2_0a|o~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_0a|o~5_combout\);

-- Location: LC_X1_Y9_N4
\dut|Z[7]~3\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~3_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (!\dut|c|p~combout\ & ((\dut|b|MUX2_0a|o~5_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\dut|Z[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|p~combout\,
	datab => \dut|Z[7]~2_combout\,
	datac => \scan_instance|In_Reg|PO[17]~3_combout\,
	datad => \dut|b|MUX2_0a|o~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~3_combout\);

-- Location: LC_X4_Y7_N5
\scan_instance|In_Reg|PO[16]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[16]~2_combout\ = ((\scan_instance|In_Reg|L2\(16) & (!\TRST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[16]~2_combout\);

-- Location: LC_X3_Y9_N4
\dut|a|HA_1|c\ : maxv_lcell
-- Equation(s):
-- \dut|a|HA_1|c~combout\ = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(0)))) # (!\scan_instance|In_Reg|L2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|HA_1|c~combout\);

-- Location: LC_X3_Y9_N5
\dut|a|FA_1|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_1|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(9)) # (!\dut|a|HA_1|c~combout\))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(9) & !\dut|a|HA_1|c~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \dut|a|HA_1|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_1|cout~0_combout\);

-- Location: LC_X3_Y9_N6
\dut|a|FA_2|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_2|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(10) & ((\scan_instance|In_Reg|L2\(2)) # (\dut|a|FA_1|cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(10) & (\scan_instance|In_Reg|L2\(2) & \dut|a|FA_1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|a|FA_1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_2|cout~0_combout\);

-- Location: LC_X3_Y9_N7
\dut|a|FA_3|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_3|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(11) & ((\scan_instance|In_Reg|L2\(3)) # (\dut|a|FA_2|cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(11) & (\scan_instance|In_Reg|L2\(3) & \dut|a|FA_2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|a|FA_2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_3|cout~0_combout\);

-- Location: LC_X3_Y9_N8
\dut|a|FA_4|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_4|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4) & ((\scan_instance|In_Reg|L2\(12)) # (\dut|a|FA_3|cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(4) & (\scan_instance|In_Reg|L2\(12) & \dut|a|FA_3|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut|a|FA_3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_4|cout~0_combout\);

-- Location: LC_X3_Y9_N9
\dut|a|FA_5|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_5|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13) & ((\scan_instance|In_Reg|L2\(5)) # (\dut|a|FA_4|cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(13) & (\scan_instance|In_Reg|L2\(5) & \dut|a|FA_4|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|a|FA_4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_5|cout~0_combout\);

-- Location: LC_X1_Y9_N0
\dut|a|FA_6|cout~0\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_6|cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(14) & ((\scan_instance|In_Reg|L2\(6)) # (\dut|a|FA_5|cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(14) & (\scan_instance|In_Reg|L2\(6) & \dut|a|FA_5|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut|a|FA_5|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_6|cout~0_combout\);

-- Location: LC_X2_Y9_N3
\dut|d|FD_1|bout~2\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_1|bout~2_combout\ = (\scan_instance|In_Reg|L2\(9) & (\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(1) & !\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|L2\(9) & ((\scan_instance|In_Reg|L2\(1)) # 
-- ((\scan_instance|In_Reg|L2\(0) & !\scan_instance|In_Reg|L2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30b2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_1|bout~2_combout\);

-- Location: LC_X2_Y9_N0
\dut|d|FD_1|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_1|bout~combout\ = (((!\TRST~combout\ & \dut|d|FD_1|bout~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \dut|d|FD_1|bout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_1|bout~combout\);

-- Location: LC_X2_Y9_N1
\dut|d|FD_2|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_2|bout~combout\ = (\scan_instance|In_Reg|L2\(10) & (\dut|d|FD_1|bout~combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(2))))) # (!\scan_instance|In_Reg|L2\(10) & ((\dut|d|FD_1|bout~combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|d|FD_1|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_2|bout~combout\);

-- Location: LC_X2_Y9_N2
\dut|d|FD_3|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_3|bout~combout\ = (\scan_instance|In_Reg|L2\(3) & ((\dut|d|FD_2|bout~combout\) # ((!\TRST~combout\ & !\scan_instance|In_Reg|L2\(11))))) # (!\scan_instance|In_Reg|L2\(3) & (\dut|d|FD_2|bout~combout\ & ((\TRST~combout\) # 
-- (!\scan_instance|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \dut|d|FD_2|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_3|bout~combout\);

-- Location: LC_X2_Y9_N7
\dut|d|FD_4|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_4|bout~combout\ = (\scan_instance|In_Reg|L2\(4) & ((\dut|d|FD_3|bout~combout\) # ((!\scan_instance|In_Reg|L2\(12) & !\TRST~combout\)))) # (!\scan_instance|In_Reg|L2\(4) & (\dut|d|FD_3|bout~combout\ & ((\TRST~combout\) # 
-- (!\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \dut|d|FD_3|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_4|bout~combout\);

-- Location: LC_X2_Y9_N8
\dut|d|FD_5|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_5|bout~combout\ = (\scan_instance|In_Reg|L2\(13) & (\dut|d|FD_4|bout~combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(5))))) # (!\scan_instance|In_Reg|L2\(13) & ((\dut|d|FD_4|bout~combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|d|FD_4|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_5|bout~combout\);

-- Location: LC_X1_Y9_N5
\dut|d|FD_6|bout\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_6|bout~combout\ = (\scan_instance|In_Reg|L2\(14) & (\dut|d|FD_5|bout~combout\ & ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(6))))) # (!\scan_instance|In_Reg|L2\(14) & ((\dut|d|FD_5|bout~combout\) # ((!\TRST~combout\ & 
-- \scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut|d|FD_5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_6|bout~combout\);

-- Location: LC_X1_Y9_N6
\dut|Z[7]~4\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~4_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & ((\scan_instance|In_Reg|PO[17]~3_combout\) # ((\dut|d|FD_6|bout~combout\)))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (!\scan_instance|In_Reg|PO[17]~3_combout\ & 
-- (\dut|a|FA_6|cout~0_combout\)))

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
	dataa => \scan_instance|In_Reg|PO[16]~2_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|a|FA_6|cout~0_combout\,
	datad => \dut|d|FD_6|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~4_combout\);

-- Location: LC_X1_Y9_N7
\dut|Z[7]~5\ : maxv_lcell
-- Equation(s):
-- \dut|Z[7]~5_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & ((\dut|Z[7]~4_combout\ & ((\dut|Z[7]~3_combout\))) # (!\dut|Z[7]~4_combout\ & (\dut|c|MUX2_0h|o~1_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & ((\dut|Z[7]~3_combout\ $ 
-- (\dut|Z[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|MUX2_0h|o~1_combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|Z[7]~3_combout\,
	datad => \dut|Z[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[7]~5_combout\);

-- Location: LC_X1_Y9_N8
\scan_instance|Out_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(7) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\dut|Z[7]~5_combout\))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L1\(0))))) # (!\scan_instance|Selector3~0\ & (((\dut|Z[7]~5_combout\)))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \TRST~combout\,
	datad => \dut|Z[7]~5_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(7));

-- Location: LC_X3_Y7_N1
\scan_instance|Out_Reg|L1~17\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~17_combout\ = (!\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(2) & (!\dut|c|p~combout\ & !\TRST~combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \dut|c|p~combout\,
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~17_combout\);

-- Location: LC_X3_Y7_N0
\scan_instance|Out_Reg|L1~44\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~44_combout\ = (\scan_instance|In_Reg|L2\(0) & ((\TRST~combout\ & (\scan_instance|In_Reg|L2\(14))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(15)))))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~44_combout\);

-- Location: LC_X4_Y7_N8
\scan_instance|Out_Reg|L1[3]~24\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~24_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(16) & \scan_instance|In_Reg|L2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~24_combout\);

-- Location: LC_X4_Y9_N0
\dut|b|MUX2_1c|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1c|o~0_combout\ = (\scan_instance|In_Reg|L2\(11) & (\scan_instance|In_Reg|L2\(1) & (!\TRST~combout\ & !\scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1c|o~0_combout\);

-- Location: LC_X4_Y9_N5
\dut|b|MUX2_1c|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1c|o~1_combout\ = (!\dut|c|p~combout\ & ((\dut|b|MUX2_1c|o~0_combout\) # ((!\dut|d|FD_1|bout~3_combout\ & \dut|b|MUX2_2c|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|p~combout\,
	datab => \dut|b|MUX2_1c|o~0_combout\,
	datac => \dut|d|FD_1|bout~3_combout\,
	datad => \dut|b|MUX2_2c|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1c|o~1_combout\);

-- Location: LC_X2_Y6_N6
\scan_instance|Out_Reg|L1~45\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~45_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6) $ (\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~45_combout\);

-- Location: LC_X2_Y6_N1
\scan_instance|Out_Reg|L1~46\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~46_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (((!\dut|c|p~combout\ & \dut|b|MUX2_1b|o~1_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & (\scan_instance|Out_Reg|L1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1~45_combout\,
	datab => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datac => \dut|c|p~combout\,
	datad => \dut|b|MUX2_1b|o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~46_combout\);

-- Location: LC_X4_Y7_N3
\scan_instance|Out_Reg|L1[5]~27\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~27_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(16) & ((\scan_instance|In_Reg|L2\(0)) # (!\scan_instance|In_Reg|L2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~27_combout\);

-- Location: LC_X2_Y9_N4
\scan_instance|Out_Reg|L1~47\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~47_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (\scan_instance|Out_Reg|L1[5]~27_combout\)) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\dut|d|FD_5|bout~combout\))) # 
-- (!\scan_instance|Out_Reg|L1[5]~27_combout\ & (\dut|a|FA_5|cout~0_combout\))))

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
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datac => \dut|a|FA_5|cout~0_combout\,
	datad => \dut|d|FD_5|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~47_combout\);

-- Location: LC_X3_Y9_N1
\scan_instance|Out_Reg|L1~48\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~48_combout\ = (\scan_instance|Out_Reg|L1~47_combout\ & ((\scan_instance|Out_Reg|L1[3]~24_combout\ & (\dut|b|MUX2_1c|o~1_combout\)) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((!\scan_instance|Out_Reg|L1~46_combout\))))) # 
-- (!\scan_instance|Out_Reg|L1~47_combout\ & (((\scan_instance|Out_Reg|L1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8df0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \dut|b|MUX2_1c|o~1_combout\,
	datac => \scan_instance|Out_Reg|L1~46_combout\,
	datad => \scan_instance|Out_Reg|L1~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~48_combout\);

-- Location: LC_X3_Y9_N2
\scan_instance|Out_Reg|L1~49\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~49_combout\ = (\scan_instance|Out_Reg|L1[5]~19_combout\ & (\scan_instance|Out_Reg|L1~17_combout\ & (\scan_instance|Out_Reg|L1~44_combout\))) # (!\scan_instance|Out_Reg|L1[5]~19_combout\ & 
-- (((\scan_instance|Out_Reg|L1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~19_combout\,
	datab => \scan_instance|Out_Reg|L1~17_combout\,
	datac => \scan_instance|Out_Reg|L1~44_combout\,
	datad => \scan_instance|Out_Reg|L1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~49_combout\);

-- Location: LC_X3_Y9_N0
\scan_instance|Out_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(6) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~49_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(7))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~49_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(7),
	datad => \scan_instance|Out_Reg|L1~49_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(6));

-- Location: LC_X3_Y7_N3
\dut|b|MUX2_1d|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1d|o~0_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(10) & \scan_instance|In_Reg|L2\(1))))

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
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1d|o~0_combout\);

-- Location: LC_X3_Y8_N6
\dut|b|MUX2_1d|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1d|o~1_combout\ = (!\dut|c|p~combout\ & ((\dut|b|MUX2_1d|o~0_combout\) # ((\dut|c|MUX2_1d|o~1_combout\ & \dut|b|MUX2_2d|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|p~combout\,
	datab => \dut|c|MUX2_1d|o~1_combout\,
	datac => \dut|b|MUX2_2d|o~0_combout\,
	datad => \dut|b|MUX2_1d|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1d|o~1_combout\);

-- Location: LC_X4_Y9_N3
\dut|a|FA_5|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_5|s~combout\ = \dut|a|FA_4|cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13) $ (\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|a|FA_4|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_5|s~combout\);

-- Location: LC_X4_Y9_N4
\scan_instance|Out_Reg|L1~40\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~40_combout\ = (\scan_instance|Out_Reg|L1[5]~27_combout\ & (\scan_instance|Out_Reg|L1[3]~24_combout\)) # (!\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\scan_instance|Out_Reg|L1[3]~24_combout\ & (\dut|b|MUX2_1c|o~1_combout\)) # 
-- (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\dut|a|FA_5|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datab => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datac => \dut|b|MUX2_1c|o~1_combout\,
	datad => \dut|a|FA_5|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~40_combout\);

-- Location: LC_X4_Y9_N6
\dut|d|FD_5|d\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_5|d~combout\ = \dut|d|FD_4|bout~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13) $ (\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut|d|FD_4|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_5|d~combout\);

-- Location: LC_X4_Y9_N7
\scan_instance|Out_Reg|L1~41\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~41_combout\ = (\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\scan_instance|Out_Reg|L1~40_combout\ & (\dut|b|MUX2_1d|o~1_combout\)) # (!\scan_instance|Out_Reg|L1~40_combout\ & ((\dut|d|FD_5|d~combout\))))) # 
-- (!\scan_instance|Out_Reg|L1[5]~27_combout\ & (((\scan_instance|Out_Reg|L1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datab => \dut|b|MUX2_1d|o~1_combout\,
	datac => \scan_instance|Out_Reg|L1~40_combout\,
	datad => \dut|d|FD_5|d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~41_combout\);

-- Location: LC_X4_Y9_N8
\scan_instance|Out_Reg|L1~42\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~42_combout\ = (\scan_instance|Out_Reg|L1[5]~50_combout\ & (((\scan_instance|Out_Reg|L1[5]~26_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~50_combout\ & ((\scan_instance|Out_Reg|L1[5]~26_combout\ & 
-- (\scan_instance|Out_Reg|L1\(6))) # (!\scan_instance|Out_Reg|L1[5]~26_combout\ & ((\scan_instance|Out_Reg|L1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1\(6),
	datab => \scan_instance|Out_Reg|L1[5]~50_combout\,
	datac => \scan_instance|Out_Reg|L1[5]~26_combout\,
	datad => \scan_instance|Out_Reg|L1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~42_combout\);

-- Location: LC_X4_Y9_N9
\scan_instance|Out_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(5) = DFFEAS((\scan_instance|Out_Reg|L1[5]~50_combout\ & ((\scan_instance|Out_Reg|L1~42_combout\ & ((\dut|c|MUX2_1g|o~0_combout\))) # (!\scan_instance|Out_Reg|L1~42_combout\ & (\dut|c|MUX2_1f|o~3_combout\)))) # 
-- (!\scan_instance|Out_Reg|L1[5]~50_combout\ & (((\scan_instance|Out_Reg|L1~42_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[5]~50_combout\,
	datab => \dut|c|MUX2_1f|o~3_combout\,
	datac => \dut|c|MUX2_1g|o~0_combout\,
	datad => \scan_instance|Out_Reg|L1~42_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(5));

-- Location: LC_X3_Y7_N7
\dut|c|MUX2_1e|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1e|o~1_combout\ = (\scan_instance|In_Reg|L2\(1) & ((\TRST~combout\ & (\scan_instance|In_Reg|L2\(12))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(14)))))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1e|o~1_combout\);

-- Location: LC_X3_Y7_N8
\scan_instance|Out_Reg|L1~52\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~52_combout\ = (\scan_instance|In_Reg|L2\(0) & ((\TRST~combout\ & ((\dut|c|MUX2_1e|o~1_combout\))) # (!\TRST~combout\ & (\dut|c|MUX2_1f|o~2_combout\)))) # (!\scan_instance|In_Reg|L2\(0) & (((\dut|c|MUX2_1e|o~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \TRST~combout\,
	datac => \dut|c|MUX2_1f|o~2_combout\,
	datad => \dut|c|MUX2_1e|o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~52_combout\);

-- Location: LC_X4_Y8_N3
\dut|c|MUX2_1f|o~4\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1f|o~4_combout\ = (!\TRST~combout\ & (((!\scan_instance|In_Reg|L2\(2) & !\dut|c|p~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut|c|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1f|o~4_combout\);

-- Location: LC_X4_Y8_N2
\dut|b|MUX2_1e|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1e|o~1_combout\ = (\dut|c|MUX2_1f|o~4_combout\ & ((\dut|d|FD_1|bout~3_combout\ & (\scan_instance|In_Reg|L2\(9))) # (!\dut|d|FD_1|bout~3_combout\ & ((\scan_instance|In_Reg|L2\(11))))))

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
	dataa => \dut|c|MUX2_1f|o~4_combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \dut|d|FD_1|bout~3_combout\,
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1e|o~1_combout\);

-- Location: LC_X3_Y8_N5
\dut|d|FD_4|d\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_4|d~combout\ = \dut|d|FD_3|bout~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12) $ (\scan_instance|In_Reg|L2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \dut|d|FD_3|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_4|d~combout\);

-- Location: LC_X3_Y8_N0
\dut|a|FA_4|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_4|s~combout\ = \dut|a|FA_3|cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12) $ (\scan_instance|In_Reg|L2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	datad => \dut|a|FA_3|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_4|s~combout\);

-- Location: LC_X3_Y8_N1
\scan_instance|Out_Reg|L1~37\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~37_combout\ = (\scan_instance|Out_Reg|L1[5]~27_combout\ & (\scan_instance|Out_Reg|L1[3]~24_combout\)) # (!\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\scan_instance|Out_Reg|L1[3]~24_combout\ & (\dut|b|MUX2_1d|o~1_combout\)) # 
-- (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\dut|a|FA_4|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datab => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datac => \dut|b|MUX2_1d|o~1_combout\,
	datad => \dut|a|FA_4|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~37_combout\);

-- Location: LC_X3_Y8_N2
\scan_instance|Out_Reg|L1~38\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~38_combout\ = (\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\scan_instance|Out_Reg|L1~37_combout\ & (\dut|b|MUX2_1e|o~1_combout\)) # (!\scan_instance|Out_Reg|L1~37_combout\ & ((\dut|d|FD_4|d~combout\))))) # 
-- (!\scan_instance|Out_Reg|L1[5]~27_combout\ & (((\scan_instance|Out_Reg|L1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datab => \dut|b|MUX2_1e|o~1_combout\,
	datac => \dut|d|FD_4|d~combout\,
	datad => \scan_instance|Out_Reg|L1~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~38_combout\);

-- Location: LC_X3_Y8_N3
\scan_instance|Out_Reg|L1~39\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~39_combout\ = (\scan_instance|Out_Reg|L1[5]~19_combout\ & (\scan_instance|Out_Reg|L1~52_combout\ & (\dut|c|MUX2_1f|o~4_combout\))) # (!\scan_instance|Out_Reg|L1[5]~19_combout\ & (((\scan_instance|Out_Reg|L1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1~52_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~19_combout\,
	datac => \dut|c|MUX2_1f|o~4_combout\,
	datad => \scan_instance|Out_Reg|L1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~39_combout\);

-- Location: LC_X3_Y8_N4
\scan_instance|Out_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(4) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~39_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(5))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~39_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(5),
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|L1~39_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(4));

-- Location: LC_X4_Y6_N6
\dut|b|MUX2_1f|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1f|o~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(10))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1f|o~0_combout\);

-- Location: LC_X4_Y6_N5
\dut|b|MUX2_1e|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1e|o~0_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(11))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & ((\scan_instance|In_Reg|L2\(9)))) # (!\scan_instance|In_Reg|L2\(1) & (\scan_instance|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1e|o~0_combout\);

-- Location: LC_X4_Y7_N2
\scan_instance|Out_Reg|L1~51\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~51_combout\ = (\TRST~combout\ & (((\dut|b|MUX2_1e|o~0_combout\)))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & (\dut|b|MUX2_1f|o~0_combout\)) # (!\scan_instance|In_Reg|L2\(0) & ((\dut|b|MUX2_1e|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(0),
	datac => \dut|b|MUX2_1f|o~0_combout\,
	datad => \dut|b|MUX2_1e|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~51_combout\);

-- Location: LC_X4_Y7_N6
\scan_instance|Out_Reg|L1[3]~20\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~20_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(16)) # ((\scan_instance|In_Reg|L2\(17) & \scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(17),
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~20_combout\);

-- Location: LC_X1_Y9_N9
\dut|d|FD_3|d\ : maxv_lcell
-- Equation(s):
-- \dut|d|FD_3|d~combout\ = \dut|d|FD_2|bout~combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|d|FD_2|bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|d|FD_3|d~combout\);

-- Location: LC_X4_Y8_N9
\dut|c|MUX2_1e|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1e|o~0_combout\ = (\dut|c|MUX2_1f|o~4_combout\ & ((\dut|d|FD_1|bout~3_combout\ & (\scan_instance|In_Reg|L2\(14))) # (!\dut|d|FD_1|bout~3_combout\ & ((\scan_instance|In_Reg|L2\(12))))))

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
	dataa => \dut|c|MUX2_1f|o~4_combout\,
	datab => \scan_instance|In_Reg|L2\(14),
	datac => \dut|d|FD_1|bout~3_combout\,
	datad => \scan_instance|In_Reg|L2\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1e|o~0_combout\);

-- Location: LC_X4_Y8_N7
\dut|a|FA_3|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|FA_3|s~combout\ = \dut|a|FA_2|cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut|a|FA_2|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|FA_3|s~combout\);

-- Location: LC_X4_Y8_N1
\scan_instance|Out_Reg|L1~34\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~34_combout\ = (\scan_instance|Out_Reg|L1[3]~20_combout\ & (\scan_instance|Out_Reg|L1[5]~19_combout\)) # (!\scan_instance|Out_Reg|L1[3]~20_combout\ & ((\scan_instance|Out_Reg|L1[5]~19_combout\ & ((\dut|c|MUX2_1d|o~2_combout\))) # 
-- (!\scan_instance|Out_Reg|L1[5]~19_combout\ & (\dut|a|FA_3|s~combout\))))

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
	dataa => \scan_instance|Out_Reg|L1[3]~20_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~19_combout\,
	datac => \dut|a|FA_3|s~combout\,
	datad => \dut|c|MUX2_1d|o~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~34_combout\);

-- Location: LC_X3_Y8_N7
\scan_instance|Out_Reg|L1~35\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~35_combout\ = (\scan_instance|Out_Reg|L1[3]~20_combout\ & ((\scan_instance|Out_Reg|L1~34_combout\ & ((\dut|c|MUX2_1e|o~0_combout\))) # (!\scan_instance|Out_Reg|L1~34_combout\ & (\dut|d|FD_3|d~combout\)))) # 
-- (!\scan_instance|Out_Reg|L1[3]~20_combout\ & (((\scan_instance|Out_Reg|L1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~20_combout\,
	datab => \dut|d|FD_3|d~combout\,
	datac => \dut|c|MUX2_1e|o~0_combout\,
	datad => \scan_instance|Out_Reg|L1~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~35_combout\);

-- Location: LC_X3_Y8_N8
\scan_instance|Out_Reg|L1~36\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~36_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (\dut|c|MUX2_1f|o~4_combout\ & (\scan_instance|Out_Reg|L1~51_combout\))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & (((\scan_instance|Out_Reg|L1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \dut|c|MUX2_1f|o~4_combout\,
	datac => \scan_instance|Out_Reg|L1~51_combout\,
	datad => \scan_instance|Out_Reg|L1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~36_combout\);

-- Location: LC_X3_Y8_N9
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~36_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(4))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~36_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|L1~36_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X2_Y8_N1
\dut|c|MUX2_2c|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_2c|o~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(14))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(14),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_2c|o~0_combout\);

-- Location: LC_X3_Y6_N9
\dut|c|MUX2_1c|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1c|o~0_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(12) & (!\scan_instance|In_Reg|L2\(2) & \scan_instance|In_Reg|L2\(1))))

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
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1c|o~0_combout\);

-- Location: LC_X3_Y6_N2
\dut|c|MUX2_1c|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1c|o~1_combout\ = (!\dut|c|p~combout\ & ((\dut|c|MUX2_1c|o~0_combout\) # ((!\dut|d|FD_1|bout~3_combout\ & \dut|c|MUX2_2c|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3310",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|d|FD_1|bout~3_combout\,
	datab => \dut|c|p~combout\,
	datac => \dut|c|MUX2_2c|o~0_combout\,
	datad => \dut|c|MUX2_1c|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1c|o~1_combout\);

-- Location: LC_X4_Y6_N0
\scan_instance|Out_Reg|L1~29\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~29_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (\dut|b|MUX2_1f|o~0_combout\ & ((!\scan_instance|In_Reg|L2\(2))))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\scan_instance|In_Reg|L2\(10) $ 
-- (\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|MUX2_1f|o~0_combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~29_combout\);

-- Location: LC_X4_Y6_N1
\scan_instance|Out_Reg|L1~30\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~30_combout\ = (!\TRST~combout\ & (\scan_instance|Out_Reg|L1~29_combout\ & ((!\scan_instance|Out_Reg|L1[3]~24_combout\) # (!\dut|c|p~combout\))))

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
	dataa => \TRST~combout\,
	datab => \dut|c|p~combout\,
	datac => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datad => \scan_instance|Out_Reg|L1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~30_combout\);

-- Location: LC_X4_Y6_N8
\scan_instance|In_Reg|PO[9]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[9]~4_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[9]~4_combout\);

-- Location: LC_X4_Y6_N7
\dut|b|MUX2_1g|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|b|MUX2_1g|o~0_combout\ = (\scan_instance|In_Reg|PO[9]~4_combout\ & (!\scan_instance|In_Reg|PO[2]~6_combout\ & (!\dut|d|FD_1|bout~3_combout\ & !\dut|c|p~combout\)))

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
	dataa => \scan_instance|In_Reg|PO[9]~4_combout\,
	datab => \scan_instance|In_Reg|PO[2]~6_combout\,
	datac => \dut|d|FD_1|bout~3_combout\,
	datad => \dut|c|p~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|b|MUX2_1g|o~0_combout\);

-- Location: LC_X4_Y6_N9
\scan_instance|Out_Reg|L1~28\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~28_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (((\scan_instance|Out_Reg|L1[5]~27_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\scan_instance|Out_Reg|L1[5]~27_combout\ & (\dut|d|FD_1|bout~combout\)) # 
-- (!\scan_instance|Out_Reg|L1[5]~27_combout\ & ((\dut|a|FA_1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \dut|d|FD_1|bout~combout\,
	datac => \scan_instance|Out_Reg|L1[5]~27_combout\,
	datad => \dut|a|FA_1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~28_combout\);

-- Location: LC_X4_Y6_N2
\scan_instance|Out_Reg|L1~31\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~31_combout\ = (\scan_instance|Out_Reg|L1~28_combout\ & ((\scan_instance|Out_Reg|L1[3]~24_combout\ & ((\dut|b|MUX2_1g|o~0_combout\))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & (!\scan_instance|Out_Reg|L1~30_combout\)))) # 
-- (!\scan_instance|Out_Reg|L1~28_combout\ & (((\scan_instance|Out_Reg|L1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \scan_instance|Out_Reg|L1~30_combout\,
	datac => \dut|b|MUX2_1g|o~0_combout\,
	datad => \scan_instance|Out_Reg|L1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~31_combout\);

-- Location: LC_X4_Y6_N3
\scan_instance|Out_Reg|L1~32\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~32_combout\ = (\scan_instance|Out_Reg|L1[5]~50_combout\ & ((\dut|c|MUX2_1c|o~1_combout\) # ((\scan_instance|Out_Reg|L1[5]~26_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~50_combout\ & (((!\scan_instance|Out_Reg|L1[5]~26_combout\ 
-- & \scan_instance|Out_Reg|L1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~50_combout\,
	datab => \dut|c|MUX2_1c|o~1_combout\,
	datac => \scan_instance|Out_Reg|L1[5]~26_combout\,
	datad => \scan_instance|Out_Reg|L1~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~32_combout\);

-- Location: LC_X4_Y6_N4
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\scan_instance|Out_Reg|L1[5]~26_combout\ & ((\scan_instance|Out_Reg|L1~32_combout\ & (\dut|c|MUX2_1d|o~2_combout\)) # (!\scan_instance|Out_Reg|L1~32_combout\ & ((\scan_instance|Out_Reg|L1\(3)))))) # 
-- (!\scan_instance|Out_Reg|L1[5]~26_combout\ & (((\scan_instance|Out_Reg|L1~32_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[5]~26_combout\,
	datab => \dut|c|MUX2_1d|o~2_combout\,
	datac => \scan_instance|Out_Reg|L1\(3),
	datad => \scan_instance|Out_Reg|L1~32_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X3_Y5_N7
\scan_instance|Out_Reg|L1~18\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~18_combout\ = (\TRST~combout\ & (\scan_instance|In_Reg|L2\(9))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(0) & ((\scan_instance|In_Reg|L2\(8)))) # (!\scan_instance|In_Reg|L2\(0) & (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~18_combout\);

-- Location: LC_X3_Y5_N8
\scan_instance|In_Reg|PO[8]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[8]~0_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[8]~0_combout\);

-- Location: LC_X3_Y5_N5
\scan_instance|In_Reg|PO[0]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~5_combout\ = (((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[0]~5_combout\);

-- Location: LC_X3_Y6_N3
\scan_instance|Out_Reg|L1~21\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~21_combout\ = (\scan_instance|Out_Reg|L1[3]~20_combout\ & (((!\scan_instance|In_Reg|PO[8]~0_combout\ & \scan_instance|In_Reg|PO[0]~5_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~20_combout\ & (\dut|a|HA_1|c~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|a|HA_1|c~combout\,
	datab => \scan_instance|In_Reg|PO[8]~0_combout\,
	datac => \scan_instance|In_Reg|PO[0]~5_combout\,
	datad => \scan_instance|Out_Reg|L1[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~21_combout\);

-- Location: LC_X3_Y6_N0
\scan_instance|Out_Reg|L1~53\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~53_combout\ = \scan_instance|Out_Reg|L1~21_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) $ (\scan_instance|In_Reg|L2\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(1),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \scan_instance|Out_Reg|L1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~53_combout\);

-- Location: LC_X2_Y7_N9
\dut|c|MUX2_1b|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1b|o~0_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(9))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(13))) # (!\scan_instance|In_Reg|L2\(2) & ((\scan_instance|In_Reg|L2\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1b|o~0_combout\);

-- Location: LC_X2_Y7_N0
\dut|c|MUX2_1b|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_1b|o~1_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1) & (\dut|c|MUX2_2d|o~0_combout\)) # (!\scan_instance|In_Reg|L2\(1) & ((\dut|c|MUX2_1b|o~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut|c|MUX2_2d|o~0_combout\,
	datad => \dut|c|MUX2_1b|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_1b|o~1_combout\);

-- Location: LC_X3_Y6_N1
\scan_instance|Out_Reg|L1~22\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~22_combout\ = (\scan_instance|Out_Reg|L1[3]~20_combout\ & (((\dut|c|MUX2_1c|o~1_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~20_combout\ & (!\dut|c|p~combout\ & (\dut|c|MUX2_1b|o~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|p~combout\,
	datab => \scan_instance|Out_Reg|L1[3]~20_combout\,
	datac => \dut|c|MUX2_1b|o~1_combout\,
	datad => \dut|c|MUX2_1c|o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~22_combout\);

-- Location: LC_X3_Y6_N6
\scan_instance|Out_Reg|L1~23\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~23_combout\ = (\scan_instance|Out_Reg|L1[5]~19_combout\ & (((\scan_instance|Out_Reg|L1~22_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~19_combout\ & (\scan_instance|Out_Reg|L1[3]~20_combout\ $ 
-- ((!\scan_instance|Out_Reg|L1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed21",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~20_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~19_combout\,
	datac => \scan_instance|Out_Reg|L1~53_combout\,
	datad => \scan_instance|Out_Reg|L1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~23_combout\);

-- Location: LC_X3_Y6_N7
\scan_instance|Out_Reg|L1~25\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~25_combout\ = (\scan_instance|Out_Reg|L1[3]~24_combout\ & (\scan_instance|Out_Reg|L1~17_combout\ & (\scan_instance|Out_Reg|L1~18_combout\))) # (!\scan_instance|Out_Reg|L1[3]~24_combout\ & 
-- (((\scan_instance|Out_Reg|L1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~24_combout\,
	datab => \scan_instance|Out_Reg|L1~17_combout\,
	datac => \scan_instance|Out_Reg|L1~18_combout\,
	datad => \scan_instance|Out_Reg|L1~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~25_combout\);

-- Location: LC_X3_Y6_N8
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\TRST~combout\ & (((\scan_instance|Out_Reg|L1~25_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(2))) # (!\scan_instance|Selector3~0\ & 
-- ((\scan_instance|Out_Reg|L1~25_combout\))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Out_Reg|L1\(2),
	datac => \scan_instance|Selector3~0\,
	datad => \scan_instance|Out_Reg|L1~25_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X2_Y7_N3
\dut|a|HA_1|s\ : maxv_lcell
-- Equation(s):
-- \dut|a|HA_1|s~combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(8) $ (\scan_instance|In_Reg|L2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|a|HA_1|s~combout\);

-- Location: LC_X2_Y6_N3
\scan_instance|In_Reg|PO[12]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[12]~1_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[12]~1_combout\);

-- Location: LC_X2_Y8_N3
\dut|c|MUX2_0a|o~0\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_0a|o~0_combout\ = (\dut|b|MUX2_0a|o~2_combout\ & (((!\dut|b|MUX2_0a|o~3_combout\)))) # (!\dut|b|MUX2_0a|o~2_combout\ & ((\dut|b|MUX2_0a|o~3_combout\ & (\dut|c|MUX2_2c|o~0_combout\)) # (!\dut|b|MUX2_0a|o~3_combout\ & 
-- ((\scan_instance|In_Reg|PO[8]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|MUX2_0a|o~2_combout\,
	datab => \dut|c|MUX2_2c|o~0_combout\,
	datac => \dut|b|MUX2_0a|o~3_combout\,
	datad => \scan_instance|In_Reg|PO[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_0a|o~0_combout\);

-- Location: LC_X2_Y8_N4
\dut|c|MUX2_0a|o~1\ : maxv_lcell
-- Equation(s):
-- \dut|c|MUX2_0a|o~1_combout\ = (\dut|b|MUX2_0a|o~2_combout\ & ((\dut|c|MUX2_0a|o~0_combout\ & (\scan_instance|In_Reg|PO[12]~1_combout\)) # (!\dut|c|MUX2_0a|o~0_combout\ & ((\dut|c|MUX2_1b|o~1_combout\))))) # (!\dut|b|MUX2_0a|o~2_combout\ & 
-- (((\dut|c|MUX2_0a|o~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|b|MUX2_0a|o~2_combout\,
	datab => \scan_instance|In_Reg|PO[12]~1_combout\,
	datac => \dut|c|MUX2_1b|o~1_combout\,
	datad => \dut|c|MUX2_0a|o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|c|MUX2_0a|o~1_combout\);

-- Location: LC_X2_Y8_N5
\dut|Z[0]~0\ : maxv_lcell
-- Equation(s):
-- \dut|Z[0]~0_combout\ = (\scan_instance|In_Reg|PO[16]~2_combout\ & (\scan_instance|In_Reg|PO[8]~0_combout\ & (\dut|c|MUX2_0h|o~0_combout\))) # (!\scan_instance|In_Reg|PO[16]~2_combout\ & (((\dut|c|MUX2_0a|o~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[8]~0_combout\,
	datab => \dut|c|MUX2_0h|o~0_combout\,
	datac => \scan_instance|In_Reg|PO[16]~2_combout\,
	datad => \dut|c|MUX2_0a|o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[0]~0_combout\);

-- Location: LC_X1_Y8_N5
\dut|Z[0]~1\ : maxv_lcell
-- Equation(s):
-- \dut|Z[0]~1_combout\ = (\scan_instance|In_Reg|PO[17]~3_combout\ & (!\dut|c|p~combout\ & ((\dut|Z[0]~0_combout\)))) # (!\scan_instance|In_Reg|PO[17]~3_combout\ & (((\dut|a|HA_1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|c|p~combout\,
	datab => \scan_instance|In_Reg|PO[17]~3_combout\,
	datac => \dut|a|HA_1|s~combout\,
	datad => \dut|Z[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut|Z[0]~1_combout\);

-- Location: LC_X1_Y8_N6
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\TRST~combout\ & (((\dut|Z[0]~1_combout\)))) # (!\TRST~combout\ & ((\scan_instance|Selector3~0\ & (\scan_instance|Out_Reg|L1\(1))) # (!\scan_instance|Selector3~0\ & ((\dut|Z[0]~1_combout\))))), 
-- GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1~16_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|Selector3~0\,
	datac => \scan_instance|Out_Reg|L1\(1),
	datad => \dut|Z[0]~1_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1~16_combout\,
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


