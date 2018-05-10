-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "04/19/2018 14:11:40"

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

ENTITY 	reactiongame IS
    PORT (
	CLK : IN std_logic;
	nreact : IN std_logic;
	nreset : IN std_logic;
	LED : BUFFER std_logic;
	rs : BUFFER std_logic;
	rw : BUFFER std_logic;
	en : BUFFER std_logic;
	data : BUFFER std_logic_vector(7 DOWNTO 0);
	b11 : BUFFER std_logic;
	b12 : BUFFER std_logic;
	gameover : BUFFER std_logic
	);
END reactiongame;

-- Design Ports Information


ARCHITECTURE structure OF reactiongame IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_nreact : std_logic;
SIGNAL ww_nreset : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b11 : std_logic;
SIGNAL ww_b12 : std_logic;
SIGNAL ww_gameover : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add6~40\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \s1|Add0~75_combout\ : std_logic;
SIGNAL \s1|Add0~17\ : std_logic;
SIGNAL \s1|Add0~17COUT1_83\ : std_logic;
SIGNAL \s1|Add0~20_combout\ : std_logic;
SIGNAL \s1|Add0~22\ : std_logic;
SIGNAL \s1|Add0~22COUT1_84\ : std_logic;
SIGNAL \s1|Add0~25_combout\ : std_logic;
SIGNAL \s1|Add0~40_combout\ : std_logic;
SIGNAL \s1|Add0~27\ : std_logic;
SIGNAL \s1|Add0~27COUT1_85\ : std_logic;
SIGNAL \s1|Add0~32\ : std_logic;
SIGNAL \s1|Add0~32COUT1_86\ : std_logic;
SIGNAL \s1|Add0~37\ : std_logic;
SIGNAL \s1|Add0~42\ : std_logic;
SIGNAL \s1|Add0~42COUT1_87\ : std_logic;
SIGNAL \s1|Add0~45_combout\ : std_logic;
SIGNAL \s1|Add0~47\ : std_logic;
SIGNAL \s1|Add0~47COUT1_88\ : std_logic;
SIGNAL \s1|Add0~0_combout\ : std_logic;
SIGNAL \s1|Add0~2\ : std_logic;
SIGNAL \s1|Add0~2COUT1_89\ : std_logic;
SIGNAL \s1|Add0~5_combout\ : std_logic;
SIGNAL \s1|Add0~7\ : std_logic;
SIGNAL \s1|Add0~7COUT1_90\ : std_logic;
SIGNAL \s1|Add0~10_combout\ : std_logic;
SIGNAL \s1|Add0~12\ : std_logic;
SIGNAL \s1|Add0~52\ : std_logic;
SIGNAL \s1|Add0~52COUT1_91\ : std_logic;
SIGNAL \s1|Add0~55_combout\ : std_logic;
SIGNAL \s1|Add0~50_combout\ : std_logic;
SIGNAL \s1|Equal0~4\ : std_logic;
SIGNAL \s1|Add0~77\ : std_logic;
SIGNAL \s1|Add0~77COUT1_81\ : std_logic;
SIGNAL \s1|Add0~70_combout\ : std_logic;
SIGNAL \s1|Add0~72\ : std_logic;
SIGNAL \s1|Add0~72COUT1_82\ : std_logic;
SIGNAL \s1|Add0~65_combout\ : std_logic;
SIGNAL \s1|Add0~67\ : std_logic;
SIGNAL \s1|Add0~35_combout\ : std_logic;
SIGNAL \s1|Equal0~3\ : std_logic;
SIGNAL \s1|Add0~30_combout\ : std_logic;
SIGNAL \s1|Add0~15_combout\ : std_logic;
SIGNAL \s1|Equal0~1\ : std_logic;
SIGNAL \s1|Equal0~0\ : std_logic;
SIGNAL \s1|Equal0~2_combout\ : std_logic;
SIGNAL \s1|Add0~57\ : std_logic;
SIGNAL \s1|Add0~57COUT1_92\ : std_logic;
SIGNAL \s1|Add0~60_combout\ : std_logic;
SIGNAL \s1|LessThan0~1\ : std_logic;
SIGNAL \s1|LessThan0~0\ : std_logic;
SIGNAL \s1|LessThan0~2_combout\ : std_logic;
SIGNAL \s1|outsig~regout\ : std_logic;
SIGNAL \s1|outclk~regout\ : std_logic;
SIGNAL \nreset~combout\ : std_logic;
SIGNAL \s5|Add0~11_combout\ : std_logic;
SIGNAL \nreact~combout\ : std_logic;
SIGNAL \s5|delay[5]~4_combout\ : std_logic;
SIGNAL \s5|delay[5]~3_combout\ : std_logic;
SIGNAL \s5|Add0~42\ : std_logic;
SIGNAL \s5|Add0~42COUT1_50\ : std_logic;
SIGNAL \s5|Add0~23_combout\ : std_logic;
SIGNAL \s5|Add0~25\ : std_logic;
SIGNAL \s5|Add0~25COUT1_51\ : std_logic;
SIGNAL \s5|Add0~0_combout\ : std_logic;
SIGNAL \s5|count_sig[3]~2_combout\ : std_logic;
SIGNAL \s5|Add1~1_combout\ : std_logic;
SIGNAL \s5|Add1~0_combout\ : std_logic;
SIGNAL \s5|LessThan2~0_combout\ : std_logic;
SIGNAL \s5|delay~0_combout\ : std_logic;
SIGNAL \s5|delay~1_combout\ : std_logic;
SIGNAL \s5|delay~2_combout\ : std_logic;
SIGNAL \s5|Add0~13\ : std_logic;
SIGNAL \s5|Add0~13COUT1_46\ : std_logic;
SIGNAL \s5|Add0~5_combout\ : std_logic;
SIGNAL \s5|Add0~7\ : std_logic;
SIGNAL \s5|Add0~7COUT1_47\ : std_logic;
SIGNAL \s5|Add0~17_combout\ : std_logic;
SIGNAL \s5|Add0~19\ : std_logic;
SIGNAL \s5|Add0~19COUT1_48\ : std_logic;
SIGNAL \s5|Add0~28_combout\ : std_logic;
SIGNAL \s5|Add0~30\ : std_logic;
SIGNAL \s5|Add0~30COUT1_49\ : std_logic;
SIGNAL \s5|Add0~34_combout\ : std_logic;
SIGNAL \s5|Add0~36\ : std_logic;
SIGNAL \s5|Add0~40_combout\ : std_logic;
SIGNAL \s5|rst_sig~0_combout\ : std_logic;
SIGNAL \s5|rst_sig~1_combout\ : std_logic;
SIGNAL \s5|rst_sig~3_combout\ : std_logic;
SIGNAL \s5|rst_sig~2_combout\ : std_logic;
SIGNAL \s5|rst_sig~regout\ : std_logic;
SIGNAL \s5|newrst~regout\ : std_logic;
SIGNAL \s3|count[0]~3\ : std_logic;
SIGNAL \s3|count[1]~1\ : std_logic;
SIGNAL \s3|count[1]~1COUT1_27\ : std_logic;
SIGNAL \s3|count[2]~7\ : std_logic;
SIGNAL \s3|count[2]~7COUT1_28\ : std_logic;
SIGNAL \s3|count[3]~5\ : std_logic;
SIGNAL \s3|count[3]~5COUT1_29\ : std_logic;
SIGNAL \s3|count[4]~11\ : std_logic;
SIGNAL \s3|count[4]~11COUT1_30\ : std_logic;
SIGNAL \s3|count[5]~9\ : std_logic;
SIGNAL \s3|count[6]~15\ : std_logic;
SIGNAL \s3|count[6]~15COUT1_31\ : std_logic;
SIGNAL \s3|count[7]~13\ : std_logic;
SIGNAL \s3|count[7]~13COUT1_32\ : std_logic;
SIGNAL \s3|count[8]~19\ : std_logic;
SIGNAL \s3|count[8]~19COUT1_33\ : std_logic;
SIGNAL \s2|Add0~0_combout\ : std_logic;
SIGNAL \s2|Add0~25_combout\ : std_logic;
SIGNAL \s2|Add0~27\ : std_logic;
SIGNAL \s2|Add0~27COUT1_60\ : std_logic;
SIGNAL \s2|Add0~30_combout\ : std_logic;
SIGNAL \s2|Add0~32\ : std_logic;
SIGNAL \s2|Add0~32COUT1_61\ : std_logic;
SIGNAL \s2|Add0~35_combout\ : std_logic;
SIGNAL \s2|Add0~2\ : std_logic;
SIGNAL \s2|Add0~2COUT1_56\ : std_logic;
SIGNAL \s2|Add0~7COUT1_57\ : std_logic;
SIGNAL \s2|Add0~12\ : std_logic;
SIGNAL \s2|Add0~12COUT1_58\ : std_logic;
SIGNAL \s2|Add0~15_combout\ : std_logic;
SIGNAL \s2|Add0~17\ : std_logic;
SIGNAL \s2|Add0~17COUT1_59\ : std_logic;
SIGNAL \s2|Add0~20_combout\ : std_logic;
SIGNAL \s2|Add0~22\ : std_logic;
SIGNAL \s2|Add0~37\ : std_logic;
SIGNAL \s2|Add0~37COUT1_62\ : std_logic;
SIGNAL \s2|Add0~42\ : std_logic;
SIGNAL \s2|Add0~42COUT1_63\ : std_logic;
SIGNAL \s2|Add0~45_combout\ : std_logic;
SIGNAL \s2|Equal0~1\ : std_logic;
SIGNAL \s2|Add0~47\ : std_logic;
SIGNAL \s2|Add0~50_combout\ : std_logic;
SIGNAL \s2|Equal0~2\ : std_logic;
SIGNAL \s2|Add0~5_combout\ : std_logic;
SIGNAL \s2|Add0~7\ : std_logic;
SIGNAL \s2|Add0~10_combout\ : std_logic;
SIGNAL \s2|Equal0~0\ : std_logic;
SIGNAL \s2|Add0~40_combout\ : std_logic;
SIGNAL \s3|Equal0~5\ : std_logic;
SIGNAL \s3|count[9]~17\ : std_logic;
SIGNAL \s3|count[9]~17COUT1_34\ : std_logic;
SIGNAL \s3|count[10]~21\ : std_logic;
SIGNAL \s3|count[11]~23\ : std_logic;
SIGNAL \s3|count[11]~23COUT1_35\ : std_logic;
SIGNAL \s3|Equal0~6\ : std_logic;
SIGNAL \s3|Equal0~2\ : std_logic;
SIGNAL \s3|Equal0~1\ : std_logic;
SIGNAL \s3|Equal0~0\ : std_logic;
SIGNAL \s3|Equal0~3\ : std_logic;
SIGNAL \s3|Equal0~4_combout\ : std_logic;
SIGNAL \s3|Equal0~7_combout\ : std_logic;
SIGNAL \s3|ledsig~regout\ : std_logic;
SIGNAL \s0|c|S1|T1|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S1|T1|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S1|T2|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S1|T2|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S1|T3|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S1|T3|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S1|T4|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S1|T4|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S2|T1|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S2|T1|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S2|T2|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S2|T2|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S2|T3|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S2|T3|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S2|T4|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S2|T4|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S3|T1|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S3|T1|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S3|T2|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S3|T2|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S3|T3|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S3|T3|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S3|T4|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S3|T4|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S4|T1|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S4|T1|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S4|T2|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S4|T2|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S4|T3|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S4|T3|D|Q~regout\ : std_logic;
SIGNAL \s0|c|S4|T4|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|S4|T4|D|Q~regout\ : std_logic;
SIGNAL \s0|c|T1|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|T1|D|Q~regout\ : std_logic;
SIGNAL \s0|c|T2|D|Qbar~regout\ : std_logic;
SIGNAL \s0|c|T2|D|Q~regout\ : std_logic;
SIGNAL \s0|D0|Q~regout\ : std_logic;
SIGNAL \s0|D1|Q~regout\ : std_logic;
SIGNAL \s0|output~2_combout\ : std_logic;
SIGNAL \s0|output~1_combout\ : std_logic;
SIGNAL \s0|output~0_combout\ : std_logic;
SIGNAL \s0|output~combout\ : std_logic;
SIGNAL \s6|reactcount_var[1]~5\ : std_logic;
SIGNAL \s6|reactcount_var[1]~5COUT1_8\ : std_logic;
SIGNAL \s6|reactcount_var[2]~3\ : std_logic;
SIGNAL \s6|reactcount_var[2]~3COUT1_9\ : std_logic;
SIGNAL \oversig~0_combout\ : std_logic;
SIGNAL \s3|toled~regout\ : std_logic;
SIGNAL \s6|ledcount_var[1]~1\ : std_logic;
SIGNAL \s6|ledcount_var[1]~1COUT1_8\ : std_logic;
SIGNAL \s6|ledcount_var[2]~3\ : std_logic;
SIGNAL \s6|ledcount_var[2]~3COUT1_9\ : std_logic;
SIGNAL \oversig~1_combout\ : std_logic;
SIGNAL \oversig~2_combout\ : std_logic;
SIGNAL \oversig~regout\ : std_logic;
SIGNAL \LED~0\ : std_logic;
SIGNAL \s5|done_sig~0_combout\ : std_logic;
SIGNAL \s5|LessThan2~1_combout\ : std_logic;
SIGNAL \s5|done_sig~regout\ : std_logic;
SIGNAL \s5|done~regout\ : std_logic;
SIGNAL \put_char~regout\ : std_logic;
SIGNAL \s7|state.S7~regout\ : std_logic;
SIGNAL \s7|state.S8~regout\ : std_logic;
SIGNAL \s7|state.S9~regout\ : std_logic;
SIGNAL \s7|state.S0~regout\ : std_logic;
SIGNAL \s7|Add0~0_combout\ : std_logic;
SIGNAL \s7|LessThan0~0_combout\ : std_logic;
SIGNAL \s7|state.S1~regout\ : std_logic;
SIGNAL \s7|state.S2~regout\ : std_logic;
SIGNAL \s7|lcd[6]~0_combout\ : std_logic;
SIGNAL \s7|state.S3~regout\ : std_logic;
SIGNAL \s7|state.S4~regout\ : std_logic;
SIGNAL \s7|state.S5~regout\ : std_logic;
SIGNAL \s7|state.S6~regout\ : std_logic;
SIGNAL \s7|lcd[6]~1_combout\ : std_logic;
SIGNAL \s7|ack~regout\ : std_logic;
SIGNAL \write_row[0]~0_combout\ : std_logic;
SIGNAL \erase~regout\ : std_logic;
SIGNAL \s7|process_1~0_combout\ : std_logic;
SIGNAL \s7|Selector8~1_combout\ : std_logic;
SIGNAL \s7|Selector8~0_combout\ : std_logic;
SIGNAL \s7|lcd_rs~regout\ : std_logic;
SIGNAL \s7|Selector10~1_combout\ : std_logic;
SIGNAL \s7|Selector10~0_combout\ : std_logic;
SIGNAL \s7|lcd_en~regout\ : std_logic;
SIGNAL \s7|WideOr1~0_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \write_data[3]~10_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \s4|rtime_sig[0]~1\ : std_logic;
SIGNAL \s4|rtime_sig[1]~3\ : std_logic;
SIGNAL \s4|rtime_sig[1]~3COUT1_27\ : std_logic;
SIGNAL \s4|rtime_sig[2]~5\ : std_logic;
SIGNAL \s4|rtime_sig[2]~5COUT1_28\ : std_logic;
SIGNAL \s4|rtime_sig[3]~7\ : std_logic;
SIGNAL \s4|rtime_sig[3]~7COUT1_29\ : std_logic;
SIGNAL \s4|rtime_sig[4]~9\ : std_logic;
SIGNAL \s4|rtime_sig[4]~9COUT1_30\ : std_logic;
SIGNAL \s4|rtime_sig[5]~11\ : std_logic;
SIGNAL \s4|rtime_sig[6]~13\ : std_logic;
SIGNAL \s4|rtime_sig[6]~13COUT1_31\ : std_logic;
SIGNAL \s4|rtime_sig[7]~15\ : std_logic;
SIGNAL \s4|rtime_sig[7]~15COUT1_32\ : std_logic;
SIGNAL \s4|rtime_sig[8]~25\ : std_logic;
SIGNAL \s4|rtime_sig[8]~25COUT1_33\ : std_logic;
SIGNAL \s4|rtime_sig[9]~23\ : std_logic;
SIGNAL \s4|rtime_sig[9]~23COUT1_34\ : std_logic;
SIGNAL \s4|rtime_sig[10]~21\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \timeint~42_combout\ : std_logic;
SIGNAL \timeint~50_combout\ : std_logic;
SIGNAL \Add3~37COUT1_151\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_152\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_153\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_154\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \timeint~86_combout\ : std_logic;
SIGNAL \Add3~100_combout\ : std_logic;
SIGNAL \timeint[17]~COMBOUT\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_160\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_161\ : std_logic;
SIGNAL \Add6~150_combout\ : std_logic;
SIGNAL \timeint[8]~COMBOUT\ : std_logic;
SIGNAL \Add6~152\ : std_logic;
SIGNAL \Add6~152COUT1_162\ : std_logic;
SIGNAL \Add6~145_combout\ : std_logic;
SIGNAL \timeint[9]~COMBOUT\ : std_logic;
SIGNAL \Add6~147\ : std_logic;
SIGNAL \Add6~147COUT1_163\ : std_logic;
SIGNAL \Add6~140_combout\ : std_logic;
SIGNAL \timeint[10]~COMBOUT\ : std_logic;
SIGNAL \Add6~142\ : std_logic;
SIGNAL \s4|rtime_sig[11]~19\ : std_logic;
SIGNAL \s4|rtime_sig[11]~19COUT1_35\ : std_logic;
SIGNAL \Add3~125_combout\ : std_logic;
SIGNAL \timeint[12]~COMBOUT\ : std_logic;
SIGNAL \Add3~27COUT1_155\ : std_logic;
SIGNAL \Add3~147COUT1_156\ : std_logic;
SIGNAL \Add3~142COUT1_157\ : std_logic;
SIGNAL \Add3~137COUT1_158\ : std_logic;
SIGNAL \Add3~130_combout\ : std_logic;
SIGNAL \Add6~135_combout\ : std_logic;
SIGNAL \timeint[11]~COMBOUT\ : std_logic;
SIGNAL \Add6~137\ : std_logic;
SIGNAL \Add6~137COUT1_164\ : std_logic;
SIGNAL \Add6~130_combout\ : std_logic;
SIGNAL \timeint~70\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \timeint~88_combout\ : std_logic;
SIGNAL \Add3~127\ : std_logic;
SIGNAL \Add3~127COUT1_159\ : std_logic;
SIGNAL \Add3~120_combout\ : std_logic;
SIGNAL \timeint[13]~COMBOUT\ : std_logic;
SIGNAL \Add6~132\ : std_logic;
SIGNAL \Add6~132COUT1_165\ : std_logic;
SIGNAL \Add6~125_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_153\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \timeint~69_combout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~122COUT1_160\ : std_logic;
SIGNAL \Add3~115_combout\ : std_logic;
SIGNAL \Add6~127\ : std_logic;
SIGNAL \Add6~127COUT1_166\ : std_logic;
SIGNAL \Add6~120_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_154\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \timeint~68_combout\ : std_logic;
SIGNAL \timeint[14]~COMBOUT\ : std_logic;
SIGNAL \Add6~122\ : std_logic;
SIGNAL \Add6~122COUT1_167\ : std_logic;
SIGNAL \Add6~115_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_155\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \timeint~67_combout\ : std_logic;
SIGNAL \Add3~117\ : std_logic;
SIGNAL \Add3~117COUT1_161\ : std_logic;
SIGNAL \Add3~110_combout\ : std_logic;
SIGNAL \timeint[15]~COMBOUT\ : std_logic;
SIGNAL \Add6~117\ : std_logic;
SIGNAL \Add3~112\ : std_logic;
SIGNAL \Add3~112COUT1_162\ : std_logic;
SIGNAL \Add3~105_combout\ : std_logic;
SIGNAL \Add6~110_combout\ : std_logic;
SIGNAL \timeint[16]~COMBOUT\ : std_logic;
SIGNAL \Add6~112\ : std_logic;
SIGNAL \Add6~112COUT1_168\ : std_logic;
SIGNAL \Add6~105_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \timeint~65_combout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~102COUT1_163\ : std_logic;
SIGNAL \Add3~95_combout\ : std_logic;
SIGNAL \timeint[18]~COMBOUT\ : std_logic;
SIGNAL \Add6~107\ : std_logic;
SIGNAL \Add6~107COUT1_169\ : std_logic;
SIGNAL \Add6~100_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_157\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \timeint~64_combout\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~97COUT1_164\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \timeint[19]~COMBOUT\ : std_logic;
SIGNAL \Add6~102\ : std_logic;
SIGNAL \Add6~102COUT1_170\ : std_logic;
SIGNAL \Add6~95_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_158\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \timeint~63_combout\ : std_logic;
SIGNAL \Add3~92\ : std_logic;
SIGNAL \Add3~92COUT1_165\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add6~97\ : std_logic;
SIGNAL \Add6~97COUT1_171\ : std_logic;
SIGNAL \Add6~90_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_159\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \timeint~62_combout\ : std_logic;
SIGNAL \timeint[20]~COMBOUT\ : std_logic;
SIGNAL \Add6~92\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \timeint[22]~COMBOUT\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~87COUT1_166\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add6~85_combout\ : std_logic;
SIGNAL \timeint[21]~COMBOUT\ : std_logic;
SIGNAL \Add6~87\ : std_logic;
SIGNAL \Add6~87COUT1_172\ : std_logic;
SIGNAL \Add6~80_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \timeint~60_combout\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~77COUT1_167\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \timeint[23]~COMBOUT\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~82COUT1_173\ : std_logic;
SIGNAL \Add6~75_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_161\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \timeint~59_combout\ : std_logic;
SIGNAL \Add3~72\ : std_logic;
SIGNAL \Add3~72COUT1_168\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Add6~77\ : std_logic;
SIGNAL \Add6~77COUT1_174\ : std_logic;
SIGNAL \Add6~70_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_162\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \timeint~58_combout\ : std_logic;
SIGNAL \timeint[24]~COMBOUT\ : std_logic;
SIGNAL \Add6~72\ : std_logic;
SIGNAL \Add6~72COUT1_175\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_163\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \timeint~57_combout\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~67COUT1_169\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \timeint[25]~COMBOUT\ : std_logic;
SIGNAL \Add6~67\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~62COUT1_170\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \timeint[26]~COMBOUT\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~62COUT1_176\ : std_logic;
SIGNAL \Add6~55_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \timeint~55_combout\ : std_logic;
SIGNAL \timeint[27]~COMBOUT\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~57COUT1_177\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_165\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \timeint~54_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~52COUT1_171\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \timeint[28]~COMBOUT\ : std_logic;
SIGNAL \Add6~52\ : std_logic;
SIGNAL \Add6~52COUT1_178\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_166\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \timeint~53_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~47COUT1_172\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \timeint[29]~COMBOUT\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~47COUT1_179\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_173\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_167\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \timeint~51_combout\ : std_logic;
SIGNAL \timeint[30]~COMBOUT\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \timeint~37_combout\ : std_logic;
SIGNAL \timeint~52\ : std_logic;
SIGNAL \Add6~42_cout0\ : std_logic;
SIGNAL \Add6~42COUT1_156\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_157\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_158\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_159\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \timeint~48\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \timeint~85_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~145_combout\ : std_logic;
SIGNAL \timeint~74\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_149\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \timeint~92_combout\ : std_logic;
SIGNAL \Add3~147\ : std_logic;
SIGNAL \Add3~140_combout\ : std_logic;
SIGNAL \timeint~73\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_150\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \timeint~91_combout\ : std_logic;
SIGNAL \Add3~142\ : std_logic;
SIGNAL \Add3~135_combout\ : std_logic;
SIGNAL \timeint~72\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_151\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \timeint~90_combout\ : std_logic;
SIGNAL \Add3~137\ : std_logic;
SIGNAL \Add3~132\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_174\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \timeint~39_combout\ : std_logic;
SIGNAL \timeint~49_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \timeint~40\ : std_logic;
SIGNAL \Add3~37_cout0\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \timeint~44_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \timeint~43\ : std_logic;
SIGNAL \Add0~32_cout0\ : std_logic;
SIGNAL \Add0~32COUT1_146\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \timeint~76_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \timeint~77_combout\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \timeint~45\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_147\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \timeint~79_combout\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \timeint~80_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \timeint~46\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_148\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \timeint~82_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \timeint~83_combout\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \timeint~47\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_152\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \timeint~89_combout\ : std_logic;
SIGNAL \timeint~71\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_156\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \timeint~66_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_160\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \timeint~61_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_164\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \timeint~56_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_168\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \write_data[3]~9_combout\ : std_logic;
SIGNAL \write_data[3]~11_combout\ : std_logic;
SIGNAL \nextd~4_combout\ : std_logic;
SIGNAL \nextd~5_combout\ : std_logic;
SIGNAL \nextd~2_combout\ : std_logic;
SIGNAL \nextd~3_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \d~2_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \nextd~0_combout\ : std_logic;
SIGNAL \nextd~1_combout\ : std_logic;
SIGNAL \write_data[6]~13_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \putdata~3_combout\ : std_logic;
SIGNAL \timeint~36\ : std_logic;
SIGNAL \write_data[3]~3_combout\ : std_logic;
SIGNAL \write_data[3]~16_combout\ : std_logic;
SIGNAL \putdata~1_combout\ : std_logic;
SIGNAL \putdata~2_combout\ : std_logic;
SIGNAL \write_data[0]~12_combout\ : std_logic;
SIGNAL \s7|state~29\ : std_logic;
SIGNAL \s7|Selector7~1\ : std_logic;
SIGNAL \s7|Selector5~0_combout\ : std_logic;
SIGNAL \s7|Selector7~0_combout\ : std_logic;
SIGNAL \digit[0]~1\ : std_logic;
SIGNAL \digit[0]~1COUT1_17\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_49\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add4~45_cout0\ : std_logic;
SIGNAL \Add4~45COUT1_49\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \timeint~38\ : std_logic;
SIGNAL \putdata~4_combout\ : std_logic;
SIGNAL \putdata~5_combout\ : std_logic;
SIGNAL \s7|Selector1~0_combout\ : std_logic;
SIGNAL \s7|lcd[1]~2_combout\ : std_logic;
SIGNAL \digit[1]~3\ : std_logic;
SIGNAL \digit[1]~3COUT1_18\ : std_logic;
SIGNAL \Add1~8\ : std_logic;
SIGNAL \Add1~8COUT1_50\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~3COUT1_50\ : std_logic;
SIGNAL \Add4~7_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \timeint~41\ : std_logic;
SIGNAL \putdata~6_combout\ : std_logic;
SIGNAL \putdata~7_combout\ : std_logic;
SIGNAL \s7|Selector5~2\ : std_logic;
SIGNAL \s7|Selector5~1_combout\ : std_logic;
SIGNAL \digit[2]~5\ : std_logic;
SIGNAL \digit[2]~5COUT1_19\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~14COUT1_51\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~9COUT1_51\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \timeint~75\ : std_logic;
SIGNAL \putdata~8_combout\ : std_logic;
SIGNAL \putdata~9_combout\ : std_logic;
SIGNAL \s7|Selector4~1_combout\ : std_logic;
SIGNAL \s7|Selector4~0_combout\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~20COUT1_52\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~15COUT1_52\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \digit[3]~7\ : std_logic;
SIGNAL \digit[3]~7COUT1_20\ : std_logic;
SIGNAL \putdata~0_combout\ : std_logic;
SIGNAL \write_data[6]~14_combout\ : std_logic;
SIGNAL \write_data[6]~15_combout\ : std_logic;
SIGNAL \timeint~78\ : std_logic;
SIGNAL \putdata~10_combout\ : std_logic;
SIGNAL \putdata~11_combout\ : std_logic;
SIGNAL \s7|lcd[7]~3_combout\ : std_logic;
SIGNAL \s7|Selector3~0_combout\ : std_logic;
SIGNAL \timeint~81\ : std_logic;
SIGNAL \digit[4]~9\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \putdata~13_combout\ : std_logic;
SIGNAL \putdata~14_combout\ : std_logic;
SIGNAL \putdata~15_combout\ : std_logic;
SIGNAL \putdata~16_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_53\ : std_logic;
SIGNAL \Add4~31_combout\ : std_logic;
SIGNAL \Add4~36_combout\ : std_logic;
SIGNAL \digit[5]~11\ : std_logic;
SIGNAL \digit[5]~11COUT1_21\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_53\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \timeint~84\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \putdata~18_combout\ : std_logic;
SIGNAL \putdata~19_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~38COUT1_54\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~33COUT1_54\ : std_logic;
SIGNAL \Add4~37_combout\ : std_logic;
SIGNAL \Add4~42_combout\ : std_logic;
SIGNAL \digit[6]~13\ : std_logic;
SIGNAL \digit[6]~13COUT1_22\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \timeint~87\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \putdata~21_combout\ : std_logic;
SIGNAL \putdata~22_combout\ : std_logic;
SIGNAL \s6|ledcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6|reactcount\ : std_logic_vector(3 DOWNTO 0);
SIGNAL write_column : std_logic_vector(3 DOWNTO 0);
SIGNAL \s7|data_dis\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s6|ledcount_var\ : std_logic_vector(31 DOWNTO 0);
SIGNAL d : std_logic_vector(31 DOWNTO 0);
SIGNAL \s2|outsig\ : std_logic_vector(10 DOWNTO 0);
SIGNAL write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \s7|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \s2|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \s7|cmd_position\ : std_logic_vector(7 DOWNTO 0);
SIGNAL nextd : std_logic_vector(31 DOWNTO 0);
SIGNAL \s3|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s7|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s2|output\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \s3|random_sig\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \s4|rtime_sig\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s4|tottime\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \s1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \s6|reactcount_var\ : std_logic_vector(31 DOWNTO 0);
SIGNAL timeint : std_logic_vector(31 DOWNTO 0);
SIGNAL \s5|count_sig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL digit : std_logic_vector(31 DOWNTO 0);
SIGNAL \s5|delay\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_nreact~combout\ : std_logic;
SIGNAL \ALT_INV_nreset~combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_nreact <= nreact;
ww_nreset <= nreset;
LED <= ww_LED;
rs <= ww_rs;
rw <= ww_rw;
en <= ww_en;
data <= ww_data;
b11 <= ww_b11;
b12 <= ww_b12;
gameover <= ww_gameover;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nreact~combout\ <= NOT \nreact~combout\;
\ALT_INV_nreset~combout\ <= NOT \nreset~combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X13_Y3_N2
\s1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~75_combout\ = ((!\s1|count\(0)))
-- \s1|Add0~77\ = CARRY(((\s1|count\(0))))
-- \s1|Add0~77COUT1_81\ = CARRY(((\s1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~75_combout\,
	cout0 => \s1|Add0~77\,
	cout1 => \s1|Add0~77COUT1_81\);

-- Location: LC_X13_Y3_N5
\s1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~15_combout\ = (\s1|count\(3) $ ((\s1|Add0~67\)))
-- \s1|Add0~17\ = CARRY(((!\s1|Add0~67\) # (!\s1|count\(3))))
-- \s1|Add0~17COUT1_83\ = CARRY(((!\s1|Add0~67\) # (!\s1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(3),
	cin => \s1|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~15_combout\,
	cout0 => \s1|Add0~17\,
	cout1 => \s1|Add0~17COUT1_83\);

-- Location: LC_X13_Y3_N6
\s1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~20_combout\ = (\s1|count\(4) $ ((!(!\s1|Add0~67\ & \s1|Add0~17\) # (\s1|Add0~67\ & \s1|Add0~17COUT1_83\))))
-- \s1|Add0~22\ = CARRY(((\s1|count\(4) & !\s1|Add0~17\)))
-- \s1|Add0~22COUT1_84\ = CARRY(((\s1|count\(4) & !\s1|Add0~17COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(4),
	cin => \s1|Add0~67\,
	cin0 => \s1|Add0~17\,
	cin1 => \s1|Add0~17COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~20_combout\,
	cout0 => \s1|Add0~22\,
	cout1 => \s1|Add0~22COUT1_84\);

-- Location: LC_X14_Y3_N9
\s1|count[4]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(4) = DFFEAS((\s1|Add0~20_combout\ & (((!\s1|Equal0~2_combout\) # (!\s1|Equal0~3\)) # (!\s1|Equal0~4\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~4\,
	datab => \s1|Equal0~3\,
	datac => \s1|Add0~20_combout\,
	datad => \s1|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(4));

-- Location: LC_X13_Y3_N7
\s1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~25_combout\ = (\s1|count\(5) $ (((!\s1|Add0~67\ & \s1|Add0~22\) # (\s1|Add0~67\ & \s1|Add0~22COUT1_84\))))
-- \s1|Add0~27\ = CARRY(((!\s1|Add0~22\) # (!\s1|count\(5))))
-- \s1|Add0~27COUT1_85\ = CARRY(((!\s1|Add0~22COUT1_84\) # (!\s1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(5),
	cin => \s1|Add0~67\,
	cin0 => \s1|Add0~22\,
	cin1 => \s1|Add0~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~25_combout\,
	cout0 => \s1|Add0~27\,
	cout1 => \s1|Add0~27COUT1_85\);

-- Location: LC_X14_Y3_N0
\s1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~40_combout\ = \s1|count\(8) $ ((((!\s1|Add0~37\))))
-- \s1|Add0~42\ = CARRY((\s1|count\(8) & ((!\s1|Add0~37\))))
-- \s1|Add0~42COUT1_87\ = CARRY((\s1|count\(8) & ((!\s1|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s1|count\(8),
	cin => \s1|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~40_combout\,
	cout0 => \s1|Add0~42\,
	cout1 => \s1|Add0~42COUT1_87\);

-- Location: LC_X15_Y3_N7
\s1|count[8]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(8) = DFFEAS((\s1|Add0~40_combout\ & (((!\s1|Equal0~3\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~2_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~2_combout\,
	datab => \s1|Equal0~4\,
	datac => \s1|Equal0~3\,
	datad => \s1|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(8));

-- Location: LC_X12_Y3_N3
\s1|count[5]\ : maxv_lcell
-- Equation(s):
-- \s1|Equal0~3\ = (\s1|count\(6) & (!\s1|count\(7) & (!C1_count[5] & \s1|count\(8))))
-- \s1|count\(5) = DFFEAS(\s1|Equal0~3\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|count\(6),
	datab => \s1|count\(7),
	datac => \s1|Add0~25_combout\,
	datad => \s1|count\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Equal0~3\,
	regout => \s1|count\(5));

-- Location: LC_X13_Y3_N8
\s1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~30_combout\ = (\s1|count\(6) $ ((!(!\s1|Add0~67\ & \s1|Add0~27\) # (\s1|Add0~67\ & \s1|Add0~27COUT1_85\))))
-- \s1|Add0~32\ = CARRY(((\s1|count\(6) & !\s1|Add0~27\)))
-- \s1|Add0~32COUT1_86\ = CARRY(((\s1|count\(6) & !\s1|Add0~27COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(6),
	cin => \s1|Add0~67\,
	cin0 => \s1|Add0~27\,
	cin1 => \s1|Add0~27COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~30_combout\,
	cout0 => \s1|Add0~32\,
	cout1 => \s1|Add0~32COUT1_86\);

-- Location: LC_X13_Y3_N9
\s1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~35_combout\ = (\s1|count\(7) $ (((!\s1|Add0~67\ & \s1|Add0~32\) # (\s1|Add0~67\ & \s1|Add0~32COUT1_86\))))
-- \s1|Add0~37\ = CARRY(((!\s1|Add0~32COUT1_86\) # (!\s1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(7),
	cin => \s1|Add0~67\,
	cin0 => \s1|Add0~32\,
	cin1 => \s1|Add0~32COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~35_combout\,
	cout => \s1|Add0~37\);

-- Location: LC_X14_Y3_N1
\s1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~45_combout\ = (\s1|count\(9) $ (((!\s1|Add0~37\ & \s1|Add0~42\) # (\s1|Add0~37\ & \s1|Add0~42COUT1_87\))))
-- \s1|Add0~47\ = CARRY(((!\s1|Add0~42\) # (!\s1|count\(9))))
-- \s1|Add0~47COUT1_88\ = CARRY(((!\s1|Add0~42COUT1_87\) # (!\s1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(9),
	cin => \s1|Add0~37\,
	cin0 => \s1|Add0~42\,
	cin1 => \s1|Add0~42COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~45_combout\,
	cout0 => \s1|Add0~47\,
	cout1 => \s1|Add0~47COUT1_88\);

-- Location: LC_X15_Y3_N4
\s1|count[9]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(9) = DFFEAS((\s1|Add0~45_combout\ & (((!\s1|Equal0~3\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~2_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~2_combout\,
	datab => \s1|Equal0~4\,
	datac => \s1|Add0~45_combout\,
	datad => \s1|Equal0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(9));

-- Location: LC_X14_Y3_N2
\s1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~0_combout\ = (\s1|count\(10) $ ((!(!\s1|Add0~37\ & \s1|Add0~47\) # (\s1|Add0~37\ & \s1|Add0~47COUT1_88\))))
-- \s1|Add0~2\ = CARRY(((\s1|count\(10) & !\s1|Add0~47\)))
-- \s1|Add0~2COUT1_89\ = CARRY(((\s1|count\(10) & !\s1|Add0~47COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(10),
	cin => \s1|Add0~37\,
	cin0 => \s1|Add0~47\,
	cin1 => \s1|Add0~47COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~0_combout\,
	cout0 => \s1|Add0~2\,
	cout1 => \s1|Add0~2COUT1_89\);

-- Location: LC_X15_Y3_N5
\s1|count[10]\ : maxv_lcell
-- Equation(s):
-- \s1|Equal0~0\ = ((!\s1|count\(11) & (!C1_count[10] & !\s1|count\(12))))
-- \s1|count\(10) = DFFEAS(\s1|Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s1|count\(11),
	datac => \s1|Add0~0_combout\,
	datad => \s1|count\(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Equal0~0\,
	regout => \s1|count\(10));

-- Location: LC_X14_Y3_N3
\s1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~5_combout\ = (\s1|count\(11) $ (((!\s1|Add0~37\ & \s1|Add0~2\) # (\s1|Add0~37\ & \s1|Add0~2COUT1_89\))))
-- \s1|Add0~7\ = CARRY(((!\s1|Add0~2\) # (!\s1|count\(11))))
-- \s1|Add0~7COUT1_90\ = CARRY(((!\s1|Add0~2COUT1_89\) # (!\s1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(11),
	cin => \s1|Add0~37\,
	cin0 => \s1|Add0~2\,
	cin1 => \s1|Add0~2COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~5_combout\,
	cout0 => \s1|Add0~7\,
	cout1 => \s1|Add0~7COUT1_90\);

-- Location: LC_X15_Y3_N9
\s1|count[11]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s1|Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(11));

-- Location: LC_X14_Y3_N4
\s1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~10_combout\ = (\s1|count\(12) $ ((!(!\s1|Add0~37\ & \s1|Add0~7\) # (\s1|Add0~37\ & \s1|Add0~7COUT1_90\))))
-- \s1|Add0~12\ = CARRY(((\s1|count\(12) & !\s1|Add0~7COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(12),
	cin => \s1|Add0~37\,
	cin0 => \s1|Add0~7\,
	cin1 => \s1|Add0~7COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~10_combout\,
	cout => \s1|Add0~12\);

-- Location: LC_X15_Y3_N8
\s1|count[12]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(12) = DFFEAS((((\s1|Add0~10_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s1|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(12));

-- Location: LC_X14_Y3_N5
\s1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~50_combout\ = \s1|count\(13) $ ((((\s1|Add0~12\))))
-- \s1|Add0~52\ = CARRY(((!\s1|Add0~12\)) # (!\s1|count\(13)))
-- \s1|Add0~52COUT1_91\ = CARRY(((!\s1|Add0~12\)) # (!\s1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s1|count\(13),
	cin => \s1|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~50_combout\,
	cout0 => \s1|Add0~52\,
	cout1 => \s1|Add0~52COUT1_91\);

-- Location: LC_X14_Y3_N6
\s1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~55_combout\ = \s1|count\(14) $ ((((!(!\s1|Add0~12\ & \s1|Add0~52\) # (\s1|Add0~12\ & \s1|Add0~52COUT1_91\)))))
-- \s1|Add0~57\ = CARRY((\s1|count\(14) & ((!\s1|Add0~52\))))
-- \s1|Add0~57COUT1_92\ = CARRY((\s1|count\(14) & ((!\s1|Add0~52COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s1|count\(14),
	cin => \s1|Add0~12\,
	cin0 => \s1|Add0~52\,
	cin1 => \s1|Add0~52COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~55_combout\,
	cout0 => \s1|Add0~57\,
	cout1 => \s1|Add0~57COUT1_92\);

-- Location: LC_X15_Y3_N3
\s1|count[14]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(14) = DFFEAS((\s1|Add0~55_combout\ & (((!\s1|Equal0~3\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~2_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~2_combout\,
	datab => \s1|Equal0~4\,
	datac => \s1|Add0~55_combout\,
	datad => \s1|Equal0~3\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(14));

-- Location: LC_X15_Y3_N1
\s1|count[13]\ : maxv_lcell
-- Equation(s):
-- \s1|Equal0~4\ = (\s1|count\(9) & (\s1|count\(15) & (!C1_count[13] & \s1|count\(14))))
-- \s1|count\(13) = DFFEAS(\s1|Equal0~4\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|count\(9),
	datab => \s1|count\(15),
	datac => \s1|Add0~50_combout\,
	datad => \s1|count\(14),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Equal0~4\,
	regout => \s1|count\(13));

-- Location: LC_X13_Y3_N0
\s1|count[0]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(0) = DFFEAS((\s1|Add0~75_combout\ & (((!\s1|Equal0~2_combout\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~3\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~3\,
	datab => \s1|Add0~75_combout\,
	datac => \s1|Equal0~4\,
	datad => \s1|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(0));

-- Location: LC_X13_Y3_N3
\s1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~70_combout\ = (\s1|count\(1) $ ((\s1|Add0~77\)))
-- \s1|Add0~72\ = CARRY(((!\s1|Add0~77\) # (!\s1|count\(1))))
-- \s1|Add0~72COUT1_82\ = CARRY(((!\s1|Add0~77COUT1_81\) # (!\s1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(1),
	cin0 => \s1|Add0~77\,
	cin1 => \s1|Add0~77COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~70_combout\,
	cout0 => \s1|Add0~72\,
	cout1 => \s1|Add0~72COUT1_82\);

-- Location: LC_X13_Y3_N1
\s1|count[1]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(1) = DFFEAS((((\s1|Add0~70_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s1|Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(1));

-- Location: LC_X13_Y3_N4
\s1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~65_combout\ = (\s1|count\(2) $ ((!\s1|Add0~72\)))
-- \s1|Add0~67\ = CARRY(((\s1|count\(2) & !\s1|Add0~72COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(2),
	cin0 => \s1|Add0~72\,
	cin1 => \s1|Add0~72COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~65_combout\,
	cout => \s1|Add0~67\);

-- Location: LC_X14_Y3_N8
\s1|count[2]\ : maxv_lcell
-- Equation(s):
-- \s1|Equal0~1\ = (!\s1|count\(1) & (\s1|count\(4) & (!C1_count[2] & !\s1|count\(0))))
-- \s1|count\(2) = DFFEAS(\s1|Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|count\(1),
	datab => \s1|count\(4),
	datac => \s1|Add0~65_combout\,
	datad => \s1|count\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Equal0~1\,
	regout => \s1|count\(2));

-- Location: LC_X12_Y3_N2
\s1|count[7]\ : maxv_lcell
-- Equation(s):
-- \s1|LessThan0~1\ = (((!\s1|count\(8)) # (!C1_count[7])))
-- \s1|count\(7) = DFFEAS(\s1|LessThan0~1\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s1|Add0~35_combout\,
	datad => \s1|count\(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|LessThan0~1\,
	regout => \s1|count\(7));

-- Location: LC_X12_Y3_N6
\s1|count[6]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(6) = DFFEAS((\s1|Add0~30_combout\ & (((!\s1|Equal0~2_combout\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~3\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~3\,
	datab => \s1|Add0~30_combout\,
	datac => \s1|Equal0~4\,
	datad => \s1|Equal0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(6));

-- Location: LC_X12_Y3_N7
\s1|count[3]\ : maxv_lcell
-- Equation(s):
-- \s1|LessThan0~0\ = (!\s1|count\(6) & (((!\s1|count\(4) & !C1_count[3])) # (!\s1|count\(5))))
-- \s1|count\(3) = DFFEAS(\s1|LessThan0~0\, GLOBAL(\CLK~combout\), VCC, , , \s1|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0155",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|count\(6),
	datab => \s1|count\(4),
	datac => \s1|Add0~15_combout\,
	datad => \s1|count\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|LessThan0~0\,
	regout => \s1|count\(3));

-- Location: LC_X15_Y3_N6
\s1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \s1|Equal0~2_combout\ = ((!\s1|count\(3) & (\s1|Equal0~1\ & \s1|Equal0~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(3),
	datac => \s1|Equal0~1\,
	datad => \s1|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Equal0~2_combout\);

-- Location: LC_X14_Y3_N7
\s1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \s1|Add0~60_combout\ = (\s1|count\(15) $ (((!\s1|Add0~12\ & \s1|Add0~57\) # (\s1|Add0~12\ & \s1|Add0~57COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|count\(15),
	cin => \s1|Add0~12\,
	cin0 => \s1|Add0~57\,
	cin1 => \s1|Add0~57COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|Add0~60_combout\);

-- Location: LC_X15_Y3_N2
\s1|count[15]\ : maxv_lcell
-- Equation(s):
-- \s1|count\(15) = DFFEAS((\s1|Add0~60_combout\ & (((!\s1|Equal0~3\) # (!\s1|Equal0~4\)) # (!\s1|Equal0~2_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|Equal0~2_combout\,
	datab => \s1|Equal0~4\,
	datac => \s1|Equal0~3\,
	datad => \s1|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|count\(15));

-- Location: LC_X12_Y3_N8
\s1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \s1|LessThan0~2_combout\ = (!\s1|count\(9) & (\s1|Equal0~0\ & ((\s1|LessThan0~1\) # (\s1|LessThan0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s1|count\(9),
	datab => \s1|LessThan0~1\,
	datac => \s1|LessThan0~0\,
	datad => \s1|Equal0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s1|LessThan0~2_combout\);

-- Location: LC_X12_Y3_N9
\s1|outsig\ : maxv_lcell
-- Equation(s):
-- \s1|outsig~regout\ = DFFEAS((\s1|count\(15)) # ((\s1|count\(14) & (\s1|count\(13) & !\s1|LessThan0~2_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s1|count\(15),
	datab => \s1|count\(14),
	datac => \s1|count\(13),
	datad => \s1|LessThan0~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|outsig~regout\);

-- Location: LC_X12_Y3_N4
\s1|outclk\ : maxv_lcell
-- Equation(s):
-- \s1|outclk~regout\ = DFFEAS((((\s1|outsig~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s1|outsig~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1|outclk~regout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nreset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nreset,
	combout => \nreset~combout\);

-- Location: LC_X10_Y9_N0
\s5|Add0~11\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~11_combout\ = ((!\s5|delay\(0)))
-- \s5|Add0~13\ = CARRY(((\s5|delay\(0))))
-- \s5|Add0~13COUT1_46\ = CARRY(((\s5|delay\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~11_combout\,
	cout0 => \s5|Add0~13\,
	cout1 => \s5|Add0~13COUT1_46\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nreact~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nreact,
	combout => \nreact~combout\);

-- Location: LC_X10_Y8_N1
\s5|delay[5]~4\ : maxv_lcell
-- Equation(s):
-- \s5|delay[5]~4_combout\ = (((\s5|delay~2_combout\) # (!\nreset~combout\)) # (!\nreact~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nreact~combout\,
	datac => \nreset~combout\,
	datad => \s5|delay~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|delay[5]~4_combout\);

-- Location: LC_X10_Y8_N5
\s5|delay[5]~3\ : maxv_lcell
-- Equation(s):
-- \s5|delay[5]~3_combout\ = (((\nreset~combout\ & \s5|delay~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nreset~combout\,
	datad => \s5|delay~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|delay[5]~3_combout\);

-- Location: LC_X10_Y9_N5
\s5|Add0~40\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~40_combout\ = (\s5|delay\(5) $ ((\s5|Add0~36\)))
-- \s5|Add0~42\ = CARRY(((!\s5|Add0~36\) # (!\s5|delay\(5))))
-- \s5|Add0~42COUT1_50\ = CARRY(((!\s5|Add0~36\) # (!\s5|delay\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(5),
	cin => \s5|Add0~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~40_combout\,
	cout0 => \s5|Add0~42\,
	cout1 => \s5|Add0~42COUT1_50\);

-- Location: LC_X10_Y9_N6
\s5|Add0~23\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~23_combout\ = \s5|delay\(6) $ ((((!(!\s5|Add0~36\ & \s5|Add0~42\) # (\s5|Add0~36\ & \s5|Add0~42COUT1_50\)))))
-- \s5|Add0~25\ = CARRY((\s5|delay\(6) & ((!\s5|Add0~42\))))
-- \s5|Add0~25COUT1_51\ = CARRY((\s5|delay\(6) & ((!\s5|Add0~42COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s5|delay\(6),
	cin => \s5|Add0~36\,
	cin0 => \s5|Add0~42\,
	cin1 => \s5|Add0~42COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~23_combout\,
	cout0 => \s5|Add0~25\,
	cout1 => \s5|Add0~25COUT1_51\);

-- Location: LC_X10_Y8_N6
\s5|delay[6]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(6) = DFFEAS((\s5|delay[5]~4_combout\ & (\s5|delay[5]~3_combout\ & ((\s5|Add0~23_combout\)))) # (!\s5|delay[5]~4_combout\ & (((\s5|delay\(6))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|delay[5]~3_combout\,
	datab => \s5|delay[5]~4_combout\,
	datac => \s5|delay\(6),
	datad => \s5|Add0~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(6));

-- Location: LC_X10_Y9_N7
\s5|Add0~0\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~0_combout\ = (((!\s5|Add0~36\ & \s5|Add0~25\) # (\s5|Add0~36\ & \s5|Add0~25COUT1_51\) $ (\s5|delay\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \s5|delay\(7),
	cin => \s5|Add0~36\,
	cin0 => \s5|Add0~25\,
	cin1 => \s5|Add0~25COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~0_combout\);

-- Location: LC_X10_Y9_N8
\s5|delay[7]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(7) = DFFEAS((\s5|delay[5]~4_combout\ & (\s5|delay[5]~3_combout\ & (\s5|Add0~0_combout\))) # (!\s5|delay[5]~4_combout\ & (((\s5|delay\(7))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|delay[5]~4_combout\,
	datab => \s5|delay[5]~3_combout\,
	datac => \s5|Add0~0_combout\,
	datad => \s5|delay\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(7));

-- Location: LC_X12_Y8_N3
\s5|count_sig[3]~2\ : maxv_lcell
-- Equation(s):
-- \s5|count_sig[3]~2_combout\ = (((\s5|rst_sig~3_combout\) # (!\nreset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nreset~combout\,
	datad => \s5|rst_sig~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|count_sig[3]~2_combout\);

-- Location: LC_X12_Y8_N0
\s5|count_sig[0]\ : maxv_lcell
-- Equation(s):
-- \s5|count_sig\(0) = DFFEAS((\s5|rst_sig~3_combout\ & (!\s5|count_sig\(0) & (\nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|count_sig[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|rst_sig~3_combout\,
	datab => \s5|count_sig\(0),
	datac => \nreset~combout\,
	aclr => GND,
	ena => \s5|count_sig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|count_sig\(0));

-- Location: LC_X12_Y8_N4
\s5|count_sig[1]\ : maxv_lcell
-- Equation(s):
-- \s5|count_sig\(1) = DFFEAS((\s5|rst_sig~3_combout\ & (\nreset~combout\ & (\s5|count_sig\(0) $ (\s5|count_sig\(1))))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|count_sig[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|rst_sig~3_combout\,
	datab => \s5|count_sig\(0),
	datac => \s5|count_sig\(1),
	datad => \nreset~combout\,
	aclr => GND,
	ena => \s5|count_sig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|count_sig\(1));

-- Location: LC_X12_Y8_N7
\s5|Add1~1\ : maxv_lcell
-- Equation(s):
-- \s5|Add1~1_combout\ = ((\s5|count_sig\(0) & (\s5|count_sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|count_sig\(0),
	datac => \s5|count_sig\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add1~1_combout\);

-- Location: LC_X12_Y8_N8
\s5|count_sig[2]\ : maxv_lcell
-- Equation(s):
-- \s5|count_sig\(2) = DFFEAS((\s5|rst_sig~3_combout\ & (\nreset~combout\ & (\s5|Add1~1_combout\ $ (\s5|count_sig\(2))))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|count_sig[3]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|rst_sig~3_combout\,
	datab => \s5|Add1~1_combout\,
	datac => \nreset~combout\,
	datad => \s5|count_sig\(2),
	aclr => GND,
	ena => \s5|count_sig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|count_sig\(2));

-- Location: LC_X12_Y8_N9
\s5|Add1~0\ : maxv_lcell
-- Equation(s):
-- \s5|Add1~0_combout\ = ((\s5|count_sig\(0) & (\s5|count_sig\(1) & \s5|count_sig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|count_sig\(0),
	datac => \s5|count_sig\(1),
	datad => \s5|count_sig\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add1~0_combout\);

-- Location: LC_X12_Y8_N2
\s5|count_sig[3]\ : maxv_lcell
-- Equation(s):
-- \s5|count_sig\(3) = DFFEAS((\nreset~combout\ & (\s5|count_sig\(3) $ (((\s5|rst_sig~3_combout\ & \s5|Add1~0_combout\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|rst_sig~3_combout\,
	datab => \s5|count_sig\(3),
	datac => \nreset~combout\,
	datad => \s5|Add1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|count_sig\(3));

-- Location: LC_X12_Y8_N6
\s5|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \s5|LessThan2~0_combout\ = (\s5|count_sig\(3) & ((\s5|count_sig\(2)) # ((\s5|count_sig\(0)) # (\s5|count_sig\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s5|count_sig\(2),
	datab => \s5|count_sig\(0),
	datac => \s5|count_sig\(1),
	datad => \s5|count_sig\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|LessThan2~0_combout\);

-- Location: LC_X10_Y8_N0
\s5|delay~0\ : maxv_lcell
-- Equation(s):
-- \s5|delay~0_combout\ = ((\nreact~combout\ & (!\s5|delay\(7) & !\s5|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nreact~combout\,
	datac => \s5|delay\(7),
	datad => \s5|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|delay~0_combout\);

-- Location: LC_X11_Y9_N1
\s5|delay~1\ : maxv_lcell
-- Equation(s):
-- \s5|delay~1_combout\ = (!\s5|delay\(3) & (((!\s5|delay\(4) & !\s5|delay\(2)))))

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
	dataa => \s5|delay\(3),
	datac => \s5|delay\(4),
	datad => \s5|delay\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|delay~1_combout\);

-- Location: LC_X11_Y9_N2
\s5|delay~2\ : maxv_lcell
-- Equation(s):
-- \s5|delay~2_combout\ = (\s5|delay~0_combout\ & (((\s5|delay~1_combout\) # (!\s5|delay\(6))) # (!\s5|delay\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s5|delay\(5),
	datab => \s5|delay~0_combout\,
	datac => \s5|delay\(6),
	datad => \s5|delay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|delay~2_combout\);

-- Location: LC_X11_Y9_N8
\s5|delay[0]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(0) = DFFEAS((\s5|Add0~11_combout\ & (\s5|delay~2_combout\ & (\nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|delay[5]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|Add0~11_combout\,
	datab => \s5|delay~2_combout\,
	datac => \nreset~combout\,
	aclr => GND,
	ena => \s5|delay[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(0));

-- Location: LC_X10_Y9_N1
\s5|Add0~5\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~5_combout\ = (\s5|delay\(1) $ ((\s5|Add0~13\)))
-- \s5|Add0~7\ = CARRY(((!\s5|Add0~13\) # (!\s5|delay\(1))))
-- \s5|Add0~7COUT1_47\ = CARRY(((!\s5|Add0~13COUT1_46\) # (!\s5|delay\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(1),
	cin0 => \s5|Add0~13\,
	cin1 => \s5|Add0~13COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~5_combout\,
	cout0 => \s5|Add0~7\,
	cout1 => \s5|Add0~7COUT1_47\);

-- Location: LC_X11_Y9_N9
\s5|delay[1]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(1) = DFFEAS(((\nreset~combout\ & (\s5|Add0~5_combout\ & \s5|delay~2_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|delay[5]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \nreset~combout\,
	datac => \s5|Add0~5_combout\,
	datad => \s5|delay~2_combout\,
	aclr => GND,
	ena => \s5|delay[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(1));

-- Location: LC_X10_Y9_N2
\s5|Add0~17\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~17_combout\ = \s5|delay\(2) $ ((((!\s5|Add0~7\))))
-- \s5|Add0~19\ = CARRY((\s5|delay\(2) & ((!\s5|Add0~7\))))
-- \s5|Add0~19COUT1_48\ = CARRY((\s5|delay\(2) & ((!\s5|Add0~7COUT1_47\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s5|delay\(2),
	cin0 => \s5|Add0~7\,
	cin1 => \s5|Add0~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~17_combout\,
	cout0 => \s5|Add0~19\,
	cout1 => \s5|Add0~19COUT1_48\);

-- Location: LC_X11_Y9_N3
\s5|delay[2]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(2) = DFFEAS(((\s5|Add0~17_combout\ & (\nreset~combout\ & \s5|delay~2_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|delay[5]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s5|Add0~17_combout\,
	datac => \nreset~combout\,
	datad => \s5|delay~2_combout\,
	aclr => GND,
	ena => \s5|delay[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(2));

-- Location: LC_X10_Y9_N3
\s5|Add0~28\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~28_combout\ = (\s5|delay\(3) $ ((\s5|Add0~19\)))
-- \s5|Add0~30\ = CARRY(((!\s5|Add0~19\) # (!\s5|delay\(3))))
-- \s5|Add0~30COUT1_49\ = CARRY(((!\s5|Add0~19COUT1_48\) # (!\s5|delay\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(3),
	cin0 => \s5|Add0~19\,
	cin1 => \s5|Add0~19COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~28_combout\,
	cout0 => \s5|Add0~30\,
	cout1 => \s5|Add0~30COUT1_49\);

-- Location: LC_X11_Y9_N4
\s5|delay[3]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(3) = DFFEAS(((\s5|Add0~28_combout\ & (\nreset~combout\ & \s5|delay~2_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|delay[5]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s5|Add0~28_combout\,
	datac => \nreset~combout\,
	datad => \s5|delay~2_combout\,
	aclr => GND,
	ena => \s5|delay[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(3));

-- Location: LC_X10_Y9_N4
\s5|Add0~34\ : maxv_lcell
-- Equation(s):
-- \s5|Add0~34_combout\ = (\s5|delay\(4) $ ((!\s5|Add0~30\)))
-- \s5|Add0~36\ = CARRY(((\s5|delay\(4) & !\s5|Add0~30COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(4),
	cin0 => \s5|Add0~30\,
	cin1 => \s5|Add0~30COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|Add0~34_combout\,
	cout => \s5|Add0~36\);

-- Location: LC_X10_Y8_N2
\s5|delay[4]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(4) = DFFEAS(((\s5|Add0~34_combout\ & (\nreset~combout\ & \s5|delay~2_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s5|delay[5]~4_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s5|Add0~34_combout\,
	datac => \nreset~combout\,
	datad => \s5|delay~2_combout\,
	aclr => GND,
	ena => \s5|delay[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(4));

-- Location: LC_X10_Y9_N9
\s5|delay[5]\ : maxv_lcell
-- Equation(s):
-- \s5|delay\(5) = DFFEAS((\s5|delay[5]~4_combout\ & (\s5|Add0~40_combout\ & (\s5|delay[5]~3_combout\))) # (!\s5|delay[5]~4_combout\ & (((\s5|delay\(5))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|Add0~40_combout\,
	datab => \s5|delay[5]~3_combout\,
	datac => \s5|delay[5]~4_combout\,
	datad => \s5|delay\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|delay\(5));

-- Location: LC_X11_Y9_N5
\s5|rst_sig~0\ : maxv_lcell
-- Equation(s):
-- \s5|rst_sig~0_combout\ = ((\s5|delay\(1) & ((!\s5|delay\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|delay\(1),
	datad => \s5|delay\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|rst_sig~0_combout\);

-- Location: LC_X11_Y9_N7
\s5|rst_sig~1\ : maxv_lcell
-- Equation(s):
-- \s5|rst_sig~1_combout\ = (\s5|rst_sig~0_combout\ & (\s5|delay~0_combout\ & (!\s5|delay\(6) & !\s5|delay\(2))))

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
	dataa => \s5|rst_sig~0_combout\,
	datab => \s5|delay~0_combout\,
	datac => \s5|delay\(6),
	datad => \s5|delay\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|rst_sig~1_combout\);

-- Location: LC_X11_Y9_N0
\s5|rst_sig~3\ : maxv_lcell
-- Equation(s):
-- \s5|rst_sig~3_combout\ = (\s5|delay\(5) & (\s5|rst_sig~1_combout\ & (\s5|delay\(4) & !\s5|delay\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s5|delay\(5),
	datab => \s5|rst_sig~1_combout\,
	datac => \s5|delay\(4),
	datad => \s5|delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|rst_sig~3_combout\);

-- Location: LC_X11_Y9_N6
\s5|rst_sig~2\ : maxv_lcell
-- Equation(s):
-- \s5|rst_sig~2_combout\ = (!\s5|delay\(5) & (\s5|rst_sig~1_combout\ & (!\s5|delay\(4) & \s5|delay\(3))))

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
	dataa => \s5|delay\(5),
	datab => \s5|rst_sig~1_combout\,
	datac => \s5|delay\(4),
	datad => \s5|delay\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|rst_sig~2_combout\);

-- Location: LC_X11_Y8_N6
\s5|rst_sig\ : maxv_lcell
-- Equation(s):
-- \s5|rst_sig~regout\ = DFFEAS((\s5|rst_sig~2_combout\) # ((\s5|LessThan2~0_combout\) # ((!\s5|rst_sig~3_combout\ & \s5|rst_sig~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|rst_sig~3_combout\,
	datab => \s5|rst_sig~2_combout\,
	datac => \s5|rst_sig~regout\,
	datad => \s5|LessThan2~0_combout\,
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|rst_sig~regout\);

-- Location: LC_X11_Y8_N3
\s5|newrst\ : maxv_lcell
-- Equation(s):
-- \s5|newrst~regout\ = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s5|rst_sig~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s5|rst_sig~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|newrst~regout\);

-- Location: LC_X14_Y9_N4
\s3|count[0]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(0) = DFFEAS((!\s3|count\(0)), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[0]~3\ = CARRY((\s3|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(0),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(0),
	cout => \s3|count[0]~3\);

-- Location: LC_X14_Y9_N5
\s3|count[1]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(1) = DFFEAS(\s3|count\(1) $ ((((\s3|count[0]~3\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[1]~1\ = CARRY(((!\s3|count[0]~3\)) # (!\s3|count\(1)))
-- \s3|count[1]~1COUT1_27\ = CARRY(((!\s3|count[0]~3\)) # (!\s3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(1),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[0]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(1),
	cout0 => \s3|count[1]~1\,
	cout1 => \s3|count[1]~1COUT1_27\);

-- Location: LC_X14_Y9_N6
\s3|count[2]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(2) = DFFEAS(\s3|count\(2) $ ((((!(!\s3|count[0]~3\ & \s3|count[1]~1\) # (\s3|count[0]~3\ & \s3|count[1]~1COUT1_27\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[2]~7\ = CARRY((\s3|count\(2) & ((!\s3|count[1]~1\))))
-- \s3|count[2]~7COUT1_28\ = CARRY((\s3|count\(2) & ((!\s3|count[1]~1COUT1_27\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(2),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[0]~3\,
	cin0 => \s3|count[1]~1\,
	cin1 => \s3|count[1]~1COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(2),
	cout0 => \s3|count[2]~7\,
	cout1 => \s3|count[2]~7COUT1_28\);

-- Location: LC_X14_Y9_N7
\s3|count[3]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(3) = DFFEAS((\s3|count\(3) $ (((!\s3|count[0]~3\ & \s3|count[2]~7\) # (\s3|count[0]~3\ & \s3|count[2]~7COUT1_28\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[3]~5\ = CARRY(((!\s3|count[2]~7\) # (!\s3|count\(3))))
-- \s3|count[3]~5COUT1_29\ = CARRY(((!\s3|count[2]~7COUT1_28\) # (!\s3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|count\(3),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[0]~3\,
	cin0 => \s3|count[2]~7\,
	cin1 => \s3|count[2]~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(3),
	cout0 => \s3|count[3]~5\,
	cout1 => \s3|count[3]~5COUT1_29\);

-- Location: LC_X14_Y9_N8
\s3|count[4]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(4) = DFFEAS(\s3|count\(4) $ ((((!(!\s3|count[0]~3\ & \s3|count[3]~5\) # (\s3|count[0]~3\ & \s3|count[3]~5COUT1_29\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[4]~11\ = CARRY((\s3|count\(4) & ((!\s3|count[3]~5\))))
-- \s3|count[4]~11COUT1_30\ = CARRY((\s3|count\(4) & ((!\s3|count[3]~5COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(4),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[0]~3\,
	cin0 => \s3|count[3]~5\,
	cin1 => \s3|count[3]~5COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(4),
	cout0 => \s3|count[4]~11\,
	cout1 => \s3|count[4]~11COUT1_30\);

-- Location: LC_X14_Y9_N9
\s3|count[5]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(5) = DFFEAS((\s3|count\(5) $ (((!\s3|count[0]~3\ & \s3|count[4]~11\) # (\s3|count[0]~3\ & \s3|count[4]~11COUT1_30\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[5]~9\ = CARRY(((!\s3|count[4]~11COUT1_30\) # (!\s3|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|count\(5),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[0]~3\,
	cin0 => \s3|count[4]~11\,
	cin1 => \s3|count[4]~11COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(5),
	cout => \s3|count[5]~9\);

-- Location: LC_X15_Y9_N0
\s3|count[6]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(6) = DFFEAS((\s3|count\(6) $ ((!\s3|count[5]~9\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[6]~15\ = CARRY(((\s3|count\(6) & !\s3|count[5]~9\)))
-- \s3|count[6]~15COUT1_31\ = CARRY(((\s3|count\(6) & !\s3|count[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|count\(6),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(6),
	cout0 => \s3|count[6]~15\,
	cout1 => \s3|count[6]~15COUT1_31\);

-- Location: LC_X15_Y9_N1
\s3|count[7]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(7) = DFFEAS((\s3|count\(7) $ (((!\s3|count[5]~9\ & \s3|count[6]~15\) # (\s3|count[5]~9\ & \s3|count[6]~15COUT1_31\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[7]~13\ = CARRY(((!\s3|count[6]~15\) # (!\s3|count\(7))))
-- \s3|count[7]~13COUT1_32\ = CARRY(((!\s3|count[6]~15COUT1_31\) # (!\s3|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|count\(7),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[5]~9\,
	cin0 => \s3|count[6]~15\,
	cin1 => \s3|count[6]~15COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(7),
	cout0 => \s3|count[7]~13\,
	cout1 => \s3|count[7]~13COUT1_32\);

-- Location: LC_X15_Y9_N2
\s3|count[8]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(8) = DFFEAS((\s3|count\(8) $ ((!(!\s3|count[5]~9\ & \s3|count[7]~13\) # (\s3|count[5]~9\ & \s3|count[7]~13COUT1_32\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[8]~19\ = CARRY(((\s3|count\(8) & !\s3|count[7]~13\)))
-- \s3|count[8]~19COUT1_33\ = CARRY(((\s3|count\(8) & !\s3|count[7]~13COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|count\(8),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[5]~9\,
	cin0 => \s3|count[7]~13\,
	cin1 => \s3|count[7]~13COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(8),
	cout0 => \s3|count[8]~19\,
	cout1 => \s3|count[8]~19COUT1_33\);

-- Location: LC_X15_Y9_N3
\s3|count[9]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(9) = DFFEAS(\s3|count\(9) $ (((((!\s3|count[5]~9\ & \s3|count[8]~19\) # (\s3|count[5]~9\ & \s3|count[8]~19COUT1_33\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[9]~17\ = CARRY(((!\s3|count[8]~19\)) # (!\s3|count\(9)))
-- \s3|count[9]~17COUT1_34\ = CARRY(((!\s3|count[8]~19COUT1_33\)) # (!\s3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(9),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[5]~9\,
	cin0 => \s3|count[8]~19\,
	cin1 => \s3|count[8]~19COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(9),
	cout0 => \s3|count[9]~17\,
	cout1 => \s3|count[9]~17COUT1_34\);

-- Location: LC_X12_Y10_N5
\s2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~0_combout\ = ((!\s2|count\(0)))
-- \s2|Add0~2\ = CARRY(((\s2|count\(0))))
-- \s2|Add0~2COUT1_56\ = CARRY(((\s2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~0_combout\,
	cout0 => \s2|Add0~2\,
	cout1 => \s2|Add0~2COUT1_56\);

-- Location: LC_X13_Y10_N0
\s2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~25_combout\ = (\s2|count\(5) $ ((\s2|Add0~22\)))
-- \s2|Add0~27\ = CARRY(((\s2|count\(5) & !\s2|Add0~22\)))
-- \s2|Add0~27COUT1_60\ = CARRY(((\s2|count\(5) & !\s2|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s2|count\(5),
	cin => \s2|Add0~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~25_combout\,
	cout0 => \s2|Add0~27\,
	cout1 => \s2|Add0~27COUT1_60\);

-- Location: LC_X13_Y10_N9
\s2|count[5]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(5) = DFFEAS(((!\s2|Add0~25_combout\ & ((!\s2|Equal0~2\) # (!\s2|Equal0~0\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s2|Equal0~0\,
	datac => \s2|Add0~25_combout\,
	datad => \s2|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(5));

-- Location: LC_X13_Y10_N1
\s2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~30_combout\ = \s2|count\(6) $ ((((!(!\s2|Add0~22\ & \s2|Add0~27\) # (\s2|Add0~22\ & \s2|Add0~27COUT1_60\)))))
-- \s2|Add0~32\ = CARRY(((!\s2|Add0~27\)) # (!\s2|count\(6)))
-- \s2|Add0~32COUT1_61\ = CARRY(((!\s2|Add0~27COUT1_60\)) # (!\s2|count\(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s2|count\(6),
	cin => \s2|Add0~22\,
	cin0 => \s2|Add0~27\,
	cin1 => \s2|Add0~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~30_combout\,
	cout0 => \s2|Add0~32\,
	cout1 => \s2|Add0~32COUT1_61\);

-- Location: LC_X13_Y10_N6
\s2|count[6]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(6) = DFFEAS((((!\s2|Add0~30_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(6));

-- Location: LC_X13_Y10_N2
\s2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~35_combout\ = (\s2|count\(7) $ ((!(!\s2|Add0~22\ & \s2|Add0~32\) # (\s2|Add0~22\ & \s2|Add0~32COUT1_61\))))
-- \s2|Add0~37\ = CARRY(((\s2|count\(7)) # (!\s2|Add0~32\)))
-- \s2|Add0~37COUT1_62\ = CARRY(((\s2|count\(7)) # (!\s2|Add0~32COUT1_61\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s2|count\(7),
	cin => \s2|Add0~22\,
	cin0 => \s2|Add0~32\,
	cin1 => \s2|Add0~32COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~35_combout\,
	cout0 => \s2|Add0~37\,
	cout1 => \s2|Add0~37COUT1_62\);

-- Location: LC_X14_Y10_N8
\s2|count[7]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(7) = DFFEAS(((!\s2|Add0~35_combout\ & ((!\s2|Equal0~2\) # (!\s2|Equal0~0\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s2|Equal0~0\,
	datac => \s2|Equal0~2\,
	datad => \s2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(7));

-- Location: LC_X12_Y10_N6
\s2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~5_combout\ = \s2|count\(1) $ ((((\s2|Add0~2\))))
-- \s2|Add0~7\ = CARRY(((!\s2|Add0~2\)) # (!\s2|count\(1)))
-- \s2|Add0~7COUT1_57\ = CARRY(((!\s2|Add0~2COUT1_56\)) # (!\s2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s2|count\(1),
	cin0 => \s2|Add0~2\,
	cin1 => \s2|Add0~2COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~5_combout\,
	cout0 => \s2|Add0~7\,
	cout1 => \s2|Add0~7COUT1_57\);

-- Location: LC_X12_Y10_N7
\s2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~10_combout\ = \s2|count\(2) $ ((((\s2|Add0~7\))))
-- \s2|Add0~12\ = CARRY((\s2|count\(2)) # ((!\s2|Add0~7\)))
-- \s2|Add0~12COUT1_58\ = CARRY((\s2|count\(2)) # ((!\s2|Add0~7COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s2|count\(2),
	cin0 => \s2|Add0~7\,
	cin1 => \s2|Add0~7COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~10_combout\,
	cout0 => \s2|Add0~12\,
	cout1 => \s2|Add0~12COUT1_58\);

-- Location: LC_X12_Y10_N8
\s2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~15_combout\ = (\s2|count\(3) $ ((\s2|Add0~12\)))
-- \s2|Add0~17\ = CARRY(((\s2|count\(3) & !\s2|Add0~12\)))
-- \s2|Add0~17COUT1_59\ = CARRY(((\s2|count\(3) & !\s2|Add0~12COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c0c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s2|count\(3),
	cin0 => \s2|Add0~12\,
	cin1 => \s2|Add0~12COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~15_combout\,
	cout0 => \s2|Add0~17\,
	cout1 => \s2|Add0~17COUT1_59\);

-- Location: LC_X12_Y10_N2
\s2|count[3]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(3) = DFFEAS((((!\s2|Add0~15_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(3));

-- Location: LC_X12_Y10_N9
\s2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~20_combout\ = \s2|count\(4) $ ((((\s2|Add0~17\))))
-- \s2|Add0~22\ = CARRY((\s2|count\(4)) # ((!\s2|Add0~17COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s2|count\(4),
	cin0 => \s2|Add0~17\,
	cin1 => \s2|Add0~17COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~20_combout\,
	cout => \s2|Add0~22\);

-- Location: LC_X13_Y10_N7
\s2|count[4]\ : maxv_lcell
-- Equation(s):
-- \s2|Equal0~1\ = (!\s2|count\(6) & (!\s2|count\(7) & (D1_count[4] & \s2|count\(5))))
-- \s2|count\(4) = DFFEAS(\s2|Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \s2|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s2|count\(6),
	datab => \s2|count\(7),
	datac => \s2|Add0~20_combout\,
	datad => \s2|count\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Equal0~1\,
	regout => \s2|count\(4));

-- Location: LC_X13_Y10_N3
\s2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~40_combout\ = \s2|count\(8) $ (((((!\s2|Add0~22\ & \s2|Add0~37\) # (\s2|Add0~22\ & \s2|Add0~37COUT1_62\)))))
-- \s2|Add0~42\ = CARRY((!\s2|count\(8) & ((!\s2|Add0~37\))))
-- \s2|Add0~42COUT1_63\ = CARRY((!\s2|count\(8) & ((!\s2|Add0~37COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s2|count\(8),
	cin => \s2|Add0~22\,
	cin0 => \s2|Add0~37\,
	cin1 => \s2|Add0~37COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~40_combout\,
	cout0 => \s2|Add0~42\,
	cout1 => \s2|Add0~42COUT1_63\);

-- Location: LC_X13_Y10_N4
\s2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~45_combout\ = (\s2|count\(9) $ ((!(!\s2|Add0~22\ & \s2|Add0~42\) # (\s2|Add0~22\ & \s2|Add0~42COUT1_63\))))
-- \s2|Add0~47\ = CARRY(((\s2|count\(9)) # (!\s2|Add0~42COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s2|count\(9),
	cin => \s2|Add0~22\,
	cin0 => \s2|Add0~42\,
	cin1 => \s2|Add0~42COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~45_combout\,
	cout => \s2|Add0~47\);

-- Location: LC_X14_Y10_N2
\s2|count[9]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(9) = DFFEAS(((!\s2|Add0~45_combout\ & ((!\s2|Equal0~2\) # (!\s2|Equal0~0\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s2|Equal0~0\,
	datac => \s2|Equal0~2\,
	datad => \s2|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(9));

-- Location: LC_X13_Y10_N8
\s2|count[10]\ : maxv_lcell
-- Equation(s):
-- \s2|Equal0~2\ = (!\s2|count\(8) & (!\s2|count\(9) & (D1_count[10] & \s2|Equal0~1\)))
-- \s2|count\(10) = DFFEAS(\s2|Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \s2|Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s2|count\(8),
	datab => \s2|count\(9),
	datac => \s2|Add0~50_combout\,
	datad => \s2|Equal0~1\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Equal0~2\,
	regout => \s2|count\(10));

-- Location: LC_X13_Y10_N5
\s2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \s2|Add0~50_combout\ = ((\s2|Add0~47\ $ (!\s2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \s2|count\(10),
	cin => \s2|Add0~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Add0~50_combout\);

-- Location: LC_X12_Y10_N1
\s2|count[0]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(0) = DFFEAS(((\s2|Add0~0_combout\ & ((!\s2|Equal0~2\) # (!\s2|Equal0~0\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s2|Equal0~0\,
	datac => \s2|Add0~0_combout\,
	datad => \s2|Equal0~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(0));

-- Location: LC_X12_Y10_N3
\s2|count[1]\ : maxv_lcell
-- Equation(s):
-- \s2|Equal0~0\ = (!\s2|count\(2) & (!\s2|count\(0) & (!D1_count[1] & \s2|count\(3))))
-- \s2|count\(1) = DFFEAS(\s2|Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \s2|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \s2|count\(2),
	datab => \s2|count\(0),
	datac => \s2|Add0~5_combout\,
	datad => \s2|count\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s2|Equal0~0\,
	regout => \s2|count\(1));

-- Location: LC_X12_Y10_N4
\s2|count[2]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(2) = DFFEAS(((\s2|Add0~10_combout\ & ((!\s2|Equal0~0\) # (!\s2|Equal0~2\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s2|Add0~10_combout\,
	datac => \s2|Equal0~2\,
	datad => \s2|Equal0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(2));

-- Location: LC_X14_Y10_N7
\s2|count[8]\ : maxv_lcell
-- Equation(s):
-- \s2|count\(8) = DFFEAS(((!\s2|Add0~40_combout\ & ((!\s2|Equal0~2\) # (!\s2|Equal0~0\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \s2|Equal0~0\,
	datac => \s2|Equal0~2\,
	datad => \s2|Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|count\(8));

-- Location: LC_X11_Y10_N6
\s2|outsig[8]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(8) = DFFEAS((((\s2|count\(8)))), GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|count\(8),
	aclr => GND,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(8));

-- Location: LC_X15_Y10_N7
\s2|output[8]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(8) = DFFEAS((((!\s2|outsig\(8)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(8));

-- Location: LC_X11_Y10_N9
\s2|outsig[9]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(9) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(9),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(9));

-- Location: LC_X15_Y10_N6
\s2|output[9]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(9) = DFFEAS((((!\s2|outsig\(9)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(9));

-- Location: LC_X15_Y10_N9
\s3|random_sig[9]\ : maxv_lcell
-- Equation(s):
-- \s3|random_sig\(9) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s2|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s2|output\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|random_sig\(9));

-- Location: LC_X15_Y10_N2
\s3|random_sig[8]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~5\ = (\s3|count\(8) & (E1_random_sig[8] & (\s3|count\(9) $ (!\s3|random_sig\(9))))) # (!\s3|count\(8) & (!E1_random_sig[8] & (\s3|count\(9) $ (!\s3|random_sig\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(8),
	datab => \s3|count\(9),
	datac => \s2|output\(8),
	datad => \s3|random_sig\(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~5\,
	regout => \s3|random_sig\(8));

-- Location: LC_X15_Y9_N4
\s3|count[10]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(10) = DFFEAS(\s3|count\(10) $ ((((!(!\s3|count[5]~9\ & \s3|count[9]~17\) # (\s3|count[5]~9\ & \s3|count[9]~17COUT1_34\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[10]~21\ = CARRY((\s3|count\(10) & ((!\s3|count[9]~17COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(10),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[5]~9\,
	cin0 => \s3|count[9]~17\,
	cin1 => \s3|count[9]~17COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(10),
	cout => \s3|count[10]~21\);

-- Location: LC_X15_Y9_N5
\s3|count[11]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(11) = DFFEAS(\s3|count\(11) $ ((((\s3|count[10]~21\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )
-- \s3|count[11]~23\ = CARRY(((!\s3|count[10]~21\)) # (!\s3|count\(11)))
-- \s3|count[11]~23COUT1_35\ = CARRY(((!\s3|count[10]~21\)) # (!\s3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(11),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(11),
	cout0 => \s3|count[11]~23\,
	cout1 => \s3|count[11]~23COUT1_35\);

-- Location: LC_X15_Y9_N6
\s3|count[12]\ : maxv_lcell
-- Equation(s):
-- \s3|count\(12) = DFFEAS(\s3|count\(12) $ ((((!(!\s3|count[10]~21\ & \s3|count[11]~23\) # (\s3|count[10]~21\ & \s3|count[11]~23COUT1_35\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , \s5|newrst~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(12),
	aclr => GND,
	sclr => \s5|newrst~regout\,
	cin => \s3|count[10]~21\,
	cin0 => \s3|count[11]~23\,
	cin1 => \s3|count[11]~23COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|count\(12));

-- Location: LC_X11_Y10_N4
\s2|outsig[10]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(10) = DFFEAS((((\s2|count\(10)))), GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|count\(10),
	aclr => GND,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(10));

-- Location: LC_X15_Y10_N4
\s2|output[10]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(10) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \s2|outsig\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|outsig\(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(10));

-- Location: LC_X15_Y10_N5
\s3|random_sig[10]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~6\ = (!\s3|count\(12) & (!\s3|count\(11) & (\s3|count\(10) $ (!E1_random_sig[10]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0041",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(12),
	datab => \s3|count\(10),
	datac => \s2|output\(10),
	datad => \s3|count\(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~6\,
	regout => \s3|random_sig\(10));

-- Location: LC_X11_Y10_N2
\s2|outsig[5]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(5),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(5));

-- Location: LC_X13_Y9_N6
\s2|output[5]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(5) = DFFEAS((((!\s2|outsig\(5)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(5));

-- Location: LC_X13_Y9_N8
\s3|random_sig[5]\ : maxv_lcell
-- Equation(s):
-- \s3|random_sig\(5) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s2|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s2|output\(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|random_sig\(5));

-- Location: LC_X12_Y10_N0
\s2|outsig[4]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(4) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(4),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(4));

-- Location: LC_X13_Y9_N7
\s2|output[4]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(4) = DFFEAS((((\s2|outsig\(4)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(4));

-- Location: LC_X13_Y9_N3
\s3|random_sig[4]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~2\ = (\s3|random_sig\(5) & (\s3|count\(5) & (E1_random_sig[4] $ (!\s3|count\(4))))) # (!\s3|random_sig\(5) & (!\s3|count\(5) & (E1_random_sig[4] $ (!\s3|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|random_sig\(5),
	datab => \s3|count\(5),
	datac => \s2|output\(4),
	datad => \s3|count\(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~2\,
	regout => \s3|random_sig\(4));

-- Location: LC_X11_Y10_N0
\s2|outsig[3]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(3) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(3),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(3));

-- Location: LC_X13_Y9_N5
\s2|output[3]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(3) = DFFEAS((((!\s2|outsig\(3)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(3));

-- Location: LC_X13_Y9_N2
\s3|random_sig[3]\ : maxv_lcell
-- Equation(s):
-- \s3|random_sig\(3) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s2|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s2|output\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|random_sig\(3));

-- Location: LC_X11_Y10_N1
\s2|outsig[2]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(2) = DFFEAS((((\s2|count\(2)))), GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|count\(2),
	aclr => GND,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(2));

-- Location: LC_X13_Y9_N4
\s2|output[2]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \s2|outsig\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|outsig\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(2));

-- Location: LC_X13_Y9_N9
\s3|random_sig[2]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~1\ = (\s3|count\(2) & (E1_random_sig[2] & (\s3|random_sig\(3) $ (!\s3|count\(3))))) # (!\s3|count\(2) & (!E1_random_sig[2] & (\s3|random_sig\(3) $ (!\s3|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(2),
	datab => \s3|random_sig\(3),
	datac => \s2|output\(2),
	datad => \s3|count\(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~1\,
	regout => \s3|random_sig\(2));

-- Location: LC_X11_Y10_N7
\s2|outsig[1]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(1),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(1));

-- Location: LC_X12_Y9_N6
\s2|output[1]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(1) = DFFEAS((((\s2|outsig\(1)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(1));

-- Location: LC_X12_Y9_N2
\s3|random_sig[1]\ : maxv_lcell
-- Equation(s):
-- \s3|random_sig\(1) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s2|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s2|output\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|random_sig\(1));

-- Location: LC_X11_Y10_N5
\s2|outsig[0]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(0) = DFFEAS((((\s2|count\(0)))), GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|count\(0),
	aclr => GND,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(0));

-- Location: LC_X12_Y9_N5
\s2|output[0]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(0) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \s2|outsig\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|outsig\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(0));

-- Location: LC_X12_Y9_N9
\s3|random_sig[0]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~0\ = (\s3|count\(0) & (E1_random_sig[0] & (\s3|random_sig\(1) $ (!\s3|count\(1))))) # (!\s3|count\(0) & (!E1_random_sig[0] & (\s3|random_sig\(1) $ (!\s3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(0),
	datab => \s3|random_sig\(1),
	datac => \s2|output\(0),
	datad => \s3|count\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~0\,
	regout => \s3|random_sig\(0));

-- Location: LC_X11_Y10_N8
\s2|outsig[7]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(7) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(7),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(7));

-- Location: LC_X14_Y10_N5
\s2|output[7]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(7) = DFFEAS((((!\s2|outsig\(7)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(7));

-- Location: LC_X14_Y10_N9
\s3|random_sig[7]\ : maxv_lcell
-- Equation(s):
-- \s3|random_sig\(7) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , \s2|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s2|output\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|random_sig\(7));

-- Location: LC_X11_Y10_N3
\s2|outsig[6]\ : maxv_lcell
-- Equation(s):
-- \s2|outsig\(6) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\nreact~combout\, \s2|count\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \s2|count\(6),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|outsig\(6));

-- Location: LC_X14_Y10_N4
\s2|output[6]\ : maxv_lcell
-- Equation(s):
-- \s2|output\(6) = DFFEAS((((!\s2|outsig\(6)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s2|outsig\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s2|output\(6));

-- Location: LC_X14_Y10_N6
\s3|random_sig[6]\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~3\ = (\s3|count\(6) & (E1_random_sig[6] & (\s3|random_sig\(7) $ (!\s3|count\(7))))) # (!\s3|count\(6) & (!E1_random_sig[6] & (\s3|random_sig\(7) $ (!\s3|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|count\(6),
	datab => \s3|random_sig\(7),
	datac => \s2|output\(6),
	datad => \s3|count\(7),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~3\,
	regout => \s3|random_sig\(6));

-- Location: LC_X13_Y9_N0
\s3|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~4_combout\ = (\s3|Equal0~2\ & (\s3|Equal0~1\ & (\s3|Equal0~0\ & \s3|Equal0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s3|Equal0~2\,
	datab => \s3|Equal0~1\,
	datac => \s3|Equal0~0\,
	datad => \s3|Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~4_combout\);

-- Location: LC_X15_Y10_N8
\s3|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \s3|Equal0~7_combout\ = ((\s3|Equal0~5\ & (\s3|Equal0~6\ & \s3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s3|Equal0~5\,
	datac => \s3|Equal0~6\,
	datad => \s3|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s3|Equal0~7_combout\);

-- Location: LC_X10_Y10_N2
\s3|ledsig\ : maxv_lcell
-- Equation(s):
-- \s3|ledsig~regout\ = DFFEAS(((\s3|Equal0~7_combout\) # ((\s3|ledsig~regout\ & !\s5|newrst~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreact~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s3|ledsig~regout\,
	datac => \s5|newrst~regout\,
	datad => \s3|Equal0~7_combout\,
	aclr => GND,
	sclr => \ALT_INV_nreact~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s3|ledsig~regout\);

-- Location: LC_X12_Y7_N1
\s0|c|S1|T1|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T1|D|Qbar~regout\ = DFFEAS((((!\s0|c|S1|T1|D|Qbar~regout\))), GLOBAL(\CLK~combout\), GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s0|c|S1|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T1|D|Qbar~regout\);

-- Location: LC_X12_Y7_N6
\s0|c|S1|T1|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T1|D|Q~regout\ = DFFEAS((((!\s0|c|S1|T1|D|Qbar~regout\))), GLOBAL(\CLK~combout\), GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \s0|c|S1|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T1|D|Q~regout\);

-- Location: LC_X12_Y7_N2
\s0|c|S1|T2|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T2|D|Qbar~regout\ = DFFEAS((((!\s0|c|S1|T2|D|Qbar~regout\))), \s0|c|S1|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T1|D|Q~regout\,
	datad => \s0|c|S1|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T2|D|Qbar~regout\);

-- Location: LC_X12_Y7_N4
\s0|c|S1|T2|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T2|D|Q~regout\ = DFFEAS((((!\s0|c|S1|T2|D|Qbar~regout\))), \s0|c|S1|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T1|D|Q~regout\,
	datad => \s0|c|S1|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T2|D|Q~regout\);

-- Location: LC_X13_Y7_N1
\s0|c|S1|T3|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T3|D|Qbar~regout\ = DFFEAS((((!\s0|c|S1|T3|D|Qbar~regout\))), \s0|c|S1|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T2|D|Q~regout\,
	datad => \s0|c|S1|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T3|D|Qbar~regout\);

-- Location: LC_X13_Y7_N6
\s0|c|S1|T3|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T3|D|Q~regout\ = DFFEAS((((!\s0|c|S1|T3|D|Qbar~regout\))), \s0|c|S1|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T2|D|Q~regout\,
	datad => \s0|c|S1|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T3|D|Q~regout\);

-- Location: LC_X13_Y7_N2
\s0|c|S1|T4|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T4|D|Qbar~regout\ = DFFEAS((((!\s0|c|S1|T4|D|Qbar~regout\))), \s0|c|S1|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T3|D|Q~regout\,
	datad => \s0|c|S1|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T4|D|Qbar~regout\);

-- Location: LC_X13_Y7_N4
\s0|c|S1|T4|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S1|T4|D|Q~regout\ = DFFEAS((((!\s0|c|S1|T4|D|Qbar~regout\))), \s0|c|S1|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T3|D|Q~regout\,
	datad => \s0|c|S1|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S1|T4|D|Q~regout\);

-- Location: LC_X14_Y7_N9
\s0|c|S2|T1|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T1|D|Qbar~regout\ = DFFEAS((((!\s0|c|S2|T1|D|Qbar~regout\))), \s0|c|S1|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T4|D|Q~regout\,
	datad => \s0|c|S2|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T1|D|Qbar~regout\);

-- Location: LC_X14_Y7_N6
\s0|c|S2|T1|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T1|D|Q~regout\ = DFFEAS((((!\s0|c|S2|T1|D|Qbar~regout\))), \s0|c|S1|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S1|T4|D|Q~regout\,
	datad => \s0|c|S2|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T1|D|Q~regout\);

-- Location: LC_X14_Y7_N1
\s0|c|S2|T2|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T2|D|Qbar~regout\ = DFFEAS((((!\s0|c|S2|T2|D|Qbar~regout\))), \s0|c|S2|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T1|D|Q~regout\,
	datad => \s0|c|S2|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T2|D|Qbar~regout\);

-- Location: LC_X14_Y7_N2
\s0|c|S2|T2|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T2|D|Q~regout\ = DFFEAS((((!\s0|c|S2|T2|D|Qbar~regout\))), \s0|c|S2|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T1|D|Q~regout\,
	datad => \s0|c|S2|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T2|D|Q~regout\);

-- Location: LC_X13_Y6_N2
\s0|c|S2|T3|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T3|D|Qbar~regout\ = DFFEAS((((!\s0|c|S2|T3|D|Qbar~regout\))), \s0|c|S2|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T2|D|Q~regout\,
	datad => \s0|c|S2|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T3|D|Qbar~regout\);

-- Location: LC_X13_Y6_N6
\s0|c|S2|T3|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T3|D|Q~regout\ = DFFEAS((((!\s0|c|S2|T3|D|Qbar~regout\))), \s0|c|S2|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T2|D|Q~regout\,
	datad => \s0|c|S2|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T3|D|Q~regout\);

-- Location: LC_X13_Y6_N1
\s0|c|S2|T4|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T4|D|Qbar~regout\ = DFFEAS((((!\s0|c|S2|T4|D|Qbar~regout\))), \s0|c|S2|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T3|D|Q~regout\,
	datad => \s0|c|S2|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T4|D|Qbar~regout\);

-- Location: LC_X13_Y6_N4
\s0|c|S2|T4|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S2|T4|D|Q~regout\ = DFFEAS((((!\s0|c|S2|T4|D|Qbar~regout\))), \s0|c|S2|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T3|D|Q~regout\,
	datad => \s0|c|S2|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S2|T4|D|Q~regout\);

-- Location: LC_X14_Y6_N2
\s0|c|S3|T1|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T1|D|Qbar~regout\ = DFFEAS((((!\s0|c|S3|T1|D|Qbar~regout\))), \s0|c|S2|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T4|D|Q~regout\,
	datad => \s0|c|S3|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T1|D|Qbar~regout\);

-- Location: LC_X14_Y6_N6
\s0|c|S3|T1|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T1|D|Q~regout\ = DFFEAS((((!\s0|c|S3|T1|D|Qbar~regout\))), \s0|c|S2|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S2|T4|D|Q~regout\,
	datad => \s0|c|S3|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T1|D|Q~regout\);

-- Location: LC_X14_Y6_N1
\s0|c|S3|T2|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T2|D|Qbar~regout\ = DFFEAS((((!\s0|c|S3|T2|D|Qbar~regout\))), \s0|c|S3|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T1|D|Q~regout\,
	datad => \s0|c|S3|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T2|D|Qbar~regout\);

-- Location: LC_X14_Y6_N4
\s0|c|S3|T2|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T2|D|Q~regout\ = DFFEAS((((!\s0|c|S3|T2|D|Qbar~regout\))), \s0|c|S3|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T1|D|Q~regout\,
	datad => \s0|c|S3|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T2|D|Q~regout\);

-- Location: LC_X15_Y6_N9
\s0|c|S3|T3|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T3|D|Qbar~regout\ = DFFEAS((((!\s0|c|S3|T3|D|Qbar~regout\))), \s0|c|S3|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T2|D|Q~regout\,
	datad => \s0|c|S3|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T3|D|Qbar~regout\);

-- Location: LC_X15_Y6_N5
\s0|c|S3|T3|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T3|D|Q~regout\ = DFFEAS((((!\s0|c|S3|T3|D|Qbar~regout\))), \s0|c|S3|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T2|D|Q~regout\,
	datad => \s0|c|S3|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T3|D|Q~regout\);

-- Location: LC_X15_Y6_N2
\s0|c|S3|T4|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T4|D|Qbar~regout\ = DFFEAS((((!\s0|c|S3|T4|D|Qbar~regout\))), \s0|c|S3|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T3|D|Q~regout\,
	datad => \s0|c|S3|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T4|D|Qbar~regout\);

-- Location: LC_X15_Y6_N8
\s0|c|S3|T4|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S3|T4|D|Q~regout\ = DFFEAS((((!\s0|c|S3|T4|D|Qbar~regout\))), \s0|c|S3|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T3|D|Q~regout\,
	datad => \s0|c|S3|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S3|T4|D|Q~regout\);

-- Location: LC_X15_Y8_N2
\s0|c|S4|T1|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T1|D|Qbar~regout\ = DFFEAS((((!\s0|c|S4|T1|D|Qbar~regout\))), \s0|c|S3|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T4|D|Q~regout\,
	datad => \s0|c|S4|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T1|D|Qbar~regout\);

-- Location: LC_X15_Y8_N4
\s0|c|S4|T1|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T1|D|Q~regout\ = DFFEAS((((!\s0|c|S4|T1|D|Qbar~regout\))), \s0|c|S3|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S3|T4|D|Q~regout\,
	datad => \s0|c|S4|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T1|D|Q~regout\);

-- Location: LC_X14_Y8_N2
\s0|c|S4|T2|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T2|D|Qbar~regout\ = DFFEAS((((!\s0|c|S4|T2|D|Qbar~regout\))), \s0|c|S4|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T1|D|Q~regout\,
	datad => \s0|c|S4|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T2|D|Qbar~regout\);

-- Location: LC_X14_Y8_N4
\s0|c|S4|T2|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T2|D|Q~regout\ = DFFEAS((((!\s0|c|S4|T2|D|Qbar~regout\))), \s0|c|S4|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T1|D|Q~regout\,
	datad => \s0|c|S4|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T2|D|Q~regout\);

-- Location: LC_X14_Y8_N9
\s0|c|S4|T3|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T3|D|Qbar~regout\ = DFFEAS((((!\s0|c|S4|T3|D|Qbar~regout\))), \s0|c|S4|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T2|D|Q~regout\,
	datad => \s0|c|S4|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T3|D|Qbar~regout\);

-- Location: LC_X14_Y8_N6
\s0|c|S4|T3|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T3|D|Q~regout\ = DFFEAS((((!\s0|c|S4|T3|D|Qbar~regout\))), \s0|c|S4|T2|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T2|D|Q~regout\,
	datad => \s0|c|S4|T3|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T3|D|Q~regout\);

-- Location: LC_X13_Y8_N9
\s0|c|S4|T4|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T4|D|Qbar~regout\ = DFFEAS((((!\s0|c|S4|T4|D|Qbar~regout\))), \s0|c|S4|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T3|D|Q~regout\,
	datad => \s0|c|S4|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T4|D|Qbar~regout\);

-- Location: LC_X13_Y8_N6
\s0|c|S4|T4|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|S4|T4|D|Q~regout\ = DFFEAS((((!\s0|c|S4|T4|D|Qbar~regout\))), \s0|c|S4|T3|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T3|D|Q~regout\,
	datad => \s0|c|S4|T4|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|S4|T4|D|Q~regout\);

-- Location: LC_X13_Y8_N1
\s0|c|T1|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|T1|D|Qbar~regout\ = DFFEAS((((!\s0|c|T1|D|Qbar~regout\))), \s0|c|S4|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T4|D|Q~regout\,
	datad => \s0|c|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|T1|D|Qbar~regout\);

-- Location: LC_X13_Y8_N2
\s0|c|T1|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|T1|D|Q~regout\ = DFFEAS((((!\s0|c|T1|D|Qbar~regout\))), \s0|c|S4|T4|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|S4|T4|D|Q~regout\,
	datad => \s0|c|T1|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|T1|D|Q~regout\);

-- Location: LC_X11_Y7_N2
\s0|c|T2|D|Qbar\ : maxv_lcell
-- Equation(s):
-- \s0|c|T2|D|Qbar~regout\ = DFFEAS((((!\s0|c|T2|D|Qbar~regout\))), \s0|c|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|T1|D|Q~regout\,
	datad => \s0|c|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|T2|D|Qbar~regout\);

-- Location: LC_X11_Y7_N3
\s0|c|T2|D|Q\ : maxv_lcell
-- Equation(s):
-- \s0|c|T2|D|Q~regout\ = DFFEAS((((!\s0|c|T2|D|Qbar~regout\))), \s0|c|T1|D|Q~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|T1|D|Q~regout\,
	datad => \s0|c|T2|D|Qbar~regout\,
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|c|T2|D|Q~regout\);

-- Location: LC_X11_Y7_N1
\s0|D0|Q\ : maxv_lcell
-- Equation(s):
-- \s0|D0|Q~regout\ = DFFEAS((((!\nreact~combout\ & \nreset~combout\))), \s0|c|T2|D|Q~regout\, VCC, , , , , , )

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
	clk => \s0|c|T2|D|Q~regout\,
	datac => \nreact~combout\,
	datad => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|D0|Q~regout\);

-- Location: LC_X11_Y7_N4
\s0|D1|Q\ : maxv_lcell
-- Equation(s):
-- \s0|D1|Q~regout\ = DFFEAS((\nreact~combout\ & (((\s0|D1|Q~regout\ & \s0|D0|Q~regout\)))) # (!\nreact~combout\ & (((\s0|D1|Q~regout\) # (\s0|D0|Q~regout\)))), \s0|c|T2|D|Q~regout\, VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s0|c|T2|D|Q~regout\,
	dataa => \nreact~combout\,
	datac => \s0|D1|Q~regout\,
	datad => \s0|D0|Q~regout\,
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s0|D1|Q~regout\);

-- Location: LC_X11_Y7_N0
\s0|output~2\ : maxv_lcell
-- Equation(s):
-- \s0|output~2_combout\ = (((!\s0|D1|Q~regout\ & \s0|D0|Q~regout\)))

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
	datac => \s0|D1|Q~regout\,
	datad => \s0|D0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0|output~2_combout\);

-- Location: LC_X11_Y7_N6
\s0|output~1\ : maxv_lcell
-- Equation(s):
-- \s0|output~1_combout\ = (!\nreact~combout\ & (((\s0|D1|Q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nreact~combout\,
	datac => \s0|D1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0|output~1_combout\);

-- Location: LC_X11_Y7_N7
\s0|output~0\ : maxv_lcell
-- Equation(s):
-- \s0|output~0_combout\ = ((\s0|D0|Q~regout\ & (\s0|D1|Q~regout\)) # (!\s0|D0|Q~regout\ & ((\s0|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s0|D0|Q~regout\,
	datac => \s0|D1|Q~regout\,
	datad => \s0|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0|output~0_combout\);

-- Location: LC_X11_Y7_N8
\s0|output\ : maxv_lcell
-- Equation(s):
-- \s0|output~combout\ = LCELL((\nreset~combout\ & ((\s0|output~0_combout\) # ((!\nreact~combout\ & \s0|output~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nreact~combout\,
	datab => \nreset~combout\,
	datac => \s0|output~2_combout\,
	datad => \s0|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0|output~combout\);

-- Location: LC_X3_Y7_N1
\s6|reactcount_var[0]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount_var\(0) = DFFEAS((((!\s6|reactcount_var\(0)))), GLOBAL(\s0|output~combout\), GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|output~combout\,
	datad => \s6|reactcount_var\(0),
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|reactcount_var\(0));

-- Location: LC_X3_Y7_N6
\s6|reactcount_var[1]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount_var\(1) = DFFEAS(\s6|reactcount_var\(1) $ ((\s6|reactcount_var\(0))), GLOBAL(\s0|output~combout\), GLOBAL(\nreset~combout\), , , , , , )
-- \s6|reactcount_var[1]~5\ = CARRY((\s6|reactcount_var\(1) & (\s6|reactcount_var\(0))))
-- \s6|reactcount_var[1]~5COUT1_8\ = CARRY((\s6|reactcount_var\(1) & (\s6|reactcount_var\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|output~combout\,
	dataa => \s6|reactcount_var\(1),
	datab => \s6|reactcount_var\(0),
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|reactcount_var\(1),
	cout0 => \s6|reactcount_var[1]~5\,
	cout1 => \s6|reactcount_var[1]~5COUT1_8\);

-- Location: LC_X3_Y7_N7
\s6|reactcount_var[2]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount_var\(2) = DFFEAS(\s6|reactcount_var\(2) $ ((((\s6|reactcount_var[1]~5\)))), GLOBAL(\s0|output~combout\), GLOBAL(\nreset~combout\), , , , , , )
-- \s6|reactcount_var[2]~3\ = CARRY(((!\s6|reactcount_var[1]~5\)) # (!\s6|reactcount_var\(2)))
-- \s6|reactcount_var[2]~3COUT1_9\ = CARRY(((!\s6|reactcount_var[1]~5COUT1_8\)) # (!\s6|reactcount_var\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|output~combout\,
	dataa => \s6|reactcount_var\(2),
	aclr => \ALT_INV_nreset~combout\,
	cin0 => \s6|reactcount_var[1]~5\,
	cin1 => \s6|reactcount_var[1]~5COUT1_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|reactcount_var\(2),
	cout0 => \s6|reactcount_var[2]~3\,
	cout1 => \s6|reactcount_var[2]~3COUT1_9\);

-- Location: LC_X3_Y7_N8
\s6|reactcount_var[3]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount_var\(3) = DFFEAS(((\s6|reactcount_var[2]~3\ $ (!\s6|reactcount_var\(3)))), GLOBAL(\s0|output~combout\), GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s0|output~combout\,
	datad => \s6|reactcount_var\(3),
	aclr => \ALT_INV_nreset~combout\,
	cin0 => \s6|reactcount_var[2]~3\,
	cin1 => \s6|reactcount_var[2]~3COUT1_9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|reactcount_var\(3));

-- Location: LC_X3_Y7_N3
\s6|reactcount[3]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount\(3) = (GLOBAL(\nreset~combout\) & (((\s6|reactcount_var\(3))))) # (!GLOBAL(\nreset~combout\) & (\s6|reactcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s6|reactcount\(3),
	datab => \nreset~combout\,
	datad => \s6|reactcount_var\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|reactcount\(3));

-- Location: LC_X4_Y7_N0
\oversig~0\ : maxv_lcell
-- Equation(s):
-- \oversig~0_combout\ = (((\nreset~combout\ & \oversig~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nreset~combout\,
	datad => \oversig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oversig~0_combout\);

-- Location: LC_X3_Y9_N9
\s3|toled\ : maxv_lcell
-- Equation(s):
-- \LED~0\ = (((E1_toled & !\oversig~regout\)))
-- \s3|toled~regout\ = DFFEAS(\LED~0\, GLOBAL(\s1|outclk~regout\), VCC, , , \s3|ledsig~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s3|ledsig~regout\,
	datad => \oversig~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED~0\,
	regout => \s3|toled~regout\);

-- Location: LC_X2_Y7_N4
\s6|ledcount_var[0]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount_var\(0) = DFFEAS((((!\s6|ledcount_var\(0)))), \s3|toled~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s3|toled~regout\,
	datac => \s6|ledcount_var\(0),
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|ledcount_var\(0));

-- Location: LC_X2_Y7_N1
\s6|ledcount_var[1]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount_var\(1) = DFFEAS(\s6|ledcount_var\(0) $ ((\s6|ledcount_var\(1))), \s3|toled~regout\, GLOBAL(\nreset~combout\), , , , , , )
-- \s6|ledcount_var[1]~1\ = CARRY((\s6|ledcount_var\(0) & (\s6|ledcount_var\(1))))
-- \s6|ledcount_var[1]~1COUT1_8\ = CARRY((\s6|ledcount_var\(0) & (\s6|ledcount_var\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s3|toled~regout\,
	dataa => \s6|ledcount_var\(0),
	datab => \s6|ledcount_var\(1),
	aclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|ledcount_var\(1),
	cout0 => \s6|ledcount_var[1]~1\,
	cout1 => \s6|ledcount_var[1]~1COUT1_8\);

-- Location: LC_X2_Y7_N2
\s6|ledcount_var[2]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount_var\(2) = DFFEAS((\s6|ledcount_var\(2) $ ((\s6|ledcount_var[1]~1\))), \s3|toled~regout\, GLOBAL(\nreset~combout\), , , , , , )
-- \s6|ledcount_var[2]~3\ = CARRY(((!\s6|ledcount_var[1]~1\) # (!\s6|ledcount_var\(2))))
-- \s6|ledcount_var[2]~3COUT1_9\ = CARRY(((!\s6|ledcount_var[1]~1COUT1_8\) # (!\s6|ledcount_var\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s3|toled~regout\,
	datab => \s6|ledcount_var\(2),
	aclr => \ALT_INV_nreset~combout\,
	cin0 => \s6|ledcount_var[1]~1\,
	cin1 => \s6|ledcount_var[1]~1COUT1_8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|ledcount_var\(2),
	cout0 => \s6|ledcount_var[2]~3\,
	cout1 => \s6|ledcount_var[2]~3COUT1_9\);

-- Location: LC_X2_Y7_N3
\s6|ledcount_var[3]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount_var\(3) = DFFEAS(((\s6|ledcount_var[2]~3\ $ (!\s6|ledcount_var\(3)))), \s3|toled~regout\, GLOBAL(\nreset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s3|toled~regout\,
	datad => \s6|ledcount_var\(3),
	aclr => \ALT_INV_nreset~combout\,
	cin0 => \s6|ledcount_var[2]~3\,
	cin1 => \s6|ledcount_var[2]~3COUT1_9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s6|ledcount_var\(3));

-- Location: LC_X3_Y7_N0
\s6|ledcount[3]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount\(3) = ((GLOBAL(\nreset~combout\) & (\s6|ledcount_var\(3))) # (!GLOBAL(\nreset~combout\) & ((\s6|ledcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s6|ledcount_var\(3),
	datac => \s6|ledcount\(3),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|ledcount\(3));

-- Location: LC_X3_Y7_N5
\s6|reactcount[2]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount\(2) = ((GLOBAL(\nreset~combout\) & ((\s6|reactcount_var\(2)))) # (!GLOBAL(\nreset~combout\) & (\s6|reactcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s6|reactcount\(2),
	datac => \s6|reactcount_var\(2),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|reactcount\(2));

-- Location: LC_X2_Y7_N6
\s6|ledcount[2]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount\(2) = ((GLOBAL(\nreset~combout\) & (\s6|ledcount_var\(2))) # (!GLOBAL(\nreset~combout\) & ((\s6|ledcount\(2)))))

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
	dataa => \s6|ledcount_var\(2),
	datac => \s6|ledcount\(2),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|ledcount\(2));

-- Location: LC_X2_Y7_N5
\s6|ledcount[1]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount\(1) = ((GLOBAL(\nreset~combout\) & (\s6|ledcount_var\(1))) # (!GLOBAL(\nreset~combout\) & ((\s6|ledcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s6|ledcount_var\(1),
	datac => \s6|ledcount\(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|ledcount\(1));

-- Location: LC_X2_Y7_N9
\s6|ledcount[0]\ : maxv_lcell
-- Equation(s):
-- \s6|ledcount\(0) = ((GLOBAL(\nreset~combout\) & (\s6|ledcount_var\(0))) # (!GLOBAL(\nreset~combout\) & ((\s6|ledcount\(0)))))

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
	dataa => \s6|ledcount_var\(0),
	datab => \s6|ledcount\(0),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|ledcount\(0));

-- Location: LC_X3_Y7_N9
\s6|reactcount[1]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount\(1) = ((GLOBAL(\nreset~combout\) & ((\s6|reactcount_var\(1)))) # (!GLOBAL(\nreset~combout\) & (\s6|reactcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s6|reactcount\(1),
	datac => \s6|reactcount_var\(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|reactcount\(1));

-- Location: LC_X3_Y7_N4
\s6|reactcount[0]\ : maxv_lcell
-- Equation(s):
-- \s6|reactcount\(0) = ((GLOBAL(\nreset~combout\) & ((\s6|reactcount_var\(0)))) # (!GLOBAL(\nreset~combout\) & (\s6|reactcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nreset~combout\,
	datac => \s6|reactcount\(0),
	datad => \s6|reactcount_var\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s6|reactcount\(0));

-- Location: LC_X2_Y7_N7
\oversig~1\ : maxv_lcell
-- Equation(s):
-- \oversig~1_combout\ = (\s6|ledcount\(1) & (!\s6|ledcount\(0) & (\s6|reactcount\(1) & \s6|reactcount\(0)))) # (!\s6|ledcount\(1) & ((\s6|reactcount\(1)) # ((!\s6|ledcount\(0) & \s6|reactcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s6|ledcount\(1),
	datab => \s6|ledcount\(0),
	datac => \s6|reactcount\(1),
	datad => \s6|reactcount\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oversig~1_combout\);

-- Location: LC_X2_Y7_N8
\oversig~2\ : maxv_lcell
-- Equation(s):
-- \oversig~2_combout\ = ((\s6|reactcount\(2) & ((\oversig~1_combout\) # (!\s6|ledcount\(2)))) # (!\s6|reactcount\(2) & (!\s6|ledcount\(2) & \oversig~1_combout\)))

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
	datab => \s6|reactcount\(2),
	datac => \s6|ledcount\(2),
	datad => \oversig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oversig~2_combout\);

-- Location: LC_X2_Y7_N0
oversig : maxv_lcell
-- Equation(s):
-- \oversig~regout\ = DFFEAS((\oversig~0_combout\) # ((\s6|reactcount\(3) & ((\oversig~2_combout\) # (!\s6|ledcount\(3)))) # (!\s6|reactcount\(3) & (!\s6|ledcount\(3) & \oversig~2_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efce",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s6|reactcount\(3),
	datab => \oversig~0_combout\,
	datac => \s6|ledcount\(3),
	datad => \oversig~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oversig~regout\);

-- Location: LC_X11_Y8_N4
\s5|done_sig~0\ : maxv_lcell
-- Equation(s):
-- \s5|done_sig~0_combout\ = (((\nreset~combout\ & \s5|done_sig~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \nreset~combout\,
	datad => \s5|done_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|done_sig~0_combout\);

-- Location: LC_X12_Y8_N5
\s5|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \s5|LessThan2~1_combout\ = ((\s5|count_sig\(0)) # ((\s5|count_sig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s5|count_sig\(0),
	datac => \s5|count_sig\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s5|LessThan2~1_combout\);

-- Location: LC_X12_Y8_N1
\s5|done_sig\ : maxv_lcell
-- Equation(s):
-- \s5|done_sig~regout\ = DFFEAS((\s5|done_sig~0_combout\) # ((\s5|count_sig\(3) & ((\s5|count_sig\(2)) # (\s5|LessThan2~1_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s5|count_sig\(2),
	datab => \s5|done_sig~0_combout\,
	datac => \s5|LessThan2~1_combout\,
	datad => \s5|count_sig\(3),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|done_sig~regout\);

-- Location: LC_X11_Y8_N5
\s5|done\ : maxv_lcell
-- Equation(s):
-- \s5|done~regout\ = DFFEAS((((\s5|done_sig~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \s5|done_sig~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s5|done~regout\);

-- Location: LC_X10_Y5_N9
put_char : maxv_lcell
-- Equation(s):
-- \put_char~regout\ = DFFEAS((\s7|ack~regout\ & (((\s5|done~regout\)))) # (!\s7|ack~regout\ & (\nreset~combout\ & ((\put_char~regout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \nreset~combout\,
	datab => \s7|ack~regout\,
	datac => \s5|done~regout\,
	datad => \put_char~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \put_char~regout\);

-- Location: LC_X10_Y5_N2
\s7|state.S7\ : maxv_lcell
-- Equation(s):
-- \s7|state~29\ = (\nreset~combout\ & (\s7|state.S6~regout\ & ((\erase~regout\) # (!\put_char~regout\))))
-- \s7|state.S7~regout\ = DFFEAS(\s7|state~29\, GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \erase~regout\,
	datab => \put_char~regout\,
	datac => \nreset~combout\,
	datad => \s7|state.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|state~29\,
	regout => \s7|state.S7~regout\);

-- Location: LC_X10_Y5_N1
\s7|state.S8\ : maxv_lcell
-- Equation(s):
-- \s7|state.S8~regout\ = DFFEAS((\s7|state.S7~regout\ & (((\nreset~combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S7~regout\,
	datac => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S8~regout\);

-- Location: LC_X11_Y5_N4
\s7|state.S9\ : maxv_lcell
-- Equation(s):
-- \s7|state.S9~regout\ = DFFEAS((\s7|state.S8~regout\ & (((\nreset~combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S8~regout\,
	datad => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S9~regout\);

-- Location: LC_X14_Y5_N0
\s7|state.S0\ : maxv_lcell
-- Equation(s):
-- \s7|state.S0~regout\ = DFFEAS((!\s7|state.S2~regout\ & (((\nreset~combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S2~regout\,
	datac => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S0~regout\);

-- Location: LC_X15_Y5_N5
\s7|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \s7|count_cmd\(0) = DFFEAS(\s7|count_cmd\(0) $ ((((\s7|state.S2~regout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|count_cmd\(0),
	datac => \s7|state.S2~regout\,
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|count_cmd\(0));

-- Location: LC_X15_Y5_N2
\s7|Add0~0\ : maxv_lcell
-- Equation(s):
-- \s7|Add0~0_combout\ = (\s7|count_cmd\(1) & (((\s7|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(1),
	datac => \s7|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Add0~0_combout\);

-- Location: LC_X15_Y5_N7
\s7|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \s7|count_cmd\(2) = DFFEAS(\s7|count_cmd\(2) $ ((((\s7|state.S2~regout\ & \s7|Add0~0_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|count_cmd\(2),
	datac => \s7|state.S2~regout\,
	datad => \s7|Add0~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|count_cmd\(2));

-- Location: LC_X14_Y5_N9
\s7|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \s7|LessThan0~0_combout\ = (((!\s7|count_cmd\(1) & !\s7|count_cmd\(0)))) # (!\s7|count_cmd\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(2),
	datac => \s7|count_cmd\(1),
	datad => \s7|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|LessThan0~0_combout\);

-- Location: LC_X14_Y5_N4
\s7|state.S1\ : maxv_lcell
-- Equation(s):
-- \s7|state.S1~regout\ = DFFEAS(((\nreset~combout\ & (!\s7|state.S0~regout\ & \s7|LessThan0~0_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

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
	clk => \s1|outclk~regout\,
	datab => \nreset~combout\,
	datac => \s7|state.S0~regout\,
	datad => \s7|LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S1~regout\);

-- Location: LC_X14_Y5_N6
\s7|state.S2\ : maxv_lcell
-- Equation(s):
-- \s7|state.S2~regout\ = DFFEAS((((\nreset~combout\ & \s7|state.S1~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \nreset~combout\,
	datad => \s7|state.S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S2~regout\);

-- Location: LC_X15_Y5_N3
\s7|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \s7|count_cmd\(1) = DFFEAS(\s7|count_cmd\(1) $ (((\s7|state.S2~regout\ & (\s7|count_cmd\(0))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|count_cmd\(1),
	datab => \s7|state.S2~regout\,
	datac => \s7|count_cmd\(0),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|count_cmd\(1));

-- Location: LC_X14_Y5_N7
\s7|lcd[6]~0\ : maxv_lcell
-- Equation(s):
-- \s7|lcd[6]~0_combout\ = (!\s7|state.S0~regout\ & (\s7|count_cmd\(2) & ((\s7|count_cmd\(1)) # (\s7|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(1),
	datab => \s7|count_cmd\(0),
	datac => \s7|state.S0~regout\,
	datad => \s7|count_cmd\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|lcd[6]~0_combout\);

-- Location: LC_X11_Y5_N7
\s7|state.S3\ : maxv_lcell
-- Equation(s):
-- \s7|state.S3~regout\ = DFFEAS((\nreset~combout\ & ((\s7|state.S9~regout\) # ((\s7|lcd[6]~1_combout\) # (\s7|lcd[6]~0_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S9~regout\,
	datab => \nreset~combout\,
	datac => \s7|lcd[6]~1_combout\,
	datad => \s7|lcd[6]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S3~regout\);

-- Location: LC_X11_Y5_N2
\s7|state.S4\ : maxv_lcell
-- Equation(s):
-- \s7|state.S4~regout\ = DFFEAS(((\s7|state.S3~regout\ & ((\nreset~combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s7|state.S3~regout\,
	datad => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S4~regout\);

-- Location: LC_X11_Y5_N5
\s7|state.S5\ : maxv_lcell
-- Equation(s):
-- \s7|state.S5~regout\ = DFFEAS(((\nreset~combout\ & ((\s7|state.S4~regout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \nreset~combout\,
	datad => \s7|state.S4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S5~regout\);

-- Location: LC_X11_Y5_N1
\s7|state.S6\ : maxv_lcell
-- Equation(s):
-- \s7|state.S6~regout\ = DFFEAS((\s7|state.S5~regout\ & (((\nreset~combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S5~regout\,
	datad => \nreset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|state.S6~regout\);

-- Location: LC_X10_Y5_N4
\s7|lcd[6]~1\ : maxv_lcell
-- Equation(s):
-- \s7|lcd[6]~1_combout\ = ((\put_char~regout\ & (!\erase~regout\ & \s7|state.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \put_char~regout\,
	datac => \erase~regout\,
	datad => \s7|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|lcd[6]~1_combout\);

-- Location: LC_X10_Y5_N0
\s7|ack\ : maxv_lcell
-- Equation(s):
-- \s7|ack~regout\ = DFFEAS((\s7|state.S8~regout\) # ((J1_ack & ((\s7|lcd[6]~1_combout\) # (\s7|lcd[6]~0_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|lcd[6]~1_combout\,
	datab => \s7|state.S8~regout\,
	datad => \s7|lcd[6]~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|ack~regout\);

-- Location: LC_X9_Y9_N8
\write_row[0]~0\ : maxv_lcell
-- Equation(s):
-- \write_row[0]~0_combout\ = (((\s7|ack~regout\) # (!\nreset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \s7|ack~regout\,
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_row[0]~0_combout\);

-- Location: LC_X9_Y9_N1
erase : maxv_lcell
-- Equation(s):
-- \erase~regout\ = DFFEAS((((!\s7|ack~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \write_row[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s7|ack~regout\,
	aclr => GND,
	ena => \write_row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \erase~regout\);

-- Location: LC_X10_Y5_N5
\s7|process_1~0\ : maxv_lcell
-- Equation(s):
-- \s7|process_1~0_combout\ = (((\erase~regout\) # (!\put_char~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \erase~regout\,
	datad => \put_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|process_1~0_combout\);

-- Location: LC_X11_Y5_N0
\s7|Selector8~1\ : maxv_lcell
-- Equation(s):
-- \s7|Selector8~1_combout\ = (!\s7|state.S7~regout\ & (!\s7|state.S8~regout\ & ((!\s7|state.S6~regout\) # (!\s7|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|process_1~0_combout\,
	datab => \s7|state.S7~regout\,
	datac => \s7|state.S8~regout\,
	datad => \s7|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector8~1_combout\);

-- Location: LC_X14_Y5_N8
\s7|Selector8~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector8~0_combout\ = ((!\s7|state.S9~regout\ & ((\s7|state.S0~regout\) # (\s7|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s7|state.S0~regout\,
	datac => \s7|state.S9~regout\,
	datad => \s7|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector8~0_combout\);

-- Location: LC_X14_Y5_N5
\s7|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \s7|lcd_rs~regout\ = DFFEAS(((\s7|lcd_rs~regout\ & ((\s7|state.S6~regout\) # (!\s7|Selector8~0_combout\)))) # (!\s7|Selector8~1_combout\), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5f5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|Selector8~1_combout\,
	datab => \s7|state.S6~regout\,
	datac => \s7|lcd_rs~regout\,
	datad => \s7|Selector8~0_combout\,
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd_rs~regout\);

-- Location: LC_X11_Y5_N9
\s7|Selector10~1\ : maxv_lcell
-- Equation(s):
-- \s7|Selector10~1_combout\ = (\s7|state.S9~regout\) # ((\s7|lcd[6]~0_combout\) # ((!\s7|process_1~0_combout\ & \s7|state.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|process_1~0_combout\,
	datab => \s7|state.S6~regout\,
	datac => \s7|state.S9~regout\,
	datad => \s7|lcd[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector10~1_combout\);

-- Location: LC_X11_Y5_N8
\s7|Selector10~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector10~0_combout\ = ((\s7|state.S7~regout\) # ((\s7|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s7|state.S7~regout\,
	datad => \s7|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector10~0_combout\);

-- Location: LC_X16_Y5_N7
\s7|lcd_en\ : maxv_lcell
-- Equation(s):
-- \s7|lcd_en~regout\ = DFFEAS((\s7|state.S1~regout\) # ((\s7|Selector10~0_combout\) # ((\s7|Selector10~1_combout\ & \s7|lcd_en~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|state.S1~regout\,
	datab => \s7|Selector10~1_combout\,
	datac => \s7|lcd_en~regout\,
	datad => \s7|Selector10~0_combout\,
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd_en~regout\);

-- Location: LC_X11_Y5_N3
\s7|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \s7|WideOr1~0_combout\ = ((\s7|state.S3~regout\) # ((\s7|state.S5~regout\) # (\s7|state.S4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s7|state.S3~regout\,
	datac => \s7|state.S5~regout\,
	datad => \s7|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|WideOr1~0_combout\);

-- Location: LC_X9_Y7_N0
\nextd[0]\ : maxv_lcell
-- Equation(s):
-- nextd(0) = DFFEAS((((!\nextd~1_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \nextd~1_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nextd(0));

-- Location: LC_X8_Y7_N4
\nextd[1]\ : maxv_lcell
-- Equation(s):
-- nextd(1) = DFFEAS((((!\nextd~5_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \nextd~5_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nextd(1));

-- Location: LC_X4_Y8_N8
\Equal5~4\ : maxv_lcell
-- Equation(s):
-- \Equal5~4_combout\ = (!d(0) & (d(2) & (d(1) & \nreset~combout\)))

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
	dataa => d(0),
	datab => d(2),
	datac => d(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~4_combout\);

-- Location: LC_X9_Y7_N1
\write_data[3]~10\ : maxv_lcell
-- Equation(s):
-- \write_data[3]~10_combout\ = ((\nreset~combout\ & ((d(1)) # (d(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nreset~combout\,
	datac => d(1),
	datad => d(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[3]~10_combout\);

-- Location: LC_X4_Y8_N0
\Equal5~1\ : maxv_lcell
-- Equation(s):
-- \Equal5~1_combout\ = (d(0) & (d(2) & (!d(1) & \nreset~combout\)))

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
	dataa => d(0),
	datab => d(2),
	datac => d(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~1_combout\);

-- Location: LC_X4_Y8_N2
\Equal5~3\ : maxv_lcell
-- Equation(s):
-- \Equal5~3_combout\ = ((!d(0) & (!d(1) & !d(2)))) # (!\nreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => d(0),
	datab => d(1),
	datac => d(2),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~3_combout\);

-- Location: LC_X4_Y9_N4
\s4|rtime_sig[0]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(0) = DFFEAS(\s3|toled~regout\ $ ((\s4|rtime_sig\(0))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[0]~1\ = CARRY((\s3|toled~regout\ & (\s4|rtime_sig\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s3|toled~regout\,
	datab => \s4|rtime_sig\(0),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(0),
	cout => \s4|rtime_sig[0]~1\);

-- Location: LC_X4_Y9_N5
\s4|rtime_sig[1]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(1) = DFFEAS(\s4|rtime_sig\(1) $ ((((\s4|rtime_sig[0]~1\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[1]~3\ = CARRY(((!\s4|rtime_sig[0]~1\)) # (!\s4|rtime_sig\(1)))
-- \s4|rtime_sig[1]~3COUT1_27\ = CARRY(((!\s4|rtime_sig[0]~1\)) # (!\s4|rtime_sig\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(1),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(1),
	cout0 => \s4|rtime_sig[1]~3\,
	cout1 => \s4|rtime_sig[1]~3COUT1_27\);

-- Location: LC_X4_Y9_N6
\s4|rtime_sig[2]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(2) = DFFEAS(\s4|rtime_sig\(2) $ ((((!(!\s4|rtime_sig[0]~1\ & \s4|rtime_sig[1]~3\) # (\s4|rtime_sig[0]~1\ & \s4|rtime_sig[1]~3COUT1_27\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[2]~5\ = CARRY((\s4|rtime_sig\(2) & ((!\s4|rtime_sig[1]~3\))))
-- \s4|rtime_sig[2]~5COUT1_28\ = CARRY((\s4|rtime_sig\(2) & ((!\s4|rtime_sig[1]~3COUT1_27\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(2),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[0]~1\,
	cin0 => \s4|rtime_sig[1]~3\,
	cin1 => \s4|rtime_sig[1]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(2),
	cout0 => \s4|rtime_sig[2]~5\,
	cout1 => \s4|rtime_sig[2]~5COUT1_28\);

-- Location: LC_X4_Y9_N7
\s4|rtime_sig[3]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(3) = DFFEAS((\s4|rtime_sig\(3) $ (((!\s4|rtime_sig[0]~1\ & \s4|rtime_sig[2]~5\) # (\s4|rtime_sig[0]~1\ & \s4|rtime_sig[2]~5COUT1_28\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[3]~7\ = CARRY(((!\s4|rtime_sig[2]~5\) # (!\s4|rtime_sig\(3))))
-- \s4|rtime_sig[3]~7COUT1_29\ = CARRY(((!\s4|rtime_sig[2]~5COUT1_28\) # (!\s4|rtime_sig\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s4|rtime_sig\(3),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[0]~1\,
	cin0 => \s4|rtime_sig[2]~5\,
	cin1 => \s4|rtime_sig[2]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(3),
	cout0 => \s4|rtime_sig[3]~7\,
	cout1 => \s4|rtime_sig[3]~7COUT1_29\);

-- Location: LC_X4_Y9_N8
\s4|rtime_sig[4]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(4) = DFFEAS(\s4|rtime_sig\(4) $ ((((!(!\s4|rtime_sig[0]~1\ & \s4|rtime_sig[3]~7\) # (\s4|rtime_sig[0]~1\ & \s4|rtime_sig[3]~7COUT1_29\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[4]~9\ = CARRY((\s4|rtime_sig\(4) & ((!\s4|rtime_sig[3]~7\))))
-- \s4|rtime_sig[4]~9COUT1_30\ = CARRY((\s4|rtime_sig\(4) & ((!\s4|rtime_sig[3]~7COUT1_29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(4),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[0]~1\,
	cin0 => \s4|rtime_sig[3]~7\,
	cin1 => \s4|rtime_sig[3]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(4),
	cout0 => \s4|rtime_sig[4]~9\,
	cout1 => \s4|rtime_sig[4]~9COUT1_30\);

-- Location: LC_X4_Y9_N9
\s4|rtime_sig[5]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(5) = DFFEAS((\s4|rtime_sig\(5) $ (((!\s4|rtime_sig[0]~1\ & \s4|rtime_sig[4]~9\) # (\s4|rtime_sig[0]~1\ & \s4|rtime_sig[4]~9COUT1_30\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[5]~11\ = CARRY(((!\s4|rtime_sig[4]~9COUT1_30\) # (!\s4|rtime_sig\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s4|rtime_sig\(5),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[0]~1\,
	cin0 => \s4|rtime_sig[4]~9\,
	cin1 => \s4|rtime_sig[4]~9COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(5),
	cout => \s4|rtime_sig[5]~11\);

-- Location: LC_X5_Y9_N0
\s4|rtime_sig[6]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(6) = DFFEAS((\s4|rtime_sig\(6) $ ((!\s4|rtime_sig[5]~11\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[6]~13\ = CARRY(((\s4|rtime_sig\(6) & !\s4|rtime_sig[5]~11\)))
-- \s4|rtime_sig[6]~13COUT1_31\ = CARRY(((\s4|rtime_sig\(6) & !\s4|rtime_sig[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s4|rtime_sig\(6),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[5]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(6),
	cout0 => \s4|rtime_sig[6]~13\,
	cout1 => \s4|rtime_sig[6]~13COUT1_31\);

-- Location: LC_X5_Y9_N1
\s4|rtime_sig[7]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(7) = DFFEAS((\s4|rtime_sig\(7) $ (((!\s4|rtime_sig[5]~11\ & \s4|rtime_sig[6]~13\) # (\s4|rtime_sig[5]~11\ & \s4|rtime_sig[6]~13COUT1_31\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[7]~15\ = CARRY(((!\s4|rtime_sig[6]~13\) # (!\s4|rtime_sig\(7))))
-- \s4|rtime_sig[7]~15COUT1_32\ = CARRY(((!\s4|rtime_sig[6]~13COUT1_31\) # (!\s4|rtime_sig\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s4|rtime_sig\(7),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[5]~11\,
	cin0 => \s4|rtime_sig[6]~13\,
	cin1 => \s4|rtime_sig[6]~13COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(7),
	cout0 => \s4|rtime_sig[7]~15\,
	cout1 => \s4|rtime_sig[7]~15COUT1_32\);

-- Location: LC_X5_Y9_N2
\s4|rtime_sig[8]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(8) = DFFEAS((\s4|rtime_sig\(8) $ ((!(!\s4|rtime_sig[5]~11\ & \s4|rtime_sig[7]~15\) # (\s4|rtime_sig[5]~11\ & \s4|rtime_sig[7]~15COUT1_32\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[8]~25\ = CARRY(((\s4|rtime_sig\(8) & !\s4|rtime_sig[7]~15\)))
-- \s4|rtime_sig[8]~25COUT1_33\ = CARRY(((\s4|rtime_sig\(8) & !\s4|rtime_sig[7]~15COUT1_32\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s4|rtime_sig\(8),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[5]~11\,
	cin0 => \s4|rtime_sig[7]~15\,
	cin1 => \s4|rtime_sig[7]~15COUT1_32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(8),
	cout0 => \s4|rtime_sig[8]~25\,
	cout1 => \s4|rtime_sig[8]~25COUT1_33\);

-- Location: LC_X5_Y9_N3
\s4|rtime_sig[9]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(9) = DFFEAS(\s4|rtime_sig\(9) $ (((((!\s4|rtime_sig[5]~11\ & \s4|rtime_sig[8]~25\) # (\s4|rtime_sig[5]~11\ & \s4|rtime_sig[8]~25COUT1_33\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[9]~23\ = CARRY(((!\s4|rtime_sig[8]~25\)) # (!\s4|rtime_sig\(9)))
-- \s4|rtime_sig[9]~23COUT1_34\ = CARRY(((!\s4|rtime_sig[8]~25COUT1_33\)) # (!\s4|rtime_sig\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(9),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[5]~11\,
	cin0 => \s4|rtime_sig[8]~25\,
	cin1 => \s4|rtime_sig[8]~25COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(9),
	cout0 => \s4|rtime_sig[9]~23\,
	cout1 => \s4|rtime_sig[9]~23COUT1_34\);

-- Location: LC_X5_Y9_N4
\s4|rtime_sig[10]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(10) = DFFEAS(\s4|rtime_sig\(10) $ ((((!(!\s4|rtime_sig[5]~11\ & \s4|rtime_sig[9]~23\) # (\s4|rtime_sig[5]~11\ & \s4|rtime_sig[9]~23COUT1_34\))))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[10]~21\ = CARRY((\s4|rtime_sig\(10) & ((!\s4|rtime_sig[9]~23COUT1_34\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(10),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[5]~11\,
	cin0 => \s4|rtime_sig[9]~23\,
	cin1 => \s4|rtime_sig[9]~23COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(10),
	cout => \s4|rtime_sig[10]~21\);

-- Location: LC_X5_Y9_N5
\s4|rtime_sig[11]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(11) = DFFEAS(\s4|rtime_sig\(11) $ ((((\s4|rtime_sig[10]~21\)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )
-- \s4|rtime_sig[11]~19\ = CARRY(((!\s4|rtime_sig[10]~21\)) # (!\s4|rtime_sig\(11)))
-- \s4|rtime_sig[11]~19COUT1_35\ = CARRY(((!\s4|rtime_sig[10]~21\)) # (!\s4|rtime_sig\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|rtime_sig\(11),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(11),
	cout0 => \s4|rtime_sig[11]~19\,
	cout1 => \s4|rtime_sig[11]~19COUT1_35\);

-- Location: LC_X4_Y8_N7
\Equal5~0\ : maxv_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (!d(0) & (!d(1) & (d(2) & \nreset~combout\)))

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
	dataa => d(0),
	datab => d(1),
	datac => d(2),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X9_Y8_N1
\timeint~42\ : maxv_lcell
-- Equation(s):
-- \timeint~42_combout\ = (((!\Add0~0_combout\ & \Equal5~0_combout\)))

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
	datac => \Add0~0_combout\,
	datad => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~42_combout\);

-- Location: LC_X5_Y8_N8
\s4|tottime[3]\ : maxv_lcell
-- Equation(s):
-- \timeint~43\ = ((\Equal5~3_combout\ & ((F1_tottime[3]))) # (!\Equal5~3_combout\ & (timeint(3))))
-- \s4|tottime\(3) = DFFEAS(\timeint~43\, GLOBAL(\s1|outclk~regout\), VCC, , , \s4|rtime_sig\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => timeint(3),
	datac => \s4|rtime_sig\(3),
	datad => \Equal5~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~43\,
	regout => \s4|tottime\(3));

-- Location: LC_X5_Y10_N7
\timeint~50\ : maxv_lcell
-- Equation(s):
-- \timeint~50_combout\ = \timeint~42_combout\ $ (((\Equal5~3_combout\ & (\s4|tottime\(3))) # (!\Equal5~3_combout\ & ((timeint(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \s4|tottime\(3),
	datac => timeint(3),
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~50_combout\);

-- Location: LC_X6_Y9_N8
\s4|tottime[2]\ : maxv_lcell
-- Equation(s):
-- \timeint~40\ = ((\Equal5~3_combout\ & (F1_tottime[2])) # (!\Equal5~3_combout\ & ((timeint(2)))))
-- \s4|tottime\(2) = DFFEAS(\timeint~40\, GLOBAL(\s1|outclk~regout\), VCC, , , \s4|rtime_sig\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(2),
	datad => timeint(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~40\,
	regout => \s4|tottime\(2));

-- Location: LC_X6_Y10_N0
\Add3~37\ : maxv_lcell
-- Equation(s):
-- \Add3~37_cout0\ = CARRY((\timeint~40\))
-- \Add3~37COUT1_151\ = CARRY((\timeint~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35\,
	cout0 => \Add3~37_cout0\,
	cout1 => \Add3~37COUT1_151\);

-- Location: LC_X6_Y10_N1
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = (\timeint~50_combout\ $ ((!\Add3~37_cout0\)))
-- \Add3~7\ = CARRY(((!\timeint~50_combout\ & !\Add3~37_cout0\)))
-- \Add3~7COUT1_152\ = CARRY(((!\timeint~50_combout\ & !\Add3~37COUT1_151\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~50_combout\,
	cin0 => \Add3~37_cout0\,
	cin1 => \Add3~37COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_152\);

-- Location: LC_X6_Y10_N2
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = \timeint~76_combout\ $ ((((\Add3~7\))))
-- \Add3~12\ = CARRY((\timeint~76_combout\) # ((!\Add3~7\)))
-- \Add3~12COUT1_153\ = CARRY((\timeint~76_combout\) # ((!\Add3~7COUT1_152\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~76_combout\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_153\);

-- Location: LC_X6_Y10_N3
\Add3~15\ : maxv_lcell
-- Equation(s):
-- \Add3~15_combout\ = (\timeint~79_combout\ $ ((\Add3~12\)))
-- \Add3~17\ = CARRY(((!\Add3~12\) # (!\timeint~79_combout\)))
-- \Add3~17COUT1_154\ = CARRY(((!\Add3~12COUT1_153\) # (!\timeint~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~79_combout\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_154\);

-- Location: LC_X6_Y10_N4
\Add3~20\ : maxv_lcell
-- Equation(s):
-- \Add3~20_combout\ = (\timeint~82_combout\ $ ((!\Add3~17\)))
-- \Add3~22\ = CARRY(((\timeint~82_combout\ & !\Add3~17COUT1_154\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~82_combout\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout => \Add3~22\);

-- Location: LC_X6_Y10_N5
\Add3~25\ : maxv_lcell
-- Equation(s):
-- \Add3~25_combout\ = (\timeint~85_combout\ $ ((!\Add3~22\)))
-- \Add3~27\ = CARRY(((!\timeint~85_combout\ & !\Add3~22\)))
-- \Add3~27COUT1_155\ = CARRY(((!\timeint~85_combout\ & !\Add3~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~85_combout\,
	cin => \Add3~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout0 => \Add3~27\,
	cout1 => \Add3~27COUT1_155\);

-- Location: LC_X7_Y9_N5
\timeint~86\ : maxv_lcell
-- Equation(s):
-- \timeint~86_combout\ = (\Equal5~1_combout\ & ((\Add3~0_combout\ & ((\timeint~85_combout\))) # (!\Add3~0_combout\ & (\Add3~25_combout\)))) # (!\Equal5~1_combout\ & (((\timeint~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add3~25_combout\,
	datac => \timeint~85_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~86_combout\);

-- Location: LC_X6_Y7_N4
\s4|tottime[1]\ : maxv_lcell
-- Equation(s):
-- \timeint~52\ = ((\Equal5~3_combout\ & (F1_tottime[1])) # (!\Equal5~3_combout\ & ((timeint(1)))))
-- \s4|tottime\(1) = DFFEAS(\timeint~52\, GLOBAL(\s1|outclk~regout\), VCC, , , \s4|rtime_sig\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(1),
	datad => timeint(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~52\,
	regout => \s4|tottime\(1));

-- Location: LC_X7_Y10_N5
\Add3~100\ : maxv_lcell
-- Equation(s):
-- \Add3~100_combout\ = (\timeint~65_combout\ $ ((!\Add3~107\)))
-- \Add3~102\ = CARRY(((!\timeint~65_combout\ & !\Add3~107\)))
-- \Add3~102COUT1_163\ = CARRY(((!\timeint~65_combout\ & !\Add3~107\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~65_combout\,
	cin => \Add3~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~100_combout\,
	cout0 => \Add3~102\,
	cout1 => \Add3~102COUT1_163\);

-- Location: LC_X8_Y7_N1
\timeint[17]\ : maxv_lcell
-- Equation(s):
-- \timeint[17]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~100_combout\)) # (!\timeint~39_combout\ & ((\timeint~65_combout\))))
-- timeint(17) = DFFEAS(\timeint[17]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~105_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~100_combout\,
	datab => \timeint~65_combout\,
	datac => \Add6~105_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[17]~COMBOUT\,
	regout => timeint(17));

-- Location: LC_X7_Y6_N0
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = (\timeint~83_combout\ $ ((!\Add6~22\)))
-- \Add6~27\ = CARRY(((!\timeint~83_combout\ & !\Add6~22\)))
-- \Add6~27COUT1_160\ = CARRY(((!\timeint~83_combout\ & !\Add6~22\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~83_combout\,
	cin => \Add6~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_160\);

-- Location: LC_X7_Y6_N1
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = \timeint~86_combout\ $ (((((!\Add6~22\ & \Add6~27\) # (\Add6~22\ & \Add6~27COUT1_160\)))))
-- \Add6~32\ = CARRY((\timeint~86_combout\) # ((!\Add6~27\)))
-- \Add6~32COUT1_161\ = CARRY((\timeint~86_combout\) # ((!\Add6~27COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~86_combout\,
	cin => \Add6~22\,
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_161\);

-- Location: LC_X7_Y6_N2
\Add6~150\ : maxv_lcell
-- Equation(s):
-- \Add6~150_combout\ = \timeint[8]~COMBOUT\ $ ((((!(!\Add6~22\ & \Add6~32\) # (\Add6~22\ & \Add6~32COUT1_161\)))))
-- \Add6~152\ = CARRY((!\timeint[8]~COMBOUT\ & ((!\Add6~32\))))
-- \Add6~152COUT1_162\ = CARRY((!\timeint[8]~COMBOUT\ & ((!\Add6~32COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[8]~COMBOUT\,
	cin => \Add6~22\,
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~150_combout\,
	cout0 => \Add6~152\,
	cout1 => \Add6~152COUT1_162\);

-- Location: LC_X8_Y7_N8
\timeint[8]\ : maxv_lcell
-- Equation(s):
-- \timeint[8]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~145_combout\)) # (!\timeint~39_combout\ & ((\timeint~92_combout\))))
-- timeint(8) = DFFEAS(\timeint[8]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~150_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~145_combout\,
	datab => \timeint~92_combout\,
	datac => \Add6~150_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[8]~COMBOUT\,
	regout => timeint(8));

-- Location: LC_X7_Y6_N3
\Add6~145\ : maxv_lcell
-- Equation(s):
-- \Add6~145_combout\ = (\timeint[9]~COMBOUT\ $ (((!\Add6~22\ & \Add6~152\) # (\Add6~22\ & \Add6~152COUT1_162\))))
-- \Add6~147\ = CARRY(((\timeint[9]~COMBOUT\) # (!\Add6~152\)))
-- \Add6~147COUT1_163\ = CARRY(((\timeint[9]~COMBOUT\) # (!\Add6~152COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[9]~COMBOUT\,
	cin => \Add6~22\,
	cin0 => \Add6~152\,
	cin1 => \Add6~152COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~145_combout\,
	cout0 => \Add6~147\,
	cout1 => \Add6~147COUT1_163\);

-- Location: LC_X7_Y7_N6
\timeint[9]\ : maxv_lcell
-- Equation(s):
-- \timeint[9]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~140_combout\))) # (!\timeint~39_combout\ & (\timeint~91_combout\)))
-- timeint(9) = DFFEAS(\timeint[9]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~145_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~91_combout\,
	datab => \Add3~140_combout\,
	datac => \Add6~145_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[9]~COMBOUT\,
	regout => timeint(9));

-- Location: LC_X7_Y6_N4
\Add6~140\ : maxv_lcell
-- Equation(s):
-- \Add6~140_combout\ = (\timeint[10]~COMBOUT\ $ ((!(!\Add6~22\ & \Add6~147\) # (\Add6~22\ & \Add6~147COUT1_163\))))
-- \Add6~142\ = CARRY(((!\timeint[10]~COMBOUT\ & !\Add6~147COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[10]~COMBOUT\,
	cin => \Add6~22\,
	cin0 => \Add6~147\,
	cin1 => \Add6~147COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~140_combout\,
	cout => \Add6~142\);

-- Location: LC_X7_Y7_N3
\timeint[10]\ : maxv_lcell
-- Equation(s):
-- \timeint[10]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~135_combout\)) # (!\timeint~39_combout\ & ((\timeint~90_combout\))))
-- timeint(10) = DFFEAS(\timeint[10]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~140_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~135_combout\,
	datab => \timeint~90_combout\,
	datac => \Add6~140_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[10]~COMBOUT\,
	regout => timeint(10));

-- Location: LC_X5_Y9_N6
\s4|rtime_sig[12]\ : maxv_lcell
-- Equation(s):
-- \s4|rtime_sig\(12) = DFFEAS((((!\s4|rtime_sig[10]~21\ & \s4|rtime_sig[11]~19\) # (\s4|rtime_sig[10]~21\ & \s4|rtime_sig[11]~19COUT1_35\) $ (!\s4|rtime_sig\(12)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , !\nreset~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \s4|rtime_sig\(12),
	aclr => GND,
	sclr => \ALT_INV_nreset~combout\,
	cin => \s4|rtime_sig[10]~21\,
	cin0 => \s4|rtime_sig[11]~19\,
	cin1 => \s4|rtime_sig[11]~19COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|rtime_sig\(12));

-- Location: LC_X7_Y10_N0
\Add3~125\ : maxv_lcell
-- Equation(s):
-- \Add3~125_combout\ = (\timeint~88_combout\ $ ((\Add3~132\)))
-- \Add3~127\ = CARRY(((\timeint~88_combout\) # (!\Add3~132\)))
-- \Add3~127COUT1_159\ = CARRY(((\timeint~88_combout\) # (!\Add3~132\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~88_combout\,
	cin => \Add3~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~125_combout\,
	cout0 => \Add3~127\,
	cout1 => \Add3~127COUT1_159\);

-- Location: LC_X8_Y9_N9
\timeint[12]\ : maxv_lcell
-- Equation(s):
-- \timeint[12]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~125_combout\))) # (!\timeint~39_combout\ & (\timeint~88_combout\)))
-- timeint(12) = DFFEAS(\timeint[12]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~130_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~88_combout\,
	datab => \Add3~125_combout\,
	datac => \Add6~130_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[12]~COMBOUT\,
	regout => timeint(12));

-- Location: LC_X6_Y10_N6
\Add3~145\ : maxv_lcell
-- Equation(s):
-- \Add3~145_combout\ = \timeint~92_combout\ $ (((((!\Add3~22\ & \Add3~27\) # (\Add3~22\ & \Add3~27COUT1_155\)))))
-- \Add3~147\ = CARRY((\timeint~92_combout\) # ((!\Add3~27\)))
-- \Add3~147COUT1_156\ = CARRY((\timeint~92_combout\) # ((!\Add3~27COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~92_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~27\,
	cin1 => \Add3~27COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~145_combout\,
	cout0 => \Add3~147\,
	cout1 => \Add3~147COUT1_156\);

-- Location: LC_X6_Y10_N7
\Add3~140\ : maxv_lcell
-- Equation(s):
-- \Add3~140_combout\ = \timeint~91_combout\ $ ((((!(!\Add3~22\ & \Add3~147\) # (\Add3~22\ & \Add3~147COUT1_156\)))))
-- \Add3~142\ = CARRY((!\timeint~91_combout\ & ((!\Add3~147\))))
-- \Add3~142COUT1_157\ = CARRY((!\timeint~91_combout\ & ((!\Add3~147COUT1_156\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~91_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~147\,
	cin1 => \Add3~147COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~140_combout\,
	cout0 => \Add3~142\,
	cout1 => \Add3~142COUT1_157\);

-- Location: LC_X6_Y10_N8
\Add3~135\ : maxv_lcell
-- Equation(s):
-- \Add3~135_combout\ = (\timeint~90_combout\ $ (((!\Add3~22\ & \Add3~142\) # (\Add3~22\ & \Add3~142COUT1_157\))))
-- \Add3~137\ = CARRY(((\timeint~90_combout\) # (!\Add3~142\)))
-- \Add3~137COUT1_158\ = CARRY(((\timeint~90_combout\) # (!\Add3~142COUT1_157\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~90_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~142\,
	cin1 => \Add3~142COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~135_combout\,
	cout0 => \Add3~137\,
	cout1 => \Add3~137COUT1_158\);

-- Location: LC_X6_Y10_N9
\Add3~130\ : maxv_lcell
-- Equation(s):
-- \Add3~130_combout\ = (\timeint~89_combout\ $ ((!(!\Add3~22\ & \Add3~137\) # (\Add3~22\ & \Add3~137COUT1_158\))))
-- \Add3~132\ = CARRY(((!\timeint~89_combout\ & !\Add3~137COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~89_combout\,
	cin => \Add3~22\,
	cin0 => \Add3~137\,
	cin1 => \Add3~137COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~130_combout\,
	cout => \Add3~132\);

-- Location: LC_X7_Y6_N5
\Add6~135\ : maxv_lcell
-- Equation(s):
-- \Add6~135_combout\ = (\timeint[11]~COMBOUT\ $ ((\Add6~142\)))
-- \Add6~137\ = CARRY(((\timeint[11]~COMBOUT\) # (!\Add6~142\)))
-- \Add6~137COUT1_164\ = CARRY(((\timeint[11]~COMBOUT\) # (!\Add6~142\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[11]~COMBOUT\,
	cin => \Add6~142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~135_combout\,
	cout0 => \Add6~137\,
	cout1 => \Add6~137COUT1_164\);

-- Location: LC_X7_Y7_N5
\timeint[11]\ : maxv_lcell
-- Equation(s):
-- \timeint[11]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~130_combout\))) # (!\timeint~39_combout\ & (\timeint~89_combout\)))
-- timeint(11) = DFFEAS(\timeint[11]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~135_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~89_combout\,
	datab => \Add3~130_combout\,
	datac => \Add6~135_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[11]~COMBOUT\,
	regout => timeint(11));

-- Location: LC_X7_Y6_N6
\Add6~130\ : maxv_lcell
-- Equation(s):
-- \Add6~130_combout\ = (\timeint[12]~COMBOUT\ $ ((!(!\Add6~142\ & \Add6~137\) # (\Add6~142\ & \Add6~137COUT1_164\))))
-- \Add6~132\ = CARRY(((!\timeint[12]~COMBOUT\ & !\Add6~137\)))
-- \Add6~132COUT1_165\ = CARRY(((!\timeint[12]~COMBOUT\ & !\Add6~137COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[12]~COMBOUT\,
	cin => \Add6~142\,
	cin0 => \Add6~137\,
	cin1 => \Add6~137COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~130_combout\,
	cout0 => \Add6~132\,
	cout1 => \Add6~132COUT1_165\);

-- Location: LC_X4_Y8_N6
\s4|tottime[12]\ : maxv_lcell
-- Equation(s):
-- \timeint~70\ = ((\Equal5~3_combout\ & (F1_tottime[12])) # (!\Equal5~3_combout\ & ((timeint(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(12),
	datad => timeint(12),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~70\,
	regout => \s4|tottime\(12));

-- Location: LC_X7_Y8_N0
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (\timeint~70\ $ ((!\Add0~127\)))
-- \Add0~122\ = CARRY(((!\timeint~70\ & !\Add0~127\)))
-- \Add0~122COUT1_153\ = CARRY(((!\timeint~70\ & !\Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~70\,
	cin => \Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_153\);

-- Location: LC_X7_Y9_N0
\timeint~88\ : maxv_lcell
-- Equation(s):
-- \timeint~88_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & (\timeint~70\)) # (!\Add0~0_combout\ & ((\Add0~120_combout\))))) # (!\Equal5~0_combout\ & (\timeint~70\))

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
	dataa => \timeint~70\,
	datab => \Equal5~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~88_combout\);

-- Location: LC_X7_Y10_N1
\Add3~120\ : maxv_lcell
-- Equation(s):
-- \Add3~120_combout\ = \timeint~69_combout\ $ ((((!(!\Add3~132\ & \Add3~127\) # (\Add3~132\ & \Add3~127COUT1_159\)))))
-- \Add3~122\ = CARRY((!\timeint~69_combout\ & ((!\Add3~127\))))
-- \Add3~122COUT1_160\ = CARRY((!\timeint~69_combout\ & ((!\Add3~127COUT1_159\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~69_combout\,
	cin => \Add3~132\,
	cin0 => \Add3~127\,
	cin1 => \Add3~127COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~120_combout\,
	cout0 => \Add3~122\,
	cout1 => \Add3~122COUT1_160\);

-- Location: LC_X8_Y9_N0
\timeint[13]\ : maxv_lcell
-- Equation(s):
-- \timeint[13]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~120_combout\)) # (!\timeint~39_combout\ & ((\timeint~69_combout\))))
-- timeint(13) = DFFEAS(\timeint[13]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~125_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~120_combout\,
	datab => \timeint~69_combout\,
	datac => \Add6~125_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[13]~COMBOUT\,
	regout => timeint(13));

-- Location: LC_X7_Y6_N7
\Add6~125\ : maxv_lcell
-- Equation(s):
-- \Add6~125_combout\ = \timeint[13]~COMBOUT\ $ (((((!\Add6~142\ & \Add6~132\) # (\Add6~142\ & \Add6~132COUT1_165\)))))
-- \Add6~127\ = CARRY((\timeint[13]~COMBOUT\) # ((!\Add6~132\)))
-- \Add6~127COUT1_166\ = CARRY((\timeint[13]~COMBOUT\) # ((!\Add6~132COUT1_165\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[13]~COMBOUT\,
	cin => \Add6~142\,
	cin0 => \Add6~132\,
	cin1 => \Add6~132COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~125_combout\,
	cout0 => \Add6~127\,
	cout1 => \Add6~127COUT1_166\);

-- Location: LC_X7_Y8_N1
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = (!\Add0~127\ & \Add0~122\) # (\Add0~127\ & \Add0~122COUT1_153\) $ (((!\Equal5~3_combout\ & (timeint(13)))))
-- \Add0~117\ = CARRY(((!\Equal5~3_combout\ & timeint(13))) # (!\Add0~122\))
-- \Add0~117COUT1_154\ = CARRY(((!\Equal5~3_combout\ & timeint(13))) # (!\Add0~122COUT1_153\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(13),
	cin => \Add0~127\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_154\);

-- Location: LC_X8_Y9_N8
\timeint~69\ : maxv_lcell
-- Equation(s):
-- \timeint~69_combout\ = (\timeint~42_combout\ & (\Add0~115_combout\)) # (!\timeint~42_combout\ & (((timeint(13) & !\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~115_combout\,
	datab => timeint(13),
	datac => \timeint~42_combout\,
	datad => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~69_combout\);

-- Location: LC_X7_Y10_N2
\Add3~115\ : maxv_lcell
-- Equation(s):
-- \Add3~115_combout\ = \timeint~68_combout\ $ (((((!\Add3~132\ & \Add3~122\) # (\Add3~132\ & \Add3~122COUT1_160\)))))
-- \Add3~117\ = CARRY((\timeint~68_combout\) # ((!\Add3~122\)))
-- \Add3~117COUT1_161\ = CARRY((\timeint~68_combout\) # ((!\Add3~122COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~68_combout\,
	cin => \Add3~132\,
	cin0 => \Add3~122\,
	cin1 => \Add3~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~115_combout\,
	cout0 => \Add3~117\,
	cout1 => \Add3~117COUT1_161\);

-- Location: LC_X7_Y6_N8
\Add6~120\ : maxv_lcell
-- Equation(s):
-- \Add6~120_combout\ = (\timeint[14]~COMBOUT\ $ ((!(!\Add6~142\ & \Add6~127\) # (\Add6~142\ & \Add6~127COUT1_166\))))
-- \Add6~122\ = CARRY(((!\timeint[14]~COMBOUT\ & !\Add6~127\)))
-- \Add6~122COUT1_167\ = CARRY(((!\timeint[14]~COMBOUT\ & !\Add6~127COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[14]~COMBOUT\,
	cin => \Add6~142\,
	cin0 => \Add6~127\,
	cin1 => \Add6~127COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~120_combout\,
	cout0 => \Add6~122\,
	cout1 => \Add6~122COUT1_167\);

-- Location: LC_X8_Y9_N3
\timeint[14]\ : maxv_lcell
-- Equation(s):
-- \timeint[14]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~115_combout\))) # (!\timeint~39_combout\ & (\timeint~68_combout\)))
-- timeint(14) = DFFEAS(\timeint[14]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~120_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~68_combout\,
	datab => \Add3~115_combout\,
	datac => \Add6~120_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[14]~COMBOUT\,
	regout => timeint(14));

-- Location: LC_X7_Y8_N2
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (!\Add0~127\ & \Add0~117\) # (\Add0~127\ & \Add0~117COUT1_154\) $ ((((\Equal5~3_combout\)) # (!timeint(14))))
-- \Add0~112\ = CARRY((!\Add0~117\ & ((\Equal5~3_combout\) # (!timeint(14)))))
-- \Add0~112COUT1_155\ = CARRY((!\Add0~117COUT1_154\ & ((\Equal5~3_combout\) # (!timeint(14)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(14),
	datab => \Equal5~3_combout\,
	cin => \Add0~127\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_155\);

-- Location: LC_X8_Y9_N1
\timeint~68\ : maxv_lcell
-- Equation(s):
-- \timeint~68_combout\ = (\timeint~42_combout\ & (((\Add0~110_combout\)))) # (!\timeint~42_combout\ & (timeint(14) & (!\Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(14),
	datab => \Equal5~3_combout\,
	datac => \timeint~42_combout\,
	datad => \Add0~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~68_combout\);

-- Location: LC_X7_Y6_N9
\Add6~115\ : maxv_lcell
-- Equation(s):
-- \Add6~115_combout\ = (\timeint[15]~COMBOUT\ $ (((!\Add6~142\ & \Add6~122\) # (\Add6~142\ & \Add6~122COUT1_167\))))
-- \Add6~117\ = CARRY(((\timeint[15]~COMBOUT\) # (!\Add6~122COUT1_167\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[15]~COMBOUT\,
	cin => \Add6~142\,
	cin0 => \Add6~122\,
	cin1 => \Add6~122COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~115_combout\,
	cout => \Add6~117\);

-- Location: LC_X7_Y9_N2
\timeint[15]\ : maxv_lcell
-- Equation(s):
-- \timeint[15]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~110_combout\)) # (!\timeint~39_combout\ & ((\timeint~67_combout\))))
-- timeint(15) = DFFEAS(\timeint[15]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~115_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~110_combout\,
	datab => \timeint~67_combout\,
	datac => \Add6~115_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[15]~COMBOUT\,
	regout => timeint(15));

-- Location: LC_X7_Y8_N3
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (!\Add0~127\ & \Add0~112\) # (\Add0~127\ & \Add0~112COUT1_155\) $ (((!\Equal5~3_combout\ & (timeint(15)))))
-- \Add0~107\ = CARRY(((!\Equal5~3_combout\ & timeint(15))) # (!\Add0~112\))
-- \Add0~107COUT1_156\ = CARRY(((!\Equal5~3_combout\ & timeint(15))) # (!\Add0~112COUT1_155\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(15),
	cin => \Add0~127\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_156\);

-- Location: LC_X7_Y9_N1
\timeint~67\ : maxv_lcell
-- Equation(s):
-- \timeint~67_combout\ = (\timeint~42_combout\ & (((\Add0~105_combout\)))) # (!\timeint~42_combout\ & (timeint(15) & (!\Equal5~3_combout\)))

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
	dataa => timeint(15),
	datab => \Equal5~3_combout\,
	datac => \Add0~105_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~67_combout\);

-- Location: LC_X7_Y10_N3
\Add3~110\ : maxv_lcell
-- Equation(s):
-- \Add3~110_combout\ = (\timeint~67_combout\ $ ((!(!\Add3~132\ & \Add3~117\) # (\Add3~132\ & \Add3~117COUT1_161\))))
-- \Add3~112\ = CARRY(((!\timeint~67_combout\ & !\Add3~117\)))
-- \Add3~112COUT1_162\ = CARRY(((!\timeint~67_combout\ & !\Add3~117COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~67_combout\,
	cin => \Add3~132\,
	cin0 => \Add3~117\,
	cin1 => \Add3~117COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~110_combout\,
	cout0 => \Add3~112\,
	cout1 => \Add3~112COUT1_162\);

-- Location: LC_X7_Y10_N4
\Add3~105\ : maxv_lcell
-- Equation(s):
-- \Add3~105_combout\ = (\timeint~66_combout\ $ (((!\Add3~132\ & \Add3~112\) # (\Add3~132\ & \Add3~112COUT1_162\))))
-- \Add3~107\ = CARRY(((\timeint~66_combout\) # (!\Add3~112COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~66_combout\,
	cin => \Add3~132\,
	cin0 => \Add3~112\,
	cin1 => \Add3~112COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~105_combout\,
	cout => \Add3~107\);

-- Location: LC_X8_Y6_N0
\Add6~110\ : maxv_lcell
-- Equation(s):
-- \Add6~110_combout\ = (\timeint[16]~COMBOUT\ $ ((!\Add6~117\)))
-- \Add6~112\ = CARRY(((!\timeint[16]~COMBOUT\ & !\Add6~117\)))
-- \Add6~112COUT1_168\ = CARRY(((!\timeint[16]~COMBOUT\ & !\Add6~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[16]~COMBOUT\,
	cin => \Add6~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~110_combout\,
	cout0 => \Add6~112\,
	cout1 => \Add6~112COUT1_168\);

-- Location: LC_X7_Y9_N7
\timeint[16]\ : maxv_lcell
-- Equation(s):
-- \timeint[16]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~105_combout\))) # (!\timeint~39_combout\ & (\timeint~66_combout\)))
-- timeint(16) = DFFEAS(\timeint[16]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~110_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~66_combout\,
	datab => \Add3~105_combout\,
	datac => \Add6~110_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[16]~COMBOUT\,
	regout => timeint(16));

-- Location: LC_X8_Y6_N1
\Add6~105\ : maxv_lcell
-- Equation(s):
-- \Add6~105_combout\ = \timeint[17]~COMBOUT\ $ (((((!\Add6~117\ & \Add6~112\) # (\Add6~117\ & \Add6~112COUT1_168\)))))
-- \Add6~107\ = CARRY((\timeint[17]~COMBOUT\) # ((!\Add6~112\)))
-- \Add6~107COUT1_169\ = CARRY((\timeint[17]~COMBOUT\) # ((!\Add6~112COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[17]~COMBOUT\,
	cin => \Add6~117\,
	cin0 => \Add6~112\,
	cin1 => \Add6~112COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~105_combout\,
	cout0 => \Add6~107\,
	cout1 => \Add6~107COUT1_169\);

-- Location: LC_X7_Y8_N5
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = \Add0~102\ $ (((timeint(17) & (!\Equal5~3_combout\))))
-- \Add0~97\ = CARRY(((timeint(17) & !\Equal5~3_combout\)) # (!\Add0~102\))
-- \Add0~97COUT1_157\ = CARRY(((timeint(17) & !\Equal5~3_combout\)) # (!\Add0~102\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "d22f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(17),
	datab => \Equal5~3_combout\,
	cin => \Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_157\);

-- Location: LC_X8_Y9_N6
\timeint~65\ : maxv_lcell
-- Equation(s):
-- \timeint~65_combout\ = (\timeint~42_combout\ & (((\Add0~95_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & (timeint(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(17),
	datac => \timeint~42_combout\,
	datad => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~65_combout\);

-- Location: LC_X7_Y10_N6
\Add3~95\ : maxv_lcell
-- Equation(s):
-- \Add3~95_combout\ = \timeint~64_combout\ $ (((((!\Add3~107\ & \Add3~102\) # (\Add3~107\ & \Add3~102COUT1_163\)))))
-- \Add3~97\ = CARRY((\timeint~64_combout\) # ((!\Add3~102\)))
-- \Add3~97COUT1_164\ = CARRY((\timeint~64_combout\) # ((!\Add3~102COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~64_combout\,
	cin => \Add3~107\,
	cin0 => \Add3~102\,
	cin1 => \Add3~102COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~95_combout\,
	cout0 => \Add3~97\,
	cout1 => \Add3~97COUT1_164\);

-- Location: LC_X8_Y9_N5
\timeint[18]\ : maxv_lcell
-- Equation(s):
-- \timeint[18]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~95_combout\)) # (!\timeint~39_combout\ & ((\timeint~64_combout\))))
-- timeint(18) = DFFEAS(\timeint[18]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~100_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~95_combout\,
	datab => \timeint~64_combout\,
	datac => \Add6~100_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[18]~COMBOUT\,
	regout => timeint(18));

-- Location: LC_X8_Y6_N2
\Add6~100\ : maxv_lcell
-- Equation(s):
-- \Add6~100_combout\ = (\timeint[18]~COMBOUT\ $ ((!(!\Add6~117\ & \Add6~107\) # (\Add6~117\ & \Add6~107COUT1_169\))))
-- \Add6~102\ = CARRY(((!\timeint[18]~COMBOUT\ & !\Add6~107\)))
-- \Add6~102COUT1_170\ = CARRY(((!\timeint[18]~COMBOUT\ & !\Add6~107COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[18]~COMBOUT\,
	cin => \Add6~117\,
	cin0 => \Add6~107\,
	cin1 => \Add6~107COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~100_combout\,
	cout0 => \Add6~102\,
	cout1 => \Add6~102COUT1_170\);

-- Location: LC_X7_Y8_N6
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (!\Add0~102\ & \Add0~97\) # (\Add0~102\ & \Add0~97COUT1_157\) $ (((\Equal5~3_combout\) # ((!timeint(18)))))
-- \Add0~92\ = CARRY((!\Add0~97\ & ((\Equal5~3_combout\) # (!timeint(18)))))
-- \Add0~92COUT1_158\ = CARRY((!\Add0~97COUT1_157\ & ((\Equal5~3_combout\) # (!timeint(18)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "4b0b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(18),
	cin => \Add0~102\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_158\);

-- Location: LC_X8_Y9_N7
\timeint~64\ : maxv_lcell
-- Equation(s):
-- \timeint~64_combout\ = (\timeint~42_combout\ & (((\Add0~90_combout\)))) # (!\timeint~42_combout\ & (timeint(18) & (!\Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(18),
	datab => \Equal5~3_combout\,
	datac => \timeint~42_combout\,
	datad => \Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~64_combout\);

-- Location: LC_X7_Y10_N7
\Add3~90\ : maxv_lcell
-- Equation(s):
-- \Add3~90_combout\ = (\timeint~63_combout\ $ ((!(!\Add3~107\ & \Add3~97\) # (\Add3~107\ & \Add3~97COUT1_164\))))
-- \Add3~92\ = CARRY(((!\timeint~63_combout\ & !\Add3~97\)))
-- \Add3~92COUT1_165\ = CARRY(((!\timeint~63_combout\ & !\Add3~97COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~63_combout\,
	cin => \Add3~107\,
	cin0 => \Add3~97\,
	cin1 => \Add3~97COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~90_combout\,
	cout0 => \Add3~92\,
	cout1 => \Add3~92COUT1_165\);

-- Location: LC_X9_Y10_N1
\timeint[19]\ : maxv_lcell
-- Equation(s):
-- \timeint[19]~COMBOUT\ = (\timeint~39_combout\ & (((\Add3~90_combout\)))) # (!\timeint~39_combout\ & (\timeint~63_combout\))
-- timeint(19) = DFFEAS(\timeint[19]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~95_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~63_combout\,
	datab => \timeint~39_combout\,
	datac => \Add6~95_combout\,
	datad => \Add3~90_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[19]~COMBOUT\,
	regout => timeint(19));

-- Location: LC_X8_Y6_N3
\Add6~95\ : maxv_lcell
-- Equation(s):
-- \Add6~95_combout\ = \timeint[19]~COMBOUT\ $ (((((!\Add6~117\ & \Add6~102\) # (\Add6~117\ & \Add6~102COUT1_170\)))))
-- \Add6~97\ = CARRY((\timeint[19]~COMBOUT\) # ((!\Add6~102\)))
-- \Add6~97COUT1_171\ = CARRY((\timeint[19]~COMBOUT\) # ((!\Add6~102COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[19]~COMBOUT\,
	cin => \Add6~117\,
	cin0 => \Add6~102\,
	cin1 => \Add6~102COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~95_combout\,
	cout0 => \Add6~97\,
	cout1 => \Add6~97COUT1_171\);

-- Location: LC_X7_Y8_N7
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (!\Add0~102\ & \Add0~92\) # (\Add0~102\ & \Add0~92COUT1_158\) $ (((!\Equal5~3_combout\ & (timeint(19)))))
-- \Add0~87\ = CARRY(((!\Equal5~3_combout\ & timeint(19))) # (!\Add0~92\))
-- \Add0~87COUT1_159\ = CARRY(((!\Equal5~3_combout\ & timeint(19))) # (!\Add0~92COUT1_158\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(19),
	cin => \Add0~102\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_159\);

-- Location: LC_X9_Y10_N7
\timeint~63\ : maxv_lcell
-- Equation(s):
-- \timeint~63_combout\ = (\timeint~42_combout\ & (((\Add0~85_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & (timeint(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(19),
	datac => \timeint~42_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~63_combout\);

-- Location: LC_X7_Y10_N8
\Add3~85\ : maxv_lcell
-- Equation(s):
-- \Add3~85_combout\ = (\timeint~62_combout\ $ (((!\Add3~107\ & \Add3~92\) # (\Add3~107\ & \Add3~92COUT1_165\))))
-- \Add3~87\ = CARRY(((\timeint~62_combout\) # (!\Add3~92\)))
-- \Add3~87COUT1_166\ = CARRY(((\timeint~62_combout\) # (!\Add3~92COUT1_165\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~62_combout\,
	cin => \Add3~107\,
	cin0 => \Add3~92\,
	cin1 => \Add3~92COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~85_combout\,
	cout0 => \Add3~87\,
	cout1 => \Add3~87COUT1_166\);

-- Location: LC_X8_Y6_N4
\Add6~90\ : maxv_lcell
-- Equation(s):
-- \Add6~90_combout\ = \timeint[20]~COMBOUT\ $ ((((!(!\Add6~117\ & \Add6~97\) # (\Add6~117\ & \Add6~97COUT1_171\)))))
-- \Add6~92\ = CARRY((!\timeint[20]~COMBOUT\ & ((!\Add6~97COUT1_171\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[20]~COMBOUT\,
	cin => \Add6~117\,
	cin0 => \Add6~97\,
	cin1 => \Add6~97COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~90_combout\,
	cout => \Add6~92\);

-- Location: LC_X9_Y10_N3
\timeint[20]\ : maxv_lcell
-- Equation(s):
-- \timeint[20]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~85_combout\))) # (!\timeint~39_combout\ & (\timeint~62_combout\)))
-- timeint(20) = DFFEAS(\timeint[20]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~90_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~62_combout\,
	datab => \Add3~85_combout\,
	datac => \Add6~90_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[20]~COMBOUT\,
	regout => timeint(20));

-- Location: LC_X7_Y8_N8
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (!\Add0~102\ & \Add0~87\) # (\Add0~102\ & \Add0~87COUT1_159\) $ ((((\Equal5~3_combout\)) # (!timeint(20))))
-- \Add0~82\ = CARRY((!\Add0~87\ & ((\Equal5~3_combout\) # (!timeint(20)))))
-- \Add0~82COUT1_160\ = CARRY((!\Add0~87COUT1_159\ & ((\Equal5~3_combout\) # (!timeint(20)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(20),
	datab => \Equal5~3_combout\,
	cin => \Add0~102\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_160\);

-- Location: LC_X9_Y10_N6
\timeint~62\ : maxv_lcell
-- Equation(s):
-- \timeint~62_combout\ = (\timeint~42_combout\ & (((\Add0~80_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & ((timeint(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Add0~80_combout\,
	datac => \timeint~42_combout\,
	datad => timeint(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~62_combout\);

-- Location: LC_X8_Y10_N0
\Add3~75\ : maxv_lcell
-- Equation(s):
-- \Add3~75_combout\ = (\timeint~60_combout\ $ ((\Add3~82\)))
-- \Add3~77\ = CARRY(((\timeint~60_combout\) # (!\Add3~82\)))
-- \Add3~77COUT1_167\ = CARRY(((\timeint~60_combout\) # (!\Add3~82\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~60_combout\,
	cin => \Add3~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~75_combout\,
	cout0 => \Add3~77\,
	cout1 => \Add3~77COUT1_167\);

-- Location: LC_X9_Y10_N8
\timeint[22]\ : maxv_lcell
-- Equation(s):
-- \timeint[22]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~75_combout\)) # (!\timeint~39_combout\ & ((\timeint~60_combout\))))
-- timeint(22) = DFFEAS(\timeint[22]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~80_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~75_combout\,
	datab => \timeint~60_combout\,
	datac => \Add6~80_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[22]~COMBOUT\,
	regout => timeint(22));

-- Location: LC_X7_Y10_N9
\Add3~80\ : maxv_lcell
-- Equation(s):
-- \Add3~80_combout\ = (\timeint~61_combout\ $ ((!(!\Add3~107\ & \Add3~87\) # (\Add3~107\ & \Add3~87COUT1_166\))))
-- \Add3~82\ = CARRY(((!\timeint~61_combout\ & !\Add3~87COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~61_combout\,
	cin => \Add3~107\,
	cin0 => \Add3~87\,
	cin1 => \Add3~87COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~80_combout\,
	cout => \Add3~82\);

-- Location: LC_X8_Y6_N5
\Add6~85\ : maxv_lcell
-- Equation(s):
-- \Add6~85_combout\ = (\timeint[21]~COMBOUT\ $ ((\Add6~92\)))
-- \Add6~87\ = CARRY(((\timeint[21]~COMBOUT\) # (!\Add6~92\)))
-- \Add6~87COUT1_172\ = CARRY(((\timeint[21]~COMBOUT\) # (!\Add6~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[21]~COMBOUT\,
	cin => \Add6~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~85_combout\,
	cout0 => \Add6~87\,
	cout1 => \Add6~87COUT1_172\);

-- Location: LC_X8_Y9_N2
\timeint[21]\ : maxv_lcell
-- Equation(s):
-- \timeint[21]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~80_combout\))) # (!\timeint~39_combout\ & (\timeint~61_combout\)))
-- timeint(21) = DFFEAS(\timeint[21]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~85_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~61_combout\,
	datab => \Add3~80_combout\,
	datac => \Add6~85_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[21]~COMBOUT\,
	regout => timeint(21));

-- Location: LC_X8_Y6_N6
\Add6~80\ : maxv_lcell
-- Equation(s):
-- \Add6~80_combout\ = (\timeint[22]~COMBOUT\ $ ((!(!\Add6~92\ & \Add6~87\) # (\Add6~92\ & \Add6~87COUT1_172\))))
-- \Add6~82\ = CARRY(((!\timeint[22]~COMBOUT\ & !\Add6~87\)))
-- \Add6~82COUT1_173\ = CARRY(((!\timeint[22]~COMBOUT\ & !\Add6~87COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[22]~COMBOUT\,
	cin => \Add6~92\,
	cin0 => \Add6~87\,
	cin1 => \Add6~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~80_combout\,
	cout0 => \Add6~82\,
	cout1 => \Add6~82COUT1_173\);

-- Location: LC_X8_Y8_N0
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = \Add0~77\ $ ((((\Equal5~3_combout\)) # (!timeint(22))))
-- \Add0~72\ = CARRY((!\Add0~77\ & ((\Equal5~3_combout\) # (!timeint(22)))))
-- \Add0~72COUT1_161\ = CARRY((!\Add0~77\ & ((\Equal5~3_combout\) # (!timeint(22)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(22),
	datab => \Equal5~3_combout\,
	cin => \Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_161\);

-- Location: LC_X9_Y8_N0
\timeint~60\ : maxv_lcell
-- Equation(s):
-- \timeint~60_combout\ = (\timeint~42_combout\ & (\Add0~70_combout\)) # (!\timeint~42_combout\ & (((!\Equal5~3_combout\ & timeint(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \Equal5~3_combout\,
	datac => timeint(22),
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~60_combout\);

-- Location: LC_X8_Y10_N1
\Add3~70\ : maxv_lcell
-- Equation(s):
-- \Add3~70_combout\ = (\timeint~59_combout\ $ ((!(!\Add3~82\ & \Add3~77\) # (\Add3~82\ & \Add3~77COUT1_167\))))
-- \Add3~72\ = CARRY(((!\timeint~59_combout\ & !\Add3~77\)))
-- \Add3~72COUT1_168\ = CARRY(((!\timeint~59_combout\ & !\Add3~77COUT1_167\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~59_combout\,
	cin => \Add3~82\,
	cin0 => \Add3~77\,
	cin1 => \Add3~77COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~70_combout\,
	cout0 => \Add3~72\,
	cout1 => \Add3~72COUT1_168\);

-- Location: LC_X8_Y7_N5
\timeint[23]\ : maxv_lcell
-- Equation(s):
-- \timeint[23]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~70_combout\))) # (!\timeint~39_combout\ & (\timeint~59_combout\)))
-- timeint(23) = DFFEAS(\timeint[23]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~75_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~59_combout\,
	datab => \Add3~70_combout\,
	datac => \Add6~75_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[23]~COMBOUT\,
	regout => timeint(23));

-- Location: LC_X8_Y6_N7
\Add6~75\ : maxv_lcell
-- Equation(s):
-- \Add6~75_combout\ = (\timeint[23]~COMBOUT\ $ (((!\Add6~92\ & \Add6~82\) # (\Add6~92\ & \Add6~82COUT1_173\))))
-- \Add6~77\ = CARRY(((\timeint[23]~COMBOUT\) # (!\Add6~82\)))
-- \Add6~77COUT1_174\ = CARRY(((\timeint[23]~COMBOUT\) # (!\Add6~82COUT1_173\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[23]~COMBOUT\,
	cin => \Add6~92\,
	cin0 => \Add6~82\,
	cin1 => \Add6~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~75_combout\,
	cout0 => \Add6~77\,
	cout1 => \Add6~77COUT1_174\);

-- Location: LC_X8_Y8_N1
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (!\Add0~77\ & \Add0~72\) # (\Add0~77\ & \Add0~72COUT1_161\) $ (((!\Equal5~3_combout\ & (timeint(23)))))
-- \Add0~67\ = CARRY(((!\Equal5~3_combout\ & timeint(23))) # (!\Add0~72\))
-- \Add0~67COUT1_162\ = CARRY(((!\Equal5~3_combout\ & timeint(23))) # (!\Add0~72COUT1_161\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(23),
	cin => \Add0~77\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_162\);

-- Location: LC_X9_Y8_N8
\timeint~59\ : maxv_lcell
-- Equation(s):
-- \timeint~59_combout\ = (\timeint~42_combout\ & (((\Add0~65_combout\)))) # (!\timeint~42_combout\ & (timeint(23) & (!\Equal5~3_combout\)))

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
	dataa => timeint(23),
	datab => \Equal5~3_combout\,
	datac => \Add0~65_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~59_combout\);

-- Location: LC_X8_Y10_N2
\Add3~65\ : maxv_lcell
-- Equation(s):
-- \Add3~65_combout\ = (\timeint~58_combout\ $ (((!\Add3~82\ & \Add3~72\) # (\Add3~82\ & \Add3~72COUT1_168\))))
-- \Add3~67\ = CARRY(((\timeint~58_combout\) # (!\Add3~72\)))
-- \Add3~67COUT1_169\ = CARRY(((\timeint~58_combout\) # (!\Add3~72COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~58_combout\,
	cin => \Add3~82\,
	cin0 => \Add3~72\,
	cin1 => \Add3~72COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~65_combout\,
	cout0 => \Add3~67\,
	cout1 => \Add3~67COUT1_169\);

-- Location: LC_X8_Y6_N8
\Add6~70\ : maxv_lcell
-- Equation(s):
-- \Add6~70_combout\ = (\timeint[24]~COMBOUT\ $ ((!(!\Add6~92\ & \Add6~77\) # (\Add6~92\ & \Add6~77COUT1_174\))))
-- \Add6~72\ = CARRY(((!\timeint[24]~COMBOUT\ & !\Add6~77\)))
-- \Add6~72COUT1_175\ = CARRY(((!\timeint[24]~COMBOUT\ & !\Add6~77COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[24]~COMBOUT\,
	cin => \Add6~92\,
	cin0 => \Add6~77\,
	cin1 => \Add6~77COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~70_combout\,
	cout0 => \Add6~72\,
	cout1 => \Add6~72COUT1_175\);

-- Location: LC_X9_Y10_N9
\timeint[24]\ : maxv_lcell
-- Equation(s):
-- \timeint[24]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~65_combout\))) # (!\timeint~39_combout\ & (\timeint~58_combout\)))
-- timeint(24) = DFFEAS(\timeint[24]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~70_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~58_combout\,
	datab => \Add3~65_combout\,
	datac => \Add6~70_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[24]~COMBOUT\,
	regout => timeint(24));

-- Location: LC_X8_Y8_N2
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (!\Add0~77\ & \Add0~67\) # (\Add0~77\ & \Add0~67COUT1_162\) $ ((((\Equal5~3_combout\)) # (!timeint(24))))
-- \Add0~62\ = CARRY((!\Add0~67\ & ((\Equal5~3_combout\) # (!timeint(24)))))
-- \Add0~62COUT1_163\ = CARRY((!\Add0~67COUT1_162\ & ((\Equal5~3_combout\) # (!timeint(24)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(24),
	datab => \Equal5~3_combout\,
	cin => \Add0~77\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_163\);

-- Location: LC_X9_Y10_N4
\timeint~58\ : maxv_lcell
-- Equation(s):
-- \timeint~58_combout\ = (\timeint~42_combout\ & (((\Add0~60_combout\)))) # (!\timeint~42_combout\ & (timeint(24) & ((!\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~42_combout\,
	datab => timeint(24),
	datac => \Add0~60_combout\,
	datad => \Equal5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~58_combout\);

-- Location: LC_X8_Y6_N9
\Add6~65\ : maxv_lcell
-- Equation(s):
-- \Add6~65_combout\ = (\timeint[25]~COMBOUT\ $ (((!\Add6~92\ & \Add6~72\) # (\Add6~92\ & \Add6~72COUT1_175\))))
-- \Add6~67\ = CARRY(((\timeint[25]~COMBOUT\) # (!\Add6~72COUT1_175\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[25]~COMBOUT\,
	cin => \Add6~92\,
	cin0 => \Add6~72\,
	cin1 => \Add6~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~65_combout\,
	cout => \Add6~67\);

-- Location: LC_X8_Y7_N0
\timeint[25]\ : maxv_lcell
-- Equation(s):
-- \timeint[25]~COMBOUT\ = ((\timeint~39_combout\ & (\Add3~60_combout\)) # (!\timeint~39_combout\ & ((\timeint~57_combout\))))
-- timeint(25) = DFFEAS(\timeint[25]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~65_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add3~60_combout\,
	datab => \timeint~57_combout\,
	datac => \Add6~65_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[25]~COMBOUT\,
	regout => timeint(25));

-- Location: LC_X8_Y8_N3
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (!\Add0~77\ & \Add0~62\) # (\Add0~77\ & \Add0~62COUT1_163\) $ (((timeint(25) & (!\Equal5~3_combout\))))
-- \Add0~57\ = CARRY(((timeint(25) & !\Equal5~3_combout\)) # (!\Add0~62\))
-- \Add0~57COUT1_164\ = CARRY(((timeint(25) & !\Equal5~3_combout\)) # (!\Add0~62COUT1_163\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "d22f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(25),
	datab => \Equal5~3_combout\,
	cin => \Add0~77\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_164\);

-- Location: LC_X9_Y8_N6
\timeint~57\ : maxv_lcell
-- Equation(s):
-- \timeint~57_combout\ = (\timeint~42_combout\ & (((\Add0~55_combout\)))) # (!\timeint~42_combout\ & (timeint(25) & (!\Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(25),
	datab => \timeint~42_combout\,
	datac => \Equal5~3_combout\,
	datad => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~57_combout\);

-- Location: LC_X8_Y10_N3
\Add3~60\ : maxv_lcell
-- Equation(s):
-- \Add3~60_combout\ = (\timeint~57_combout\ $ ((!(!\Add3~82\ & \Add3~67\) # (\Add3~82\ & \Add3~67COUT1_169\))))
-- \Add3~62\ = CARRY(((!\timeint~57_combout\ & !\Add3~67\)))
-- \Add3~62COUT1_170\ = CARRY(((!\timeint~57_combout\ & !\Add3~67COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~57_combout\,
	cin => \Add3~82\,
	cin0 => \Add3~67\,
	cin1 => \Add3~67COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\,
	cout0 => \Add3~62\,
	cout1 => \Add3~62COUT1_170\);

-- Location: LC_X8_Y10_N4
\Add3~55\ : maxv_lcell
-- Equation(s):
-- \Add3~55_combout\ = (\timeint~56_combout\ $ (((!\Add3~82\ & \Add3~62\) # (\Add3~82\ & \Add3~62COUT1_170\))))
-- \Add3~57\ = CARRY(((\timeint~56_combout\) # (!\Add3~62COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~56_combout\,
	cin => \Add3~82\,
	cin0 => \Add3~62\,
	cin1 => \Add3~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout => \Add3~57\);

-- Location: LC_X9_Y6_N0
\Add6~60\ : maxv_lcell
-- Equation(s):
-- \Add6~60_combout\ = \timeint[26]~COMBOUT\ $ ((((!\Add6~67\))))
-- \Add6~62\ = CARRY((!\timeint[26]~COMBOUT\ & ((!\Add6~67\))))
-- \Add6~62COUT1_176\ = CARRY((!\timeint[26]~COMBOUT\ & ((!\Add6~67\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[26]~COMBOUT\,
	cin => \Add6~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~60_combout\,
	cout0 => \Add6~62\,
	cout1 => \Add6~62COUT1_176\);

-- Location: LC_X9_Y10_N5
\timeint[26]\ : maxv_lcell
-- Equation(s):
-- \timeint[26]~COMBOUT\ = ((\timeint~39_combout\ & ((\Add3~55_combout\))) # (!\timeint~39_combout\ & (\timeint~56_combout\)))
-- timeint(26) = DFFEAS(\timeint[26]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~60_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~56_combout\,
	datab => \Add3~55_combout\,
	datac => \Add6~60_combout\,
	datad => \timeint~39_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[26]~COMBOUT\,
	regout => timeint(26));

-- Location: LC_X9_Y6_N1
\Add6~55\ : maxv_lcell
-- Equation(s):
-- \Add6~55_combout\ = \timeint[27]~COMBOUT\ $ (((((!\Add6~67\ & \Add6~62\) # (\Add6~67\ & \Add6~62COUT1_176\)))))
-- \Add6~57\ = CARRY((\timeint[27]~COMBOUT\) # ((!\Add6~62\)))
-- \Add6~57COUT1_177\ = CARRY((\timeint[27]~COMBOUT\) # ((!\Add6~62COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[27]~COMBOUT\,
	cin => \Add6~67\,
	cin0 => \Add6~62\,
	cin1 => \Add6~62COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~55_combout\,
	cout0 => \Add6~57\,
	cout1 => \Add6~57COUT1_177\);

-- Location: LC_X8_Y10_N5
\Add3~50\ : maxv_lcell
-- Equation(s):
-- \Add3~50_combout\ = (\timeint~55_combout\ $ ((!\Add3~57\)))
-- \Add3~52\ = CARRY(((!\timeint~55_combout\ & !\Add3~57\)))
-- \Add3~52COUT1_171\ = CARRY(((!\timeint~55_combout\ & !\Add3~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~55_combout\,
	cin => \Add3~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50_combout\,
	cout0 => \Add3~52\,
	cout1 => \Add3~52COUT1_171\);

-- Location: LC_X9_Y10_N0
\timeint[27]\ : maxv_lcell
-- Equation(s):
-- \timeint[27]~COMBOUT\ = (\timeint~39_combout\ & (((\Add3~50_combout\)))) # (!\timeint~39_combout\ & (\timeint~55_combout\))
-- timeint(27) = DFFEAS(\timeint[27]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~55_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~55_combout\,
	datab => \timeint~39_combout\,
	datac => \Add6~55_combout\,
	datad => \Add3~50_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[27]~COMBOUT\,
	regout => timeint(27));

-- Location: LC_X8_Y8_N5
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = \Add0~52\ $ (((timeint(27) & (!\Equal5~3_combout\))))
-- \Add0~47\ = CARRY(((timeint(27) & !\Equal5~3_combout\)) # (!\Add0~52\))
-- \Add0~47COUT1_165\ = CARRY(((timeint(27) & !\Equal5~3_combout\)) # (!\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "d22f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(27),
	datab => \Equal5~3_combout\,
	cin => \Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_165\);

-- Location: LC_X9_Y8_N3
\timeint~55\ : maxv_lcell
-- Equation(s):
-- \timeint~55_combout\ = (\timeint~42_combout\ & (((\Add0~45_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & (timeint(27))))

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
	dataa => \Equal5~3_combout\,
	datab => \timeint~42_combout\,
	datac => timeint(27),
	datad => \Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~55_combout\);

-- Location: LC_X9_Y6_N2
\Add6~50\ : maxv_lcell
-- Equation(s):
-- \Add6~50_combout\ = \timeint[28]~COMBOUT\ $ ((((!(!\Add6~67\ & \Add6~57\) # (\Add6~67\ & \Add6~57COUT1_177\)))))
-- \Add6~52\ = CARRY((!\timeint[28]~COMBOUT\ & ((!\Add6~57\))))
-- \Add6~52COUT1_178\ = CARRY((!\timeint[28]~COMBOUT\ & ((!\Add6~57COUT1_177\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint[28]~COMBOUT\,
	cin => \Add6~67\,
	cin0 => \Add6~57\,
	cin1 => \Add6~57COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50_combout\,
	cout0 => \Add6~52\,
	cout1 => \Add6~52COUT1_178\);

-- Location: LC_X9_Y6_N8
\timeint[28]\ : maxv_lcell
-- Equation(s):
-- \timeint[28]~COMBOUT\ = (\timeint~39_combout\ & (\Add3~45_combout\)) # (!\timeint~39_combout\ & (((\timeint~54_combout\))))
-- timeint(28) = DFFEAS(\timeint[28]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~50_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~39_combout\,
	datab => \Add3~45_combout\,
	datac => \Add6~50_combout\,
	datad => \timeint~54_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[28]~COMBOUT\,
	regout => timeint(28));

-- Location: LC_X8_Y8_N6
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (!\Add0~52\ & \Add0~47\) # (\Add0~52\ & \Add0~47COUT1_165\) $ (((\Equal5~3_combout\) # ((!timeint(28)))))
-- \Add0~42\ = CARRY((!\Add0~47\ & ((\Equal5~3_combout\) # (!timeint(28)))))
-- \Add0~42COUT1_166\ = CARRY((!\Add0~47COUT1_165\ & ((\Equal5~3_combout\) # (!timeint(28)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "4b0b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(28),
	cin => \Add0~52\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_166\);

-- Location: LC_X9_Y8_N2
\timeint~54\ : maxv_lcell
-- Equation(s):
-- \timeint~54_combout\ = (\timeint~42_combout\ & (((\Add0~40_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & (timeint(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(28),
	datac => \Add0~40_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~54_combout\);

-- Location: LC_X8_Y10_N6
\Add3~45\ : maxv_lcell
-- Equation(s):
-- \Add3~45_combout\ = (\timeint~54_combout\ $ (((!\Add3~57\ & \Add3~52\) # (\Add3~57\ & \Add3~52COUT1_171\))))
-- \Add3~47\ = CARRY(((\timeint~54_combout\) # (!\Add3~52\)))
-- \Add3~47COUT1_172\ = CARRY(((\timeint~54_combout\) # (!\Add3~52COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~54_combout\,
	cin => \Add3~57\,
	cin0 => \Add3~52\,
	cin1 => \Add3~52COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45_combout\,
	cout0 => \Add3~47\,
	cout1 => \Add3~47COUT1_172\);

-- Location: LC_X9_Y6_N3
\Add6~45\ : maxv_lcell
-- Equation(s):
-- \Add6~45_combout\ = (\timeint[29]~COMBOUT\ $ (((!\Add6~67\ & \Add6~52\) # (\Add6~67\ & \Add6~52COUT1_178\))))
-- \Add6~47\ = CARRY(((\timeint[29]~COMBOUT\) # (!\Add6~52\)))
-- \Add6~47COUT1_179\ = CARRY(((\timeint[29]~COMBOUT\) # (!\Add6~52COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[29]~COMBOUT\,
	cin => \Add6~67\,
	cin0 => \Add6~52\,
	cin1 => \Add6~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45_combout\,
	cout0 => \Add6~47\,
	cout1 => \Add6~47COUT1_179\);

-- Location: LC_X9_Y6_N9
\timeint[29]\ : maxv_lcell
-- Equation(s):
-- \timeint[29]~COMBOUT\ = (\timeint~39_combout\ & (\Add3~40_combout\)) # (!\timeint~39_combout\ & (((\timeint~53_combout\))))
-- timeint(29) = DFFEAS(\timeint[29]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~45_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~39_combout\,
	datab => \Add3~40_combout\,
	datac => \Add6~45_combout\,
	datad => \timeint~53_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[29]~COMBOUT\,
	regout => timeint(29));

-- Location: LC_X8_Y8_N7
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (!\Add0~52\ & \Add0~42\) # (\Add0~52\ & \Add0~42COUT1_166\) $ (((!\Equal5~3_combout\ & (timeint(29)))))
-- \Add0~37\ = CARRY(((!\Equal5~3_combout\ & timeint(29))) # (!\Add0~42\))
-- \Add0~37COUT1_167\ = CARRY(((!\Equal5~3_combout\ & timeint(29))) # (!\Add0~42COUT1_166\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b44f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(29),
	cin => \Add0~52\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_167\);

-- Location: LC_X9_Y8_N5
\timeint~53\ : maxv_lcell
-- Equation(s):
-- \timeint~53_combout\ = (\timeint~42_combout\ & (((\Add0~35_combout\)))) # (!\timeint~42_combout\ & (!\Equal5~3_combout\ & (timeint(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(29),
	datac => \timeint~42_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~53_combout\);

-- Location: LC_X8_Y10_N7
\Add3~40\ : maxv_lcell
-- Equation(s):
-- \Add3~40_combout\ = \timeint~53_combout\ $ ((((!(!\Add3~57\ & \Add3~47\) # (\Add3~57\ & \Add3~47COUT1_172\)))))
-- \Add3~42\ = CARRY((!\timeint~53_combout\ & ((!\Add3~47\))))
-- \Add3~42COUT1_173\ = CARRY((!\timeint~53_combout\ & ((!\Add3~47COUT1_172\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~53_combout\,
	cin => \Add3~57\,
	cin0 => \Add3~47\,
	cin1 => \Add3~47COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_173\);

-- Location: LC_X9_Y6_N4
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = (\timeint[30]~COMBOUT\ $ ((!(!\Add6~67\ & \Add6~47\) # (\Add6~67\ & \Add6~47COUT1_179\))))
-- \Add6~37\ = CARRY(((!\timeint[30]~COMBOUT\ & !\Add6~47COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint[30]~COMBOUT\,
	cin => \Add6~67\,
	cin0 => \Add6~47\,
	cin1 => \Add6~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout => \Add6~37\);

-- Location: LC_X8_Y10_N8
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = \timeint~51_combout\ $ (((((!\Add3~57\ & \Add3~42\) # (\Add3~57\ & \Add3~42COUT1_173\)))))
-- \Add3~32\ = CARRY((\timeint~51_combout\) # ((!\Add3~42\)))
-- \Add3~32COUT1_174\ = CARRY((\timeint~51_combout\) # ((!\Add3~42COUT1_173\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~51_combout\,
	cin => \Add3~57\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_174\);

-- Location: LC_X9_Y6_N7
\timeint[30]\ : maxv_lcell
-- Equation(s):
-- \timeint[30]~COMBOUT\ = (\timeint~39_combout\ & (((\Add3~30_combout\)))) # (!\timeint~39_combout\ & (\timeint~51_combout\))
-- timeint(30) = DFFEAS(\timeint[30]~COMBOUT\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, \Add6~35_combout\, , , \timeint~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~39_combout\,
	datab => \timeint~51_combout\,
	datac => \Add6~35_combout\,
	datad => \Add3~30_combout\,
	aclr => GND,
	sload => \timeint~37_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint[30]~COMBOUT\,
	regout => timeint(30));

-- Location: LC_X8_Y8_N8
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (!\Add0~52\ & \Add0~37\) # (\Add0~52\ & \Add0~37COUT1_167\) $ ((((\Equal5~3_combout\)) # (!timeint(30))))
-- \Add0~27\ = CARRY((!\Add0~37\ & ((\Equal5~3_combout\) # (!timeint(30)))))
-- \Add0~27COUT1_168\ = CARRY((!\Add0~37COUT1_167\ & ((\Equal5~3_combout\) # (!timeint(30)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(30),
	datab => \Equal5~3_combout\,
	cin => \Add0~52\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_168\);

-- Location: LC_X9_Y8_N4
\timeint~51\ : maxv_lcell
-- Equation(s):
-- \timeint~51_combout\ = (\timeint~42_combout\ & (((\Add0~25_combout\)))) # (!\timeint~42_combout\ & (timeint(30) & (!\Equal5~3_combout\)))

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
	dataa => timeint(30),
	datab => \Equal5~3_combout\,
	datac => \Add0~25_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~51_combout\);

-- Location: LC_X9_Y6_N5
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = (((\Add6~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add6~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\);

-- Location: LC_X8_Y7_N2
\timeint~37\ : maxv_lcell
-- Equation(s):
-- \timeint~37_combout\ = ((\Equal5~4_combout\ & ((!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~4_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~37_combout\);

-- Location: LC_X8_Y7_N9
\timeint[1]\ : maxv_lcell
-- Equation(s):
-- \timeint~38\ = \timeint~37_combout\ $ (((\Equal5~3_combout\ & (\s4|tottime\(1))) # (!\Equal5~3_combout\ & ((timeint[1])))))
-- timeint(1) = DFFEAS(\timeint~38\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47b8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|tottime\(1),
	datab => \Equal5~3_combout\,
	datad => \timeint~37_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~38\,
	regout => timeint(1));

-- Location: LC_X6_Y6_N5
\Add6~42\ : maxv_lcell
-- Equation(s):
-- \Add6~42_cout0\ = CARRY(((\timeint~52\)))
-- \Add6~42COUT1_156\ = CARRY(((\timeint~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40\,
	cout0 => \Add6~42_cout0\,
	cout1 => \Add6~42COUT1_156\);

-- Location: LC_X6_Y6_N6
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = \timeint~49_combout\ $ ((((!\Add6~42_cout0\))))
-- \Add6~7\ = CARRY((!\timeint~49_combout\ & ((!\Add6~42_cout0\))))
-- \Add6~7COUT1_157\ = CARRY((!\timeint~49_combout\ & ((!\Add6~42COUT1_156\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~49_combout\,
	cin0 => \Add6~42_cout0\,
	cin1 => \Add6~42COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_157\);

-- Location: LC_X6_Y6_N7
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = (\timeint~44_combout\ $ ((!\Add6~7\)))
-- \Add6~12\ = CARRY(((\timeint~44_combout\ & !\Add6~7\)))
-- \Add6~12COUT1_158\ = CARRY(((\timeint~44_combout\ & !\Add6~7COUT1_157\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~44_combout\,
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_158\);

-- Location: LC_X6_Y6_N8
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = (\timeint~77_combout\ $ ((!\Add6~12\)))
-- \Add6~17\ = CARRY(((!\timeint~77_combout\ & !\Add6~12\)))
-- \Add6~17COUT1_159\ = CARRY(((!\timeint~77_combout\ & !\Add6~12COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~77_combout\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_159\);

-- Location: LC_X6_Y6_N9
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = (\timeint~80_combout\ $ ((\Add6~17\)))
-- \Add6~22\ = CARRY(((\timeint~80_combout\) # (!\Add6~17COUT1_159\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~80_combout\,
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout => \Add6~22\);

-- Location: LC_X4_Y6_N7
\timeint[7]\ : maxv_lcell
-- Equation(s):
-- \timeint~87\ = (\Equal5~4_combout\ & ((\Add6~0_combout\ & ((\timeint~86_combout\))) # (!\Add6~0_combout\ & (\Add6~30_combout\)))) # (!\Equal5~4_combout\ & (((\timeint~86_combout\))))
-- timeint(7) = DFFEAS(\timeint~87\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Equal5~4_combout\,
	datab => \Add6~30_combout\,
	datac => \timeint~86_combout\,
	datad => \Add6~0_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~87\,
	regout => timeint(7));

-- Location: LC_X6_Y8_N0
\s4|tottime[7]\ : maxv_lcell
-- Equation(s):
-- \timeint~48\ = ((\Equal5~3_combout\ & ((F1_tottime[7]))) # (!\Equal5~3_combout\ & (timeint(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => timeint(7),
	datac => \s4|rtime_sig\(7),
	datad => \Equal5~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~48\,
	regout => \s4|tottime\(7));

-- Location: LC_X6_Y8_N5
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (\timeint~48\ $ ((!\Add0~17\)))
-- \Add0~22\ = CARRY(((\timeint~48\ & !\Add0~17\)))
-- \Add0~22COUT1_149\ = CARRY(((\timeint~48\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~48\,
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_149\);

-- Location: LC_X5_Y10_N6
\timeint~85\ : maxv_lcell
-- Equation(s):
-- \timeint~85_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~48\))) # (!\Add0~0_combout\ & (\Add0~20_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~48\))))

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
	dataa => \Equal5~0_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~20_combout\,
	datad => \timeint~48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~85_combout\);

-- Location: LC_X5_Y8_N2
\s4|tottime[8]\ : maxv_lcell
-- Equation(s):
-- \timeint~74\ = ((\Equal5~3_combout\ & (F1_tottime[8])) # (!\Equal5~3_combout\ & ((timeint(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(8),
	datad => timeint(8),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~74\,
	regout => \s4|tottime\(8));

-- Location: LC_X6_Y8_N6
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (\timeint~74\ $ (((!\Add0~17\ & \Add0~22\) # (\Add0~17\ & \Add0~22COUT1_149\))))
-- \Add0~142\ = CARRY(((!\Add0~22\) # (!\timeint~74\)))
-- \Add0~142COUT1_150\ = CARRY(((!\Add0~22COUT1_149\) # (!\timeint~74\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~74\,
	cin => \Add0~17\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_150\);

-- Location: LC_X5_Y10_N9
\timeint~92\ : maxv_lcell
-- Equation(s):
-- \timeint~92_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~74\))) # (!\Add0~0_combout\ & (\Add0~140_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~74\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~140_combout\,
	datac => \Add0~0_combout\,
	datad => \timeint~74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~92_combout\);

-- Location: LC_X5_Y8_N0
\s4|tottime[9]\ : maxv_lcell
-- Equation(s):
-- \timeint~73\ = ((\Equal5~3_combout\ & (F1_tottime[9])) # (!\Equal5~3_combout\ & ((timeint(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(9),
	datad => timeint(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~73\,
	regout => \s4|tottime\(9));

-- Location: LC_X6_Y8_N7
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = \timeint~73\ $ ((((!(!\Add0~17\ & \Add0~142\) # (\Add0~17\ & \Add0~142COUT1_150\)))))
-- \Add0~137\ = CARRY((\timeint~73\ & ((!\Add0~142\))))
-- \Add0~137COUT1_151\ = CARRY((\timeint~73\ & ((!\Add0~142COUT1_150\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~73\,
	cin => \Add0~17\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_151\);

-- Location: LC_X5_Y10_N1
\timeint~91\ : maxv_lcell
-- Equation(s):
-- \timeint~91_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & (\timeint~73\)) # (!\Add0~0_combout\ & ((\Add0~135_combout\))))) # (!\Equal5~0_combout\ & (((\timeint~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~0_combout\,
	datac => \timeint~73\,
	datad => \Add0~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~91_combout\);

-- Location: LC_X5_Y8_N7
\s4|tottime[10]\ : maxv_lcell
-- Equation(s):
-- \timeint~72\ = ((\Equal5~3_combout\ & (F1_tottime[10])) # (!\Equal5~3_combout\ & ((timeint(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(10),
	datad => timeint(10),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~72\,
	regout => \s4|tottime\(10));

-- Location: LC_X6_Y8_N8
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (\timeint~72\ $ ((!(!\Add0~17\ & \Add0~137\) # (\Add0~17\ & \Add0~137COUT1_151\))))
-- \Add0~132\ = CARRY(((!\timeint~72\ & !\Add0~137\)))
-- \Add0~132COUT1_152\ = CARRY(((!\timeint~72\ & !\Add0~137COUT1_151\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~72\,
	cin => \Add0~17\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_152\);

-- Location: LC_X5_Y8_N5
\timeint~90\ : maxv_lcell
-- Equation(s):
-- \timeint~90_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~72\))) # (!\Add0~0_combout\ & (\Add0~130_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~72\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~130_combout\,
	datac => \timeint~72\,
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~90_combout\);

-- Location: LC_X8_Y10_N9
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = (((!(!\Add3~57\ & \Add3~32\) # (\Add3~57\ & \Add3~32COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~57\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X9_Y10_N2
\timeint~39\ : maxv_lcell
-- Equation(s):
-- \timeint~39_combout\ = (((!\Add3~0_combout\ & \Equal5~1_combout\)))

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
	datac => \Add3~0_combout\,
	datad => \Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~39_combout\);

-- Location: LC_X6_Y6_N3
\timeint~49\ : maxv_lcell
-- Equation(s):
-- \timeint~49_combout\ = \timeint~39_combout\ $ (((\Equal5~3_combout\ & ((\s4|tottime\(2)))) # (!\Equal5~3_combout\ & (timeint(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1de2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(2),
	datab => \Equal5~3_combout\,
	datac => \s4|tottime\(2),
	datad => \timeint~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~49_combout\);

-- Location: LC_X8_Y7_N3
\timeint[2]\ : maxv_lcell
-- Equation(s):
-- \timeint~41\ = (\timeint~37_combout\ & (((\Add6~5_combout\)))) # (!\timeint~37_combout\ & (\timeint~40\ $ (((\timeint~39_combout\)))))
-- timeint(2) = DFFEAS(\timeint~41\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~40\,
	datab => \Add6~5_combout\,
	datac => \timeint~39_combout\,
	datad => \timeint~37_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~41\,
	regout => timeint(2));

-- Location: LC_X6_Y6_N0
\timeint~44\ : maxv_lcell
-- Equation(s):
-- \timeint~44_combout\ = (\timeint~39_combout\ & (((\Add3~5_combout\)))) # (!\timeint~39_combout\ & (\timeint~42_combout\ $ (((\timeint~43\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~42_combout\,
	datab => \Add3~5_combout\,
	datac => \timeint~43\,
	datad => \timeint~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~44_combout\);

-- Location: LC_X6_Y6_N4
\timeint[3]\ : maxv_lcell
-- Equation(s):
-- \timeint~75\ = (\Equal5~4_combout\ & ((\Add6~0_combout\ & (\timeint~44_combout\)) # (!\Add6~0_combout\ & ((\Add6~10_combout\))))) # (!\Equal5~4_combout\ & (\timeint~44_combout\))
-- timeint(3) = DFFEAS(\timeint~75\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Equal5~4_combout\,
	datab => \timeint~44_combout\,
	datac => \Add6~10_combout\,
	datad => \Add6~0_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~75\,
	regout => timeint(3));

-- Location: LC_X6_Y8_N1
\Add0~32\ : maxv_lcell
-- Equation(s):
-- \Add0~32_cout0\ = CARRY((\timeint~43\))
-- \Add0~32COUT1_146\ = CARRY((\timeint~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30\,
	cout0 => \Add0~32_cout0\,
	cout1 => \Add0~32COUT1_146\);

-- Location: LC_X6_Y8_N2
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (\timeint~45\ $ ((!\Add0~32_cout0\)))
-- \Add0~7\ = CARRY(((!\timeint~45\ & !\Add0~32_cout0\)))
-- \Add0~7COUT1_147\ = CARRY(((!\timeint~45\ & !\Add0~32COUT1_146\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~45\,
	cin0 => \Add0~32_cout0\,
	cin1 => \Add0~32COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_147\);

-- Location: LC_X5_Y10_N5
\timeint~76\ : maxv_lcell
-- Equation(s):
-- \timeint~76_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~45\))) # (!\Add0~0_combout\ & (\Add0~5_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~5_combout\,
	datac => \Add0~0_combout\,
	datad => \timeint~45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~76_combout\);

-- Location: LC_X6_Y6_N2
\timeint~77\ : maxv_lcell
-- Equation(s):
-- \timeint~77_combout\ = (\Equal5~1_combout\ & ((\Add3~0_combout\ & (\timeint~76_combout\)) # (!\Add3~0_combout\ & ((\Add3~10_combout\))))) # (!\Equal5~1_combout\ & (\timeint~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~76_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~77_combout\);

-- Location: LC_X5_Y8_N3
\timeint[4]\ : maxv_lcell
-- Equation(s):
-- \timeint~78\ = (\Equal5~4_combout\ & ((\Add6~0_combout\ & (\timeint~77_combout\)) # (!\Add6~0_combout\ & ((\Add6~15_combout\))))) # (!\Equal5~4_combout\ & (\timeint~77_combout\))
-- timeint(4) = DFFEAS(\timeint~78\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \timeint~77_combout\,
	datab => \Equal5~4_combout\,
	datac => \Add6~15_combout\,
	datad => \Add6~0_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~78\,
	regout => timeint(4));

-- Location: LC_X5_Y8_N4
\s4|tottime[4]\ : maxv_lcell
-- Equation(s):
-- \timeint~45\ = ((\Equal5~3_combout\ & ((F1_tottime[4]))) # (!\Equal5~3_combout\ & (timeint(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => timeint(4),
	datac => \s4|rtime_sig\(4),
	datad => \Equal5~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~45\,
	regout => \s4|tottime\(4));

-- Location: LC_X6_Y8_N3
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = \timeint~46\ $ ((((!\Add0~7\))))
-- \Add0~12\ = CARRY((\timeint~46\ & ((!\Add0~7\))))
-- \Add0~12COUT1_148\ = CARRY((\timeint~46\ & ((!\Add0~7COUT1_147\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~46\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_148\);

-- Location: LC_X5_Y10_N2
\timeint~79\ : maxv_lcell
-- Equation(s):
-- \timeint~79_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & (\timeint~46\)) # (!\Add0~0_combout\ & ((\Add0~10_combout\))))) # (!\Equal5~0_combout\ & (((\timeint~46\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~0_combout\,
	datac => \timeint~46\,
	datad => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~79_combout\);

-- Location: LC_X6_Y6_N1
\timeint~80\ : maxv_lcell
-- Equation(s):
-- \timeint~80_combout\ = (\Equal5~1_combout\ & ((\Add3~0_combout\ & (\timeint~79_combout\)) # (!\Add3~0_combout\ & ((\Add3~15_combout\))))) # (!\Equal5~1_combout\ & (\timeint~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~79_combout\,
	datab => \Add3~15_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~80_combout\);

-- Location: LC_X5_Y6_N0
\timeint[5]\ : maxv_lcell
-- Equation(s):
-- \timeint~81\ = (\Equal5~4_combout\ & ((\Add6~0_combout\ & ((\timeint~80_combout\))) # (!\Add6~0_combout\ & (\Add6~20_combout\)))) # (!\Equal5~4_combout\ & (((\timeint~80_combout\))))
-- timeint(5) = DFFEAS(\timeint~81\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Equal5~4_combout\,
	datab => \Add6~20_combout\,
	datac => \Add6~0_combout\,
	datad => \timeint~80_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~81\,
	regout => timeint(5));

-- Location: LC_X5_Y8_N1
\s4|tottime[5]\ : maxv_lcell
-- Equation(s):
-- \timeint~46\ = ((\Equal5~3_combout\ & ((F1_tottime[5]))) # (!\Equal5~3_combout\ & (timeint(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => timeint(5),
	datac => \s4|rtime_sig\(5),
	datad => \Equal5~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~46\,
	regout => \s4|tottime\(5));

-- Location: LC_X6_Y8_N4
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (\timeint~47\ $ ((\Add0~12\)))
-- \Add0~17\ = CARRY(((!\Add0~12COUT1_148\) # (!\timeint~47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~47\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X5_Y8_N6
\timeint~82\ : maxv_lcell
-- Equation(s):
-- \timeint~82_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~47\))) # (!\Add0~0_combout\ & (\Add0~15_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~15_combout\,
	datac => \timeint~47\,
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~82_combout\);

-- Location: LC_X7_Y9_N6
\timeint~83\ : maxv_lcell
-- Equation(s):
-- \timeint~83_combout\ = (\Equal5~1_combout\ & ((\Add3~0_combout\ & (\timeint~82_combout\)) # (!\Add3~0_combout\ & ((\Add3~20_combout\))))) # (!\Equal5~1_combout\ & (\timeint~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \timeint~82_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~83_combout\);

-- Location: LC_X4_Y6_N2
\timeint[6]\ : maxv_lcell
-- Equation(s):
-- \timeint~84\ = (\Equal5~4_combout\ & ((\Add6~0_combout\ & ((\timeint~83_combout\))) # (!\Add6~0_combout\ & (\Add6~25_combout\)))) # (!\Equal5~4_combout\ & (((\timeint~83_combout\))))
-- timeint(6) = DFFEAS(\timeint~84\, GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Equal5~4_combout\,
	datab => \Add6~25_combout\,
	datac => \timeint~83_combout\,
	datad => \Add6~0_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~84\,
	regout => timeint(6));

-- Location: LC_X5_Y8_N9
\s4|tottime[6]\ : maxv_lcell
-- Equation(s):
-- \timeint~47\ = ((\Equal5~3_combout\ & ((F1_tottime[6]))) # (!\Equal5~3_combout\ & (timeint(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => timeint(6),
	datac => \s4|rtime_sig\(6),
	datad => \Equal5~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~47\,
	regout => \s4|tottime\(6));

-- Location: LC_X6_Y8_N9
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (\timeint~71\ $ (((!\Add0~17\ & \Add0~132\) # (\Add0~17\ & \Add0~132COUT1_152\))))
-- \Add0~127\ = CARRY(((\timeint~71\) # (!\Add0~132COUT1_152\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~71\,
	cin => \Add0~17\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout => \Add0~127\);

-- Location: LC_X5_Y10_N4
\timeint~89\ : maxv_lcell
-- Equation(s):
-- \timeint~89_combout\ = (\Equal5~0_combout\ & ((\Add0~0_combout\ & ((\timeint~71\))) # (!\Add0~0_combout\ & (\Add0~125_combout\)))) # (!\Equal5~0_combout\ & (((\timeint~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add0~125_combout\,
	datac => \Add0~0_combout\,
	datad => \timeint~71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~89_combout\);

-- Location: LC_X4_Y8_N9
\s4|tottime[11]\ : maxv_lcell
-- Equation(s):
-- \timeint~71\ = ((\Equal5~3_combout\ & (F1_tottime[11])) # (!\Equal5~3_combout\ & ((timeint(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Equal5~3_combout\,
	datac => \s4|rtime_sig\(11),
	datad => timeint(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~71\,
	regout => \s4|tottime\(11));

-- Location: LC_X7_Y8_N4
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (!\Add0~127\ & \Add0~107\) # (\Add0~127\ & \Add0~107COUT1_156\) $ (((\Equal5~3_combout\) # ((!timeint(16)))))
-- \Add0~102\ = CARRY((!\Add0~107COUT1_156\ & ((\Equal5~3_combout\) # (!timeint(16)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "4b0b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => timeint(16),
	cin => \Add0~127\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout => \Add0~102\);

-- Location: LC_X7_Y9_N8
\timeint~66\ : maxv_lcell
-- Equation(s):
-- \timeint~66_combout\ = (\timeint~42_combout\ & (((\Add0~100_combout\)))) # (!\timeint~42_combout\ & (timeint(16) & (!\Equal5~3_combout\)))

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
	dataa => timeint(16),
	datab => \Equal5~3_combout\,
	datac => \Add0~100_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~66_combout\);

-- Location: LC_X7_Y8_N9
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (!\Add0~102\ & \Add0~82\) # (\Add0~102\ & \Add0~82COUT1_160\) $ (((timeint(21) & (!\Equal5~3_combout\))))
-- \Add0~77\ = CARRY(((timeint(21) & !\Equal5~3_combout\)) # (!\Add0~82COUT1_160\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "d22f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(21),
	datab => \Equal5~3_combout\,
	cin => \Add0~102\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout => \Add0~77\);

-- Location: LC_X8_Y9_N4
\timeint~61\ : maxv_lcell
-- Equation(s):
-- \timeint~61_combout\ = (\timeint~42_combout\ & (\Add0~75_combout\)) # (!\timeint~42_combout\ & (((!\Equal5~3_combout\ & timeint(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Equal5~3_combout\,
	datac => \timeint~42_combout\,
	datad => timeint(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~61_combout\);

-- Location: LC_X8_Y8_N4
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (!\Add0~77\ & \Add0~57\) # (\Add0~77\ & \Add0~57COUT1_164\) $ ((((\Equal5~3_combout\)) # (!timeint(26))))
-- \Add0~52\ = CARRY((!\Add0~57COUT1_164\ & ((\Equal5~3_combout\) # (!timeint(26)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d0d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timeint(26),
	datab => \Equal5~3_combout\,
	cin => \Add0~77\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout => \Add0~52\);

-- Location: LC_X9_Y8_N7
\timeint~56\ : maxv_lcell
-- Equation(s):
-- \timeint~56_combout\ = (\timeint~42_combout\ & (\Add0~50_combout\)) # (!\timeint~42_combout\ & (((timeint(26) & !\Equal5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => timeint(26),
	datac => \Equal5~3_combout\,
	datad => \timeint~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~56_combout\);

-- Location: LC_X8_Y8_N9
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((((!\Add0~52\ & \Add0~27\) # (\Add0~52\ & \Add0~27COUT1_168\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~52\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X7_Y7_N4
\write_data[3]~9\ : maxv_lcell
-- Equation(s):
-- \write_data[3]~9_combout\ = (\Equal5~1_combout\ & (!\Add3~0_combout\ & ((!\Equal5~0_combout\) # (!\Add0~0_combout\)))) # (!\Equal5~1_combout\ & (((!\Equal5~0_combout\)) # (!\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "153f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[3]~9_combout\);

-- Location: LC_X9_Y7_N2
\write_data[3]~11\ : maxv_lcell
-- Equation(s):
-- \write_data[3]~11_combout\ = (\write_data[3]~10_combout\ & (\write_data[3]~9_combout\ & ((!\Add6~0_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datab => \write_data[3]~10_combout\,
	datac => \write_data[3]~9_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[3]~11_combout\);

-- Location: LC_X8_Y7_N6
\nextd~4\ : maxv_lcell
-- Equation(s):
-- \nextd~4_combout\ = (\Add3~0_combout\ & (!\Equal5~1_combout\ & ((!\Add6~0_combout\) # (!\Equal5~4_combout\)))) # (!\Add3~0_combout\ & (((!\Add6~0_combout\)) # (!\Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Equal5~4_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~4_combout\);

-- Location: LC_X8_Y7_N7
\nextd~5\ : maxv_lcell
-- Equation(s):
-- \nextd~5_combout\ = (\Equal5~5_combout\) # ((\write_data[3]~11_combout\ & (!nextd(1))) # (!\write_data[3]~11_combout\ & ((\nextd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => nextd(1),
	datab => \Equal5~5_combout\,
	datac => \write_data[3]~11_combout\,
	datad => \nextd~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~5_combout\);

-- Location: LC_X4_Y8_N1
\d[1]\ : maxv_lcell
-- Equation(s):
-- d(1) = DFFEAS((\s7|ack~regout\ & (((!\nextd~5_combout\)))) # (!\s7|ack~regout\ & (d(1) & (\nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|ack~regout\,
	datab => d(1),
	datac => \nreset~combout\,
	datad => \nextd~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(1));

-- Location: LC_X9_Y7_N9
\nextd~2\ : maxv_lcell
-- Equation(s):
-- \nextd~2_combout\ = ((d(0) & (d(2) & d(1))) # (!d(0) & (!d(2) & !d(1)))) # (!\nreset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "81ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => d(0),
	datab => d(2),
	datac => d(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~2_combout\);

-- Location: LC_X9_Y7_N7
\nextd[2]\ : maxv_lcell
-- Equation(s):
-- nextd(2) = DFFEAS((((!\nextd~3_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \nextd~3_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nextd(2));

-- Location: LC_X9_Y7_N8
\nextd~3\ : maxv_lcell
-- Equation(s):
-- \nextd~3_combout\ = ((\nextd~2_combout\) # ((!nextd(2) & \write_data[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nextd~2_combout\,
	datac => nextd(2),
	datad => \write_data[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~3_combout\);

-- Location: LC_X4_Y8_N4
\d[2]\ : maxv_lcell
-- Equation(s):
-- d(2) = DFFEAS((\s7|ack~regout\ & (((!\nextd~3_combout\)))) # (!\s7|ack~regout\ & (d(2) & (\nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|ack~regout\,
	datab => d(2),
	datac => \nreset~combout\,
	datad => \nextd~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(2));

-- Location: LC_X9_Y7_N5
\Equal5~5\ : maxv_lcell
-- Equation(s):
-- \Equal5~5_combout\ = (d(0) & (d(2) & (d(1) & \nreset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => d(0),
	datab => d(2),
	datac => d(1),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~5_combout\);

-- Location: LC_X9_Y9_N3
\d~2\ : maxv_lcell
-- Equation(s):
-- \d~2_combout\ = (((!d(0))) # (!\nreset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nreset~combout\,
	datad => d(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d~2_combout\);

-- Location: LC_X9_Y9_N9
\Equal5~2\ : maxv_lcell
-- Equation(s):
-- \Equal5~2_combout\ = (((!d(1) & !d(2))) # (!\nreset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => d(1),
	datac => d(2),
	datad => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~2_combout\);

-- Location: LC_X9_Y9_N2
\nextd~0\ : maxv_lcell
-- Equation(s):
-- \nextd~0_combout\ = (\d~2_combout\ & (((\Add3~0_combout\ & \Equal5~1_combout\)))) # (!\d~2_combout\ & ((\Equal5~2_combout\) # ((\Add3~0_combout\ & \Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d~2_combout\,
	datab => \Equal5~2_combout\,
	datac => \Add3~0_combout\,
	datad => \Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~0_combout\);

-- Location: LC_X9_Y7_N3
\nextd~1\ : maxv_lcell
-- Equation(s):
-- \nextd~1_combout\ = (\Equal5~5_combout\) # ((\write_data[3]~11_combout\ & (!nextd(0))) # (!\write_data[3]~11_combout\ & ((\nextd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => nextd(0),
	datab => \Equal5~5_combout\,
	datac => \nextd~0_combout\,
	datad => \write_data[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nextd~1_combout\);

-- Location: LC_X4_Y8_N3
\d[0]\ : maxv_lcell
-- Equation(s):
-- d(0) = DFFEAS((\s7|ack~regout\ & (((!\nextd~1_combout\)))) # (!\s7|ack~regout\ & (d(0) & (\nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => d(0),
	datab => \nreset~combout\,
	datac => \s7|ack~regout\,
	datad => \nextd~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(0));

-- Location: LC_X9_Y9_N4
\write_column[0]\ : maxv_lcell
-- Equation(s):
-- write_column(0) = DFFEAS((\nreset~combout\ & (\s7|ack~regout\ & ((d(0))))), GLOBAL(\s1|outclk~regout\), VCC, , \write_row[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \nreset~combout\,
	datab => \s7|ack~regout\,
	datad => d(0),
	aclr => GND,
	ena => \write_row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(0));

-- Location: LC_X10_Y6_N8
\write_data[6]~13\ : maxv_lcell
-- Equation(s):
-- \write_data[6]~13_combout\ = (\Equal5~5_combout\) # (((\Equal5~4_combout\ & \Add6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datac => \Equal5~4_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[6]~13_combout\);

-- Location: LC_X10_Y6_N0
\digit[0]\ : maxv_lcell
-- Equation(s):
-- digit(0) = DFFEAS(\Equal5~4_combout\ $ ((\Add4~0_combout\)), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[0]~1\ = CARRY((\Equal5~4_combout\ & (\Add4~0_combout\)))
-- \digit[0]~1COUT1_17\ = CARRY((\Equal5~4_combout\ & (\Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Equal5~4_combout\,
	datab => \Add4~0_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(0),
	cout0 => \digit[0]~1\,
	cout1 => \digit[0]~1COUT1_17\);

-- Location: LC_X10_Y7_N0
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((!digit(0)))
-- \Add1~2\ = CARRY(((digit(0))))
-- \Add1~2COUT1_49\ = CARRY(((digit(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => digit(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_49\);

-- Location: LC_X6_Y7_N3
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = (\Equal5~0_combout\ & (((\Add1~0_combout\ & !\Add0~0_combout\)))) # (!\Equal5~0_combout\ & (digit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(0),
	datab => \Add1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\);

-- Location: LC_X4_Y6_N9
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (\Equal5~1_combout\ & (((!\Add1~5_combout\ & !\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (((\Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "505a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datac => \Add1~5_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X4_Y7_N9
\putdata~3\ : maxv_lcell
-- Equation(s):
-- \putdata~3_combout\ = (((!\Add6~0_combout\)) # (!\Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~4_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~3_combout\);

-- Location: LC_X4_Y9_N2
\s4|tottime[0]\ : maxv_lcell
-- Equation(s):
-- \s4|tottime\(0) = DFFEAS((((\s4|rtime_sig\(0)))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \s4|rtime_sig\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s4|tottime\(0));

-- Location: LC_X4_Y8_N5
\timeint[0]\ : maxv_lcell
-- Equation(s):
-- \timeint~36\ = (\Equal5~3_combout\ & (\s4|tottime\(0))) # (!\Equal5~3_combout\ & (((timeint[0]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s4|tottime\(0),
	datab => \Equal5~3_combout\,
	aclr => GND,
	ena => \s7|ack~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \timeint~36\,
	regout => timeint(0));

-- Location: LC_X9_Y9_N6
\write_data[3]~3\ : maxv_lcell
-- Equation(s):
-- \write_data[3]~3_combout\ = (((\Add3~0_combout\) # (!d(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add3~0_combout\,
	datad => d(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[3]~3_combout\);

-- Location: LC_X9_Y9_N7
\write_data[3]~16\ : maxv_lcell
-- Equation(s):
-- \write_data[3]~16_combout\ = (\nreset~combout\ & (d(0) & (!d(1) & \write_data[3]~3_combout\)))

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
	dataa => \nreset~combout\,
	datab => d(0),
	datac => d(1),
	datad => \write_data[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[3]~16_combout\);

-- Location: LC_X4_Y7_N3
\putdata~1\ : maxv_lcell
-- Equation(s):
-- \putdata~1_combout\ = (\write_data[3]~16_combout\ & (((\write_data[3]~9_combout\)))) # (!\write_data[3]~16_combout\ & ((\write_data[3]~9_combout\ & ((\s6|reactcount\(0)))) # (!\write_data[3]~9_combout\ & (digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[3]~16_combout\,
	datab => digit(0),
	datac => \write_data[3]~9_combout\,
	datad => \s6|reactcount\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~1_combout\);

-- Location: LC_X4_Y7_N4
\putdata~2\ : maxv_lcell
-- Equation(s):
-- \putdata~2_combout\ = (\write_data[3]~16_combout\ & ((\putdata~1_combout\ & ((\s6|ledcount\(0)))) # (!\putdata~1_combout\ & (\Add1~5_combout\)))) # (!\write_data[3]~16_combout\ & (((\putdata~1_combout\))))

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
	dataa => \write_data[3]~16_combout\,
	datab => \Add1~5_combout\,
	datac => \s6|ledcount\(0),
	datad => \putdata~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~2_combout\);

-- Location: LC_X9_Y7_N4
\write_data[0]~12\ : maxv_lcell
-- Equation(s):
-- \write_data[0]~12_combout\ = (\s7|ack~regout\ & ((\oversig~regout\) # ((\Equal5~5_combout\) # (!\write_data[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \oversig~regout\,
	datab => \Equal5~5_combout\,
	datac => \s7|ack~regout\,
	datad => \write_data[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[0]~12_combout\);

-- Location: LC_X4_Y7_N5
\write_data[0]\ : maxv_lcell
-- Equation(s):
-- write_data(0) = DFFEAS((\putdata~3_combout\ & (((\putdata~2_combout\)))) # (!\putdata~3_combout\ & (\Add4~0_combout\)), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, \timeint~36\, , \oversig~regout\, \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add4~0_combout\,
	datab => \putdata~3_combout\,
	datac => \timeint~36\,
	datad => \putdata~2_combout\,
	aclr => GND,
	sclr => \oversig~regout\,
	sload => \Equal5~5_combout\,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(0));

-- Location: LC_X11_Y6_N3
\s7|data_dis[0]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(0) = DFFEAS((!\erase~regout\ & (((write_data(0))))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \erase~regout\,
	datad => write_data(0),
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(0));

-- Location: LC_X11_Y6_N5
\s7|cmd_position[0]\ : maxv_lcell
-- Equation(s):
-- \s7|Selector7~1\ = (\s7|Selector8~1_combout\ & (\s7|WideOr1~0_combout\ & (J1_cmd_position[0]))) # (!\s7|Selector8~1_combout\ & ((\s7|data_dis\(0)) # ((\s7|WideOr1~0_combout\ & J1_cmd_position[0]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|Selector8~1_combout\,
	datab => \s7|WideOr1~0_combout\,
	datac => write_column(0),
	datad => \s7|data_dis\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector7~1\,
	regout => \s7|cmd_position\(0));

-- Location: LC_X14_Y5_N3
\s7|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector5~0_combout\ = (\s7|state.S2~regout\) # ((\s7|state.S1~regout\) # ((\s7|LessThan0~0_combout\ & !\s7|state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|state.S2~regout\,
	datab => \s7|LessThan0~0_combout\,
	datac => \s7|state.S0~regout\,
	datad => \s7|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector5~0_combout\);

-- Location: LC_X15_Y5_N4
\s7|Selector7~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector7~0_combout\ = (!\s7|count_cmd\(1) & (\s7|Selector5~0_combout\ & (\s7|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(1),
	datab => \s7|Selector5~0_combout\,
	datac => \s7|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector7~0_combout\);

-- Location: LC_X16_Y5_N5
\s7|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(0) = DFFEAS((\s7|Selector7~1\) # ((\s7|Selector7~0_combout\) # ((\s7|Selector10~1_combout\ & \s7|lcd\(0)))), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|Selector7~1\,
	datab => \s7|Selector10~1_combout\,
	datac => \s7|lcd\(0),
	datad => \s7|Selector7~0_combout\,
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(0));

-- Location: LC_X9_Y9_N0
\write_column[1]\ : maxv_lcell
-- Equation(s):
-- write_column(1) = DFFEAS(((d(1) & (\s7|ack~regout\ & \nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \write_row[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => d(1),
	datac => \s7|ack~regout\,
	datad => \nreset~combout\,
	aclr => GND,
	ena => \write_row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(1));

-- Location: LC_X12_Y6_N2
\s7|cmd_position[1]\ : maxv_lcell
-- Equation(s):
-- \s7|cmd_position\(1) = DFFEAS(GND, GLOBAL(\s1|outclk~regout\), VCC, , , write_column(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => write_column(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|cmd_position\(1));

-- Location: LC_X10_Y6_N1
\digit[1]\ : maxv_lcell
-- Equation(s):
-- digit(1) = DFFEAS((\Add4~6_combout\ $ ((\digit[0]~1\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[1]~3\ = CARRY(((!\digit[0]~1\) # (!\Add4~6_combout\)))
-- \digit[1]~3COUT1_18\ = CARRY(((!\digit[0]~1COUT1_17\) # (!\Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Add4~6_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin0 => \digit[0]~1\,
	cin1 => \digit[0]~1COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(1),
	cout0 => \digit[1]~3\,
	cout1 => \digit[1]~3COUT1_18\);

-- Location: LC_X10_Y7_N1
\Add1~6\ : maxv_lcell
-- Equation(s):
-- \Add1~6_combout\ = digit(1) $ ((((\Add1~2\))))
-- \Add1~8\ = CARRY(((!\Add1~2\)) # (!digit(1)))
-- \Add1~8COUT1_50\ = CARRY(((!\Add1~2COUT1_49\)) # (!digit(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~6_combout\,
	cout0 => \Add1~8\,
	cout1 => \Add1~8COUT1_50\);

-- Location: LC_X6_Y7_N6
\Add1~11\ : maxv_lcell
-- Equation(s):
-- \Add1~11_combout\ = (\Equal5~0_combout\ & (((!\Add0~0_combout\ & \Add1~6_combout\)))) # (!\Equal5~0_combout\ & (digit(1)))

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
	dataa => digit(1),
	datab => \Add0~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~11_combout\);

-- Location: LC_X5_Y5_N0
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_cout0\ = CARRY((\Add1~5_combout\))
-- \Add4~45COUT1_49\ = CARRY((\Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~43\,
	cout0 => \Add4~45_cout0\,
	cout1 => \Add4~45COUT1_49\);

-- Location: LC_X5_Y5_N1
\Add4~1\ : maxv_lcell
-- Equation(s):
-- \Add4~1_combout\ = (\Add1~11_combout\ $ ((\Add4~45_cout0\)))
-- \Add4~3\ = CARRY(((!\Add4~45_cout0\) # (!\Add1~11_combout\)))
-- \Add4~3COUT1_50\ = CARRY(((!\Add4~45COUT1_49\) # (!\Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~11_combout\,
	cin0 => \Add4~45_cout0\,
	cin1 => \Add4~45COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~1_combout\,
	cout0 => \Add4~3\,
	cout1 => \Add4~3COUT1_50\);

-- Location: LC_X5_Y7_N1
\Add4~6\ : maxv_lcell
-- Equation(s):
-- \Add4~6_combout\ = (\Equal5~1_combout\ & (((\Add4~1_combout\ & !\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (\Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add4~1_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~6_combout\);

-- Location: LC_X6_Y7_N7
\putdata~4\ : maxv_lcell
-- Equation(s):
-- \putdata~4_combout\ = (\write_data[3]~9_combout\ & (((\write_data[3]~16_combout\)))) # (!\write_data[3]~9_combout\ & ((\write_data[3]~16_combout\ & ((\Add1~11_combout\))) # (!\write_data[3]~16_combout\ & (digit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(1),
	datab => \write_data[3]~9_combout\,
	datac => \Add1~11_combout\,
	datad => \write_data[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~4_combout\);

-- Location: LC_X3_Y7_N2
\putdata~5\ : maxv_lcell
-- Equation(s):
-- \putdata~5_combout\ = (\write_data[3]~9_combout\ & ((\putdata~4_combout\ & ((\s6|ledcount\(1)))) # (!\putdata~4_combout\ & (\s6|reactcount\(1))))) # (!\write_data[3]~9_combout\ & (((\putdata~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[3]~9_combout\,
	datab => \s6|reactcount\(1),
	datac => \putdata~4_combout\,
	datad => \s6|ledcount\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~5_combout\);

-- Location: LC_X4_Y7_N2
\write_data[1]\ : maxv_lcell
-- Equation(s):
-- write_data(1) = DFFEAS((\putdata~3_combout\ & (((\putdata~5_combout\)))) # (!\putdata~3_combout\ & (\Add4~6_combout\)), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, \timeint~38\, , \oversig~regout\, \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add4~6_combout\,
	datab => \putdata~3_combout\,
	datac => \timeint~38\,
	datad => \putdata~5_combout\,
	aclr => GND,
	sclr => \oversig~regout\,
	sload => \Equal5~5_combout\,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(1));

-- Location: LC_X11_Y6_N6
\s7|data_dis[1]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(1) = DFFEAS((((write_data(1) & !\erase~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	datac => write_data(1),
	datad => \erase~regout\,
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(1));

-- Location: LC_X14_Y5_N2
\s7|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector1~0_combout\ = (!\s7|state.S2~regout\ & (((\s7|state.S0~regout\ & !\s7|state.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|state.S2~regout\,
	datac => \s7|state.S0~regout\,
	datad => \s7|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector1~0_combout\);

-- Location: LC_X11_Y5_N6
\s7|lcd[1]~2\ : maxv_lcell
-- Equation(s):
-- \s7|lcd[1]~2_combout\ = (!\s7|state.S9~regout\ & (\nreset~combout\ & (!\s7|lcd[6]~1_combout\ & !\s7|lcd[6]~0_combout\)))

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
	dataa => \s7|state.S9~regout\,
	datab => \nreset~combout\,
	datac => \s7|lcd[6]~1_combout\,
	datad => \s7|lcd[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|lcd[1]~2_combout\);

-- Location: LC_X12_Y6_N4
\s7|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(1) = DFFEAS((\s7|WideOr1~0_combout\ & (\s7|cmd_position\(1))) # (!\s7|WideOr1~0_combout\ & (((\s7|data_dis\(1) & \s7|Selector1~0_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|WideOr1~0_combout\,
	datab => \s7|cmd_position\(1),
	datac => \s7|data_dis\(1),
	datad => \s7|Selector1~0_combout\,
	aclr => GND,
	ena => \s7|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(1));

-- Location: LC_X9_Y9_N5
\write_column[3]\ : maxv_lcell
-- Equation(s):
-- write_column(3) = DFFEAS(((\s7|ack~regout\ & (d(2) & \nreset~combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \write_row[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \s7|ack~regout\,
	datac => d(2),
	datad => \nreset~combout\,
	aclr => GND,
	ena => \write_row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_column(3));

-- Location: LC_X10_Y6_N2
\digit[2]\ : maxv_lcell
-- Equation(s):
-- digit(2) = DFFEAS((\Add4~12_combout\ $ ((!\digit[1]~3\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[2]~5\ = CARRY(((\Add4~12_combout\ & !\digit[1]~3\)))
-- \digit[2]~5COUT1_19\ = CARRY(((\Add4~12_combout\ & !\digit[1]~3COUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Add4~12_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin0 => \digit[1]~3\,
	cin1 => \digit[1]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(2),
	cout0 => \digit[2]~5\,
	cout1 => \digit[2]~5COUT1_19\);

-- Location: LC_X10_Y7_N2
\Add1~12\ : maxv_lcell
-- Equation(s):
-- \Add1~12_combout\ = (digit(2) $ ((!\Add1~8\)))
-- \Add1~14\ = CARRY(((digit(2) & !\Add1~8\)))
-- \Add1~14COUT1_51\ = CARRY(((digit(2) & !\Add1~8COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => digit(2),
	cin0 => \Add1~8\,
	cin1 => \Add1~8COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~12_combout\,
	cout0 => \Add1~14\,
	cout1 => \Add1~14COUT1_51\);

-- Location: LC_X6_Y7_N1
\Add1~17\ : maxv_lcell
-- Equation(s):
-- \Add1~17_combout\ = (\Equal5~0_combout\ & (\Add1~12_combout\ & ((!\Add0~0_combout\)))) # (!\Equal5~0_combout\ & (((digit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Add1~12_combout\,
	datac => digit(2),
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~17_combout\);

-- Location: LC_X5_Y5_N2
\Add4~7\ : maxv_lcell
-- Equation(s):
-- \Add4~7_combout\ = \Add1~17_combout\ $ ((((!\Add4~3\))))
-- \Add4~9\ = CARRY((\Add1~17_combout\ & ((!\Add4~3\))))
-- \Add4~9COUT1_51\ = CARRY((\Add1~17_combout\ & ((!\Add4~3COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~17_combout\,
	cin0 => \Add4~3\,
	cin1 => \Add4~3COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~7_combout\,
	cout0 => \Add4~9\,
	cout1 => \Add4~9COUT1_51\);

-- Location: LC_X6_Y7_N9
\Add4~12\ : maxv_lcell
-- Equation(s):
-- \Add4~12_combout\ = (\Equal5~1_combout\ & (\Add4~7_combout\ & ((!\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (((\Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~7_combout\,
	datab => \Add1~17_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~12_combout\);

-- Location: LC_X4_Y7_N6
\putdata~6\ : maxv_lcell
-- Equation(s):
-- \putdata~6_combout\ = (\write_data[3]~16_combout\ & (((\write_data[3]~9_combout\)))) # (!\write_data[3]~16_combout\ & ((\write_data[3]~9_combout\ & ((\s6|reactcount\(2)))) # (!\write_data[3]~9_combout\ & (digit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[3]~16_combout\,
	datab => digit(2),
	datac => \write_data[3]~9_combout\,
	datad => \s6|reactcount\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~6_combout\);

-- Location: LC_X4_Y7_N7
\putdata~7\ : maxv_lcell
-- Equation(s):
-- \putdata~7_combout\ = (\write_data[3]~16_combout\ & ((\putdata~6_combout\ & ((\s6|ledcount\(2)))) # (!\putdata~6_combout\ & (\Add1~17_combout\)))) # (!\write_data[3]~16_combout\ & (((\putdata~6_combout\))))

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
	dataa => \write_data[3]~16_combout\,
	datab => \Add1~17_combout\,
	datac => \s6|ledcount\(2),
	datad => \putdata~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~7_combout\);

-- Location: LC_X4_Y7_N8
\write_data[2]\ : maxv_lcell
-- Equation(s):
-- write_data(2) = DFFEAS((\putdata~3_combout\ & (((\putdata~7_combout\)))) # (!\putdata~3_combout\ & (\Add4~12_combout\)), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, \timeint~41\, , \oversig~regout\, \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add4~12_combout\,
	datab => \putdata~3_combout\,
	datac => \timeint~41\,
	datad => \putdata~7_combout\,
	aclr => GND,
	sclr => \oversig~regout\,
	sload => \Equal5~5_combout\,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(2));

-- Location: LC_X11_Y6_N2
\s7|data_dis[2]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(2) = DFFEAS((!\erase~regout\ & (((write_data(2))))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \erase~regout\,
	datad => write_data(2),
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(2));

-- Location: LC_X11_Y6_N8
\s7|cmd_position[2]\ : maxv_lcell
-- Equation(s):
-- \s7|Selector5~2\ = (\s7|Selector8~1_combout\ & (\s7|WideOr1~0_combout\ & (J1_cmd_position[2]))) # (!\s7|Selector8~1_combout\ & ((\s7|data_dis\(2)) # ((\s7|WideOr1~0_combout\ & J1_cmd_position[2]))))
-- \s7|cmd_position\(2) = DFFEAS(\s7|Selector5~2\, GLOBAL(\s1|outclk~regout\), VCC, , , write_column(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|Selector8~1_combout\,
	datab => \s7|WideOr1~0_combout\,
	datac => write_column(3),
	datad => \s7|data_dis\(2),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector5~2\,
	regout => \s7|cmd_position\(2));

-- Location: LC_X15_Y5_N6
\s7|Selector5~1\ : maxv_lcell
-- Equation(s):
-- \s7|Selector5~1_combout\ = (\s7|Selector5~0_combout\ & (!\s7|count_cmd\(0) & (\s7|count_cmd\(2) $ (\s7|count_cmd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(2),
	datab => \s7|Selector5~0_combout\,
	datac => \s7|count_cmd\(0),
	datad => \s7|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector5~1_combout\);

-- Location: LC_X16_Y5_N2
\s7|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(2) = DFFEAS((\s7|Selector5~2\) # ((\s7|Selector5~1_combout\) # ((\s7|Selector10~1_combout\ & \s7|lcd\(2)))), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \s7|Selector5~2\,
	datab => \s7|Selector5~1_combout\,
	datac => \s7|Selector10~1_combout\,
	datad => \s7|lcd\(2),
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(2));

-- Location: LC_X10_Y6_N3
\digit[3]\ : maxv_lcell
-- Equation(s):
-- digit(3) = DFFEAS(\Add4~18_combout\ $ ((((\digit[2]~5\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[3]~7\ = CARRY(((!\digit[2]~5\)) # (!\Add4~18_combout\))
-- \digit[3]~7COUT1_20\ = CARRY(((!\digit[2]~5COUT1_19\)) # (!\Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add4~18_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin0 => \digit[2]~5\,
	cin1 => \digit[2]~5COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(3),
	cout0 => \digit[3]~7\,
	cout1 => \digit[3]~7COUT1_20\);

-- Location: LC_X10_Y7_N3
\Add1~18\ : maxv_lcell
-- Equation(s):
-- \Add1~18_combout\ = (digit(3) $ ((\Add1~14\)))
-- \Add1~20\ = CARRY(((!\Add1~14\) # (!digit(3))))
-- \Add1~20COUT1_52\ = CARRY(((!\Add1~14COUT1_51\) # (!digit(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => digit(3),
	cin0 => \Add1~14\,
	cin1 => \Add1~14COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~18_combout\,
	cout0 => \Add1~20\,
	cout1 => \Add1~20COUT1_52\);

-- Location: LC_X6_Y7_N2
\Add1~23\ : maxv_lcell
-- Equation(s):
-- \Add1~23_combout\ = (\Equal5~0_combout\ & (!\Add0~0_combout\ & ((\Add1~18_combout\)))) # (!\Equal5~0_combout\ & (((digit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => digit(3),
	datac => \Add1~18_combout\,
	datad => \Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~23_combout\);

-- Location: LC_X5_Y5_N3
\Add4~13\ : maxv_lcell
-- Equation(s):
-- \Add4~13_combout\ = (\Add1~23_combout\ $ ((\Add4~9\)))
-- \Add4~15\ = CARRY(((!\Add4~9\) # (!\Add1~23_combout\)))
-- \Add4~15COUT1_52\ = CARRY(((!\Add4~9COUT1_51\) # (!\Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~23_combout\,
	cin0 => \Add4~9\,
	cin1 => \Add4~9COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~13_combout\,
	cout0 => \Add4~15\,
	cout1 => \Add4~15COUT1_52\);

-- Location: LC_X6_Y7_N5
\Add4~18\ : maxv_lcell
-- Equation(s):
-- \Add4~18_combout\ = (\Equal5~1_combout\ & (((\Add4~13_combout\ & !\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (\Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Add1~23_combout\,
	datac => \Add4~13_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~18_combout\);

-- Location: LC_X6_Y7_N8
\putdata~8\ : maxv_lcell
-- Equation(s):
-- \putdata~8_combout\ = (\write_data[3]~9_combout\ & (((\write_data[3]~16_combout\)))) # (!\write_data[3]~9_combout\ & ((\write_data[3]~16_combout\ & (\Add1~23_combout\)) # (!\write_data[3]~16_combout\ & ((digit(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~23_combout\,
	datab => \write_data[3]~9_combout\,
	datac => digit(3),
	datad => \write_data[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~8_combout\);

-- Location: LC_X5_Y7_N8
\putdata~9\ : maxv_lcell
-- Equation(s):
-- \putdata~9_combout\ = (\write_data[3]~9_combout\ & ((\putdata~8_combout\ & (\s6|ledcount\(3))) # (!\putdata~8_combout\ & ((\s6|reactcount\(3)))))) # (!\write_data[3]~9_combout\ & (\putdata~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[3]~9_combout\,
	datab => \putdata~8_combout\,
	datac => \s6|ledcount\(3),
	datad => \s6|reactcount\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~9_combout\);

-- Location: LC_X5_Y7_N9
\write_data[3]\ : maxv_lcell
-- Equation(s):
-- write_data(3) = DFFEAS((\putdata~3_combout\ & (((\putdata~9_combout\)))) # (!\putdata~3_combout\ & (\Add4~18_combout\)), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, \timeint~75\, , \oversig~regout\, \Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \putdata~3_combout\,
	datab => \Add4~18_combout\,
	datac => \timeint~75\,
	datad => \putdata~9_combout\,
	aclr => GND,
	sclr => \oversig~regout\,
	sload => \Equal5~5_combout\,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(3));

-- Location: LC_X11_Y6_N7
\s7|data_dis[3]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(3) = DFFEAS((((write_data(3) & !\erase~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	datac => write_data(3),
	datad => \erase~regout\,
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(3));

-- Location: LC_X11_Y6_N0
\s7|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \s7|Selector4~1_combout\ = (\s7|Selector8~1_combout\ & (\s7|WideOr1~0_combout\ & ((\s7|cmd_position\(2))))) # (!\s7|Selector8~1_combout\ & ((\s7|data_dis\(3)) # ((\s7|WideOr1~0_combout\ & \s7|cmd_position\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|Selector8~1_combout\,
	datab => \s7|WideOr1~0_combout\,
	datac => \s7|data_dis\(3),
	datad => \s7|cmd_position\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector4~1_combout\);

-- Location: LC_X14_Y5_N1
\s7|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector4~0_combout\ = (!\s7|count_cmd\(2) & (!\s7|Selector1~0_combout\ & ((!\s7|count_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s7|count_cmd\(2),
	datab => \s7|Selector1~0_combout\,
	datad => \s7|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector4~0_combout\);

-- Location: LC_X16_Y5_N8
\s7|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(3) = DFFEAS((\s7|Selector4~1_combout\) # ((\s7|Selector4~0_combout\) # ((\s7|lcd\(3) & \s7|Selector10~1_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \nreset~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|lcd\(3),
	datab => \s7|Selector4~1_combout\,
	datac => \s7|Selector10~1_combout\,
	datad => \s7|Selector4~0_combout\,
	aclr => GND,
	ena => \nreset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(3));

-- Location: LC_X10_Y7_N4
\Add1~24\ : maxv_lcell
-- Equation(s):
-- \Add1~24_combout\ = (digit(4) $ ((!\Add1~20\)))
-- \Add1~26\ = CARRY(((digit(4) & !\Add1~20COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => digit(4),
	cin0 => \Add1~20\,
	cin1 => \Add1~20COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~24_combout\,
	cout => \Add1~26\);

-- Location: LC_X7_Y7_N8
\Add1~29\ : maxv_lcell
-- Equation(s):
-- \Add1~29_combout\ = (\Equal5~0_combout\ & (((!\Add0~0_combout\ & \Add1~24_combout\)))) # (!\Equal5~0_combout\ & (digit(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(4),
	datab => \Add0~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~29_combout\);

-- Location: LC_X5_Y5_N4
\Add4~19\ : maxv_lcell
-- Equation(s):
-- \Add4~19_combout\ = (\Add1~29_combout\ $ ((!\Add4~15\)))
-- \Add4~21\ = CARRY(((\Add1~29_combout\ & !\Add4~15COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~29_combout\,
	cin0 => \Add4~15\,
	cin1 => \Add4~15COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~19_combout\,
	cout => \Add4~21\);

-- Location: LC_X5_Y7_N0
\Add4~24\ : maxv_lcell
-- Equation(s):
-- \Add4~24_combout\ = (\Equal5~1_combout\ & (\Add4~19_combout\ & ((!\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (((\Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~19_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add1~29_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~24_combout\);

-- Location: LC_X10_Y6_N4
\digit[4]\ : maxv_lcell
-- Equation(s):
-- digit(4) = DFFEAS((\Add4~24_combout\ $ ((!\digit[3]~7\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[4]~9\ = CARRY(((\Add4~24_combout\ & !\digit[3]~7COUT1_20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Add4~24_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin0 => \digit[3]~7\,
	cin1 => \digit[3]~7COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(4),
	cout => \digit[4]~9\);

-- Location: LC_X9_Y7_N6
\putdata~0\ : maxv_lcell
-- Equation(s):
-- \putdata~0_combout\ = (((\Equal5~1_combout\ & \Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~1_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~0_combout\);

-- Location: LC_X9_Y6_N6
\write_data[6]~14\ : maxv_lcell
-- Equation(s):
-- \write_data[6]~14_combout\ = (\Equal5~5_combout\) # ((\putdata~0_combout\ & ((!\Add6~0_combout\) # (!\Equal5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \putdata~0_combout\,
	datac => \Equal5~4_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[6]~14_combout\);

-- Location: LC_X10_Y6_N9
\write_data[6]~15\ : maxv_lcell
-- Equation(s):
-- \write_data[6]~15_combout\ = (!\write_data[6]~13_combout\ & ((\write_data[6]~14_combout\) # ((\Add0~0_combout\ & \Equal5~0_combout\))))

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
	dataa => \Add0~0_combout\,
	datab => \Equal5~0_combout\,
	datac => \write_data[6]~14_combout\,
	datad => \write_data[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \write_data[6]~15_combout\);

-- Location: LC_X5_Y7_N5
\putdata~10\ : maxv_lcell
-- Equation(s):
-- \putdata~10_combout\ = (\write_data[6]~13_combout\ & ((\write_data[6]~14_combout\ & ((!\timeint~78\))) # (!\write_data[6]~14_combout\ & (!\Add4~24_combout\)))) # (!\write_data[6]~13_combout\ & (((!\write_data[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07c7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \write_data[6]~13_combout\,
	datac => \write_data[6]~14_combout\,
	datad => \timeint~78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~10_combout\);

-- Location: LC_X5_Y7_N6
\putdata~11\ : maxv_lcell
-- Equation(s):
-- \putdata~11_combout\ = (\write_data[6]~15_combout\ & ((\putdata~10_combout\ & (!digit(4))) # (!\putdata~10_combout\ & ((!\Add1~29_combout\))))) # (!\write_data[6]~15_combout\ & (((\putdata~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(4),
	datab => \Add1~29_combout\,
	datac => \write_data[6]~15_combout\,
	datad => \putdata~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~11_combout\);

-- Location: LC_X5_Y7_N7
\write_data[4]\ : maxv_lcell
-- Equation(s):
-- write_data(4) = DFFEAS((((\oversig~regout\) # (\putdata~11_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \oversig~regout\,
	datad => \putdata~11_combout\,
	aclr => GND,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(4));

-- Location: LC_X10_Y5_N6
\s7|data_dis[4]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(4) = DFFEAS((!\erase~regout\ & (((write_data(4))))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \erase~regout\,
	datad => write_data(4),
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(4));

-- Location: LC_X10_Y5_N8
\s7|lcd[7]~3\ : maxv_lcell
-- Equation(s):
-- \s7|lcd[7]~3_combout\ = ((\s7|state.S8~regout\) # ((\s7|state.S7~regout\) # (\s7|state.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \s7|state.S8~regout\,
	datac => \s7|state.S7~regout\,
	datad => \s7|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|lcd[7]~3_combout\);

-- Location: LC_X15_Y5_N0
\s7|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \s7|Selector3~0_combout\ = (!\s7|count_cmd\(2) & (!\s7|lcd[7]~3_combout\ & (!\s7|count_cmd\(0) & !\s7|count_cmd\(1))))

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
	dataa => \s7|count_cmd\(2),
	datab => \s7|lcd[7]~3_combout\,
	datac => \s7|count_cmd\(0),
	datad => \s7|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s7|Selector3~0_combout\);

-- Location: LC_X15_Y5_N1
\s7|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(4) = DFFEAS((!\s7|WideOr1~0_combout\ & ((\s7|Selector3~0_combout\) # ((\s7|data_dis\(4) & \s7|lcd[7]~3_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|WideOr1~0_combout\,
	datab => \s7|data_dis\(4),
	datac => \s7|Selector3~0_combout\,
	datad => \s7|lcd[7]~3_combout\,
	aclr => GND,
	ena => \s7|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(4));

-- Location: LC_X10_Y6_N5
\digit[5]\ : maxv_lcell
-- Equation(s):
-- digit(5) = DFFEAS(\Add4~30_combout\ $ ((((\digit[4]~9\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[5]~11\ = CARRY(((!\digit[4]~9\)) # (!\Add4~30_combout\))
-- \digit[5]~11COUT1_21\ = CARRY(((!\digit[4]~9\)) # (!\Add4~30_combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \Add4~30_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin => \digit[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(5),
	cout0 => \digit[5]~11\,
	cout1 => \digit[5]~11COUT1_21\);

-- Location: LC_X10_Y7_N5
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = (digit(5) $ ((\Add1~26\)))
-- \Add1~32\ = CARRY(((!\Add1~26\) # (!digit(5))))
-- \Add1~32COUT1_53\ = CARRY(((!\Add1~26\) # (!digit(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => digit(5),
	cin => \Add1~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_53\);

-- Location: LC_X7_Y7_N1
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (\Equal5~0_combout\ & (((!\Add0~0_combout\ & \Add1~30_combout\)))) # (!\Equal5~0_combout\ & (digit(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(5),
	datab => \Add0~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\);

-- Location: LC_X5_Y5_N5
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = (\Add1~35_combout\ $ ((\Add4~21\)))
-- \Add4~27\ = CARRY(((!\Add4~21\) # (!\Add1~35_combout\)))
-- \Add4~27COUT1_53\ = CARRY(((!\Add4~21\) # (!\Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~35_combout\,
	cin => \Add4~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_53\);

-- Location: LC_X5_Y7_N3
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = (\Equal5~1_combout\ & (((\Add4~25_combout\ & !\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (\Add1~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~35_combout\,
	datab => \Equal5~1_combout\,
	datac => \Add4~25_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\);

-- Location: LC_X5_Y6_N5
\putdata~13\ : maxv_lcell
-- Equation(s):
-- \putdata~13_combout\ = (\write_data[6]~14_combout\ & (((!\write_data[6]~13_combout\)))) # (!\write_data[6]~14_combout\ & (\write_data[6]~13_combout\ & (\Add4~30_combout\ $ (\Add4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "06f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	datab => \Add4~24_combout\,
	datac => \write_data[6]~14_combout\,
	datad => \write_data[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~13_combout\);

-- Location: LC_X5_Y6_N6
\putdata~14\ : maxv_lcell
-- Equation(s):
-- \putdata~14_combout\ = (!\putdata~13_combout\ & ((\timeint~81\ $ (!\timeint~78\)) # (!\write_data[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[6]~14_combout\,
	datab => \timeint~81\,
	datac => \timeint~78\,
	datad => \putdata~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~14_combout\);

-- Location: LC_X5_Y6_N7
\putdata~15\ : maxv_lcell
-- Equation(s):
-- \putdata~15_combout\ = (\putdata~14_combout\ & (((digit(5))))) # (!\putdata~14_combout\ & (\Add1~35_combout\ $ (((\Add1~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~35_combout\,
	datab => digit(5),
	datac => \Add1~29_combout\,
	datad => \putdata~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~15_combout\);

-- Location: LC_X5_Y6_N8
\putdata~16\ : maxv_lcell
-- Equation(s):
-- \putdata~16_combout\ = (\write_data[6]~15_combout\ & (\putdata~15_combout\ $ (((!\putdata~14_combout\) # (!digit(4)))))) # (!\write_data[6]~15_combout\ & (((\putdata~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d07a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[6]~15_combout\,
	datab => digit(4),
	datac => \putdata~14_combout\,
	datad => \putdata~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~16_combout\);

-- Location: LC_X5_Y6_N9
\write_data[5]\ : maxv_lcell
-- Equation(s):
-- write_data(5) = DFFEAS(((\oversig~regout\) # ((\putdata~16_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \oversig~regout\,
	datad => \putdata~16_combout\,
	aclr => GND,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(5));

-- Location: LC_X10_Y5_N7
\s7|data_dis[5]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(5) = DFFEAS((((\erase~regout\) # (write_data(5)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datac => \erase~regout\,
	datad => write_data(5),
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(5));

-- Location: LC_X15_Y5_N9
\s7|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(5) = DFFEAS((!\s7|WideOr1~0_combout\ & ((\s7|Selector3~0_combout\) # ((\s7|data_dis\(5) & \s7|lcd[7]~3_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|WideOr1~0_combout\,
	datab => \s7|Selector3~0_combout\,
	datac => \s7|data_dis\(5),
	datad => \s7|lcd[7]~3_combout\,
	aclr => GND,
	ena => \s7|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(5));

-- Location: LC_X12_Y6_N5
\s7|cmd_position[6]\ : maxv_lcell
-- Equation(s):
-- \s7|cmd_position\(6) = DFFEAS((((!\erase~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \erase~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|cmd_position\(6));

-- Location: LC_X5_Y5_N6
\Add4~31\ : maxv_lcell
-- Equation(s):
-- \Add4~31_combout\ = (\Add1~41_combout\ $ ((!(!\Add4~21\ & \Add4~27\) # (\Add4~21\ & \Add4~27COUT1_53\))))
-- \Add4~33\ = CARRY(((\Add1~41_combout\ & !\Add4~27\)))
-- \Add4~33COUT1_54\ = CARRY(((\Add1~41_combout\ & !\Add4~27COUT1_53\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~41_combout\,
	cin => \Add4~21\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~31_combout\,
	cout0 => \Add4~33\,
	cout1 => \Add4~33COUT1_54\);

-- Location: LC_X5_Y7_N4
\Add4~36\ : maxv_lcell
-- Equation(s):
-- \Add4~36_combout\ = (\Equal5~1_combout\ & (!\Add3~0_combout\ & ((\Add4~31_combout\)))) # (!\Equal5~1_combout\ & (((\Add1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add1~41_combout\,
	datac => \Add4~31_combout\,
	datad => \Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~36_combout\);

-- Location: LC_X10_Y6_N6
\digit[6]\ : maxv_lcell
-- Equation(s):
-- digit(6) = DFFEAS((\Add4~36_combout\ $ ((!(!\digit[4]~9\ & \digit[5]~11\) # (\digit[4]~9\ & \digit[5]~11COUT1_21\)))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )
-- \digit[6]~13\ = CARRY(((\Add4~36_combout\ & !\digit[5]~11\)))
-- \digit[6]~13COUT1_22\ = CARRY(((\Add4~36_combout\ & !\digit[5]~11COUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datab => \Add4~36_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin => \digit[4]~9\,
	cin0 => \digit[5]~11\,
	cin1 => \digit[5]~11COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(6),
	cout0 => \digit[6]~13\,
	cout1 => \digit[6]~13COUT1_22\);

-- Location: LC_X10_Y7_N6
\Add1~36\ : maxv_lcell
-- Equation(s):
-- \Add1~36_combout\ = digit(6) $ ((((!(!\Add1~26\ & \Add1~32\) # (\Add1~26\ & \Add1~32COUT1_53\)))))
-- \Add1~38\ = CARRY((digit(6) & ((!\Add1~32\))))
-- \Add1~38COUT1_54\ = CARRY((digit(6) & ((!\Add1~32COUT1_53\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(6),
	cin => \Add1~26\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~36_combout\,
	cout0 => \Add1~38\,
	cout1 => \Add1~38COUT1_54\);

-- Location: LC_X7_Y7_N9
\Add1~41\ : maxv_lcell
-- Equation(s):
-- \Add1~41_combout\ = (\Equal5~0_combout\ & (((!\Add0~0_combout\ & \Add1~36_combout\)))) # (!\Equal5~0_combout\ & (digit(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(6),
	datab => \Add0~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~41_combout\);

-- Location: LC_X5_Y5_N8
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (\Add1~41_combout\ $ (((\Add1~35_combout\) # (\Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add1~35_combout\,
	datac => \Add1~41_combout\,
	datad => \Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: LC_X7_Y7_N2
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = digit(6) $ ((((digit(5)) # (digit(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(6),
	datac => digit(5),
	datad => digit(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X5_Y7_N2
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = \Add4~36_combout\ $ ((((\Add4~24_combout\) # (\Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~36_combout\,
	datac => \Add4~24_combout\,
	datad => \Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\);

-- Location: LC_X5_Y6_N1
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = (\timeint~84\ $ (((\timeint~81\) # (\timeint~78\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeint~81\,
	datac => \timeint~78\,
	datad => \timeint~84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\);

-- Location: LC_X5_Y6_N2
\putdata~18\ : maxv_lcell
-- Equation(s):
-- \putdata~18_combout\ = (\write_data[6]~13_combout\ & ((\write_data[6]~14_combout\ & ((\Add9~0_combout\))) # (!\write_data[6]~14_combout\ & (\Add8~0_combout\)))) # (!\write_data[6]~13_combout\ & (((\write_data[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \write_data[6]~13_combout\,
	datac => \write_data[6]~14_combout\,
	datad => \Add9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~18_combout\);

-- Location: LC_X5_Y6_N3
\putdata~19\ : maxv_lcell
-- Equation(s):
-- \putdata~19_combout\ = (\write_data[6]~15_combout\ & ((\putdata~18_combout\ & (\Add5~0_combout\)) # (!\putdata~18_combout\ & ((\Add2~0_combout\))))) # (!\write_data[6]~15_combout\ & (((\putdata~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add2~0_combout\,
	datac => \write_data[6]~15_combout\,
	datad => \putdata~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~19_combout\);

-- Location: LC_X5_Y6_N4
\write_data[6]\ : maxv_lcell
-- Equation(s):
-- write_data(6) = DFFEAS(((!\oversig~regout\ & ((\putdata~19_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, , , , )

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
	clk => \s1|outclk~regout\,
	datab => \oversig~regout\,
	datad => \putdata~19_combout\,
	aclr => GND,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(6));

-- Location: LC_X11_Y6_N9
\s7|data_dis[6]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(6) = DFFEAS((((write_data(6) & !\erase~regout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	datac => write_data(6),
	datad => \erase~regout\,
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(6));

-- Location: LC_X12_Y6_N6
\s7|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(6) = DFFEAS((\s7|WideOr1~0_combout\ & (\s7|cmd_position\(6))) # (!\s7|WideOr1~0_combout\ & (((\s7|Selector1~0_combout\ & \s7|data_dis\(6))))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|cmd_position\(6),
	datab => \s7|Selector1~0_combout\,
	datac => \s7|data_dis\(6),
	datad => \s7|WideOr1~0_combout\,
	aclr => GND,
	ena => \s7|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(6));

-- Location: LC_X10_Y7_N7
\Add1~42\ : maxv_lcell
-- Equation(s):
-- \Add1~42_combout\ = (((!\Add1~26\ & \Add1~38\) # (\Add1~26\ & \Add1~38COUT1_54\) $ (digit(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => digit(7),
	cin => \Add1~26\,
	cin0 => \Add1~38\,
	cin1 => \Add1~38COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~42_combout\);

-- Location: LC_X10_Y7_N9
\Add1~47\ : maxv_lcell
-- Equation(s):
-- \Add1~47_combout\ = (\Equal5~0_combout\ & (!\Add0~0_combout\ & (\Add1~42_combout\))) # (!\Equal5~0_combout\ & (((digit(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal5~0_combout\,
	datac => \Add1~42_combout\,
	datad => digit(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~47_combout\);

-- Location: LC_X5_Y5_N7
\Add4~37\ : maxv_lcell
-- Equation(s):
-- \Add4~37_combout\ = (((!\Add4~21\ & \Add4~33\) # (\Add4~21\ & \Add4~33COUT1_54\) $ (\Add1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add1~47_combout\,
	cin => \Add4~21\,
	cin0 => \Add4~33\,
	cin1 => \Add4~33COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~37_combout\);

-- Location: LC_X4_Y6_N8
\Add4~42\ : maxv_lcell
-- Equation(s):
-- \Add4~42_combout\ = (\Equal5~1_combout\ & (\Add4~37_combout\ & ((!\Add3~0_combout\)))) # (!\Equal5~1_combout\ & (((\Add1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~37_combout\,
	datab => \Add1~47_combout\,
	datac => \Equal5~1_combout\,
	datad => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~42_combout\);

-- Location: LC_X10_Y6_N7
\digit[7]\ : maxv_lcell
-- Equation(s):
-- digit(7) = DFFEAS((((!\digit[4]~9\ & \digit[6]~13\) # (\digit[4]~9\ & \digit[6]~13COUT1_22\) $ (\Add4~42_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|ack~regout\, , , \write_data[6]~13_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	datad => \Add4~42_combout\,
	aclr => GND,
	sclr => \write_data[6]~13_combout\,
	ena => \s7|ack~regout\,
	cin => \digit[4]~9\,
	cin0 => \digit[6]~13\,
	cin1 => \digit[6]~13COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => digit(7));

-- Location: LC_X10_Y7_N8
\Add2~1\ : maxv_lcell
-- Equation(s):
-- \Add2~1_combout\ = digit(7) $ (((digit(6) & ((digit(4)) # (digit(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1fe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => digit(4),
	datab => digit(5),
	datac => digit(6),
	datad => digit(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~1_combout\);

-- Location: LC_X5_Y5_N9
\Add5~1\ : maxv_lcell
-- Equation(s):
-- \Add5~1_combout\ = \Add1~47_combout\ $ (((\Add1~41_combout\ & ((\Add1~29_combout\) # (\Add1~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~47_combout\,
	datab => \Add1~29_combout\,
	datac => \Add1~41_combout\,
	datad => \Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~1_combout\);

-- Location: LC_X4_Y6_N0
\Add8~1\ : maxv_lcell
-- Equation(s):
-- \Add8~1_combout\ = \Add4~42_combout\ $ (((\Add4~36_combout\ & ((\Add4~30_combout\) # (\Add4~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "56aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~42_combout\,
	datab => \Add4~30_combout\,
	datac => \Add4~24_combout\,
	datad => \Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~1_combout\);

-- Location: LC_X4_Y6_N3
\Add9~1\ : maxv_lcell
-- Equation(s):
-- \Add9~1_combout\ = \timeint~87\ $ (((\timeint~84\ & ((\timeint~81\) # (\timeint~78\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeint~81\,
	datab => \timeint~84\,
	datac => \timeint~87\,
	datad => \timeint~78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~1_combout\);

-- Location: LC_X4_Y6_N4
\putdata~21\ : maxv_lcell
-- Equation(s):
-- \putdata~21_combout\ = (\write_data[6]~14_combout\ & (((\Add9~1_combout\)) # (!\write_data[6]~13_combout\))) # (!\write_data[6]~14_combout\ & (\write_data[6]~13_combout\ & (\Add8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \write_data[6]~14_combout\,
	datab => \write_data[6]~13_combout\,
	datac => \Add8~1_combout\,
	datad => \Add9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~21_combout\);

-- Location: LC_X4_Y6_N5
\putdata~22\ : maxv_lcell
-- Equation(s):
-- \putdata~22_combout\ = (\write_data[6]~15_combout\ & ((\putdata~21_combout\ & ((\Add5~1_combout\))) # (!\putdata~21_combout\ & (\Add2~1_combout\)))) # (!\write_data[6]~15_combout\ & (((\putdata~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \write_data[6]~15_combout\,
	datac => \Add5~1_combout\,
	datad => \putdata~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \putdata~22_combout\);

-- Location: LC_X4_Y6_N6
\write_data[7]\ : maxv_lcell
-- Equation(s):
-- write_data(7) = DFFEAS(((!\oversig~regout\ & ((\putdata~22_combout\)))), GLOBAL(\s1|outclk~regout\), VCC, , \write_data[0]~12_combout\, , , , )

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
	clk => \s1|outclk~regout\,
	datab => \oversig~regout\,
	datad => \putdata~22_combout\,
	aclr => GND,
	ena => \write_data[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_data(7));

-- Location: LC_X10_Y5_N3
\s7|data_dis[7]\ : maxv_lcell
-- Equation(s):
-- \s7|data_dis\(7) = DFFEAS((!\erase~regout\ & (((write_data(7))))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|state~29\, , , , )

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
	clk => \s1|outclk~regout\,
	dataa => \erase~regout\,
	datad => write_data(7),
	aclr => GND,
	ena => \s7|state~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|data_dis\(7));

-- Location: LC_X15_Y5_N8
\s7|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \s7|lcd\(7) = DFFEAS((\s7|WideOr1~0_combout\) # ((\s7|lcd[7]~3_combout\ & ((\s7|data_dis\(7)))) # (!\s7|lcd[7]~3_combout\ & (\s7|Add0~0_combout\))), GLOBAL(\s1|outclk~regout\), VCC, , \s7|lcd[1]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \s1|outclk~regout\,
	dataa => \s7|WideOr1~0_combout\,
	datab => \s7|Add0~0_combout\,
	datac => \s7|data_dis\(7),
	datad => \s7|lcd[7]~3_combout\,
	aclr => GND,
	ena => \s7|lcd[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s7|lcd\(7));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED~0\,
	oe => VCC,
	padio => ww_LED);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd_rs~regout\,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd_en~regout\,
	oe => VCC,
	padio => ww_en);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(0),
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(1),
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(2),
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(3),
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(4),
	oe => VCC,
	padio => ww_data(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(5),
	oe => VCC,
	padio => ww_data(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(6),
	oe => VCC,
	padio => ww_data(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \s7|lcd\(7),
	oe => VCC,
	padio => ww_data(7));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_b11);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\b12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_b12);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\gameover~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oversig~regout\,
	oe => VCC,
	padio => ww_gameover);
END structure;


