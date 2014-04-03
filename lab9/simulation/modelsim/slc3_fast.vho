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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/03/2014 01:34:33"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	datapath IS
    PORT (
	CE : OUT std_logic;
	clk : IN std_logic;
	Reset : IN std_logic;
	Run : IN std_logic;
	Continue : IN std_logic;
	Data : INOUT std_logic_vector(15 DOWNTO 0);
	Switches : IN std_logic_vector(15 DOWNTO 0);
	UB : OUT std_logic;
	LB : OUT std_logic;
	OE : OUT std_logic;
	WE : OUT std_logic;
	ADDR : OUT std_logic_vector(17 DOWNTO 0);
	Hex0 : OUT std_logic_vector(6 DOWNTO 0);
	Hex1 : OUT std_logic_vector(6 DOWNTO 0);
	Hex2 : OUT std_logic_vector(6 DOWNTO 0);
	Hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END datapath;

-- Design Ports Information
-- Data[15]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[14]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[13]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[12]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[11]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[10]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[9]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[8]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[7]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[0]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CE	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Continue	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UB	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LB	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OE	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WE	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[17]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[16]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[14]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[12]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[11]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[10]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[9]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[8]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[7]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[6]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[5]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[4]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[3]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[2]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ADDR[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switches[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Run	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_Continue : std_logic;
SIGNAL ww_Switches : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_UB : std_logic;
SIGNAL ww_LB : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Control|WideOr21~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Control|WideOr0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \SR2Mux|Selector1~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector2~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][15]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][14]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][14]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][14]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][14]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux17~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux17~4_combout\ : std_logic;
SIGNAL \inst1|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][13]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][13]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][13]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux18~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux18~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux19~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux19~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux19~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux20~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux20~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux20~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][10]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][10]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][10]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][10]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux21~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][10]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][10]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][10]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux21~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][10]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux21~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux21~4_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][9]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][9]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux22~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][9]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][9]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][9]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux22~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][9]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux22~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux22~4_combout\ : std_logic;
SIGNAL \inst1|inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][8]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][8]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux23~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux23~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux23~4_combout\ : std_logic;
SIGNAL \inst1|inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux24~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][6]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux25~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux25~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux25~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux26~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux26~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux26~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux26~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux27~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux27~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux27~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux27~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][3]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux12~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux12~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux12~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][2]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[2][2]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux13~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][1]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux30~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux30~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][0]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[2][0]~regout\ : std_logic;
SIGNAL \Control|Selector21~0_combout\ : std_logic;
SIGNAL \Control|Mux0~0_combout\ : std_logic;
SIGNAL \Control|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][14]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][14]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][12]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][10]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][10]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][9]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][0]~feeder_combout\ : std_logic;
SIGNAL \Data~0\ : std_logic;
SIGNAL \Data~1\ : std_logic;
SIGNAL \Data~2\ : std_logic;
SIGNAL \Data~3\ : std_logic;
SIGNAL \Data~4\ : std_logic;
SIGNAL \Data~5\ : std_logic;
SIGNAL \Data~6\ : std_logic;
SIGNAL \Data~7\ : std_logic;
SIGNAL \Data~8\ : std_logic;
SIGNAL \Data~9\ : std_logic;
SIGNAL \Data~10\ : std_logic;
SIGNAL \Data~11\ : std_logic;
SIGNAL \Data~12\ : std_logic;
SIGNAL \Data~13\ : std_logic;
SIGNAL \Data~14\ : std_logic;
SIGNAL \Data~15\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[1]~1_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Control|Next_state.and0_456~combout\ : std_logic;
SIGNAL \Control|State.and0~regout\ : std_logic;
SIGNAL \Control|Next_state.STR0_392~combout\ : std_logic;
SIGNAL \Control|State.STR0~regout\ : std_logic;
SIGNAL \Control|Next_state.STR1_384~combout\ : std_logic;
SIGNAL \Control|State.STR1~regout\ : std_logic;
SIGNAL \Control|Next_state.STR2_376~combout\ : std_logic;
SIGNAL \Control|State.STR2~regout\ : std_logic;
SIGNAL \Control|Next_state.STR3_368~combout\ : std_logic;
SIGNAL \Control|State.STR3~regout\ : std_logic;
SIGNAL \Control|Next_state.LoadMDR_496~combout\ : std_logic;
SIGNAL \Control|State.LoadMDR~regout\ : std_logic;
SIGNAL \Control|Next_state.LoadMDR_2_488~combout\ : std_logic;
SIGNAL \Control|State.LoadMDR_2~regout\ : std_logic;
SIGNAL \inst2|Data_CPU[13]~2_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[13]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[13]~regout\ : std_logic;
SIGNAL \Control|WideOr20~combout\ : std_logic;
SIGNAL \MDR|regOp:ram[13]~regout\ : std_logic;
SIGNAL \Control|Next_state.LDR3_400~combout\ : std_logic;
SIGNAL \Control|State.LDR3~regout\ : std_logic;
SIGNAL \Control|GateMDR~combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~8_combout\ : std_logic;
SIGNAL \Control|Next_state.LoadIR_480~combout\ : std_logic;
SIGNAL \Control|State.LoadIR~regout\ : std_logic;
SIGNAL \Control|Next_state.Decode_472~combout\ : std_logic;
SIGNAL \Control|State.Decode~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~4_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[14]~1_combout\ : std_logic;
SIGNAL \Control|WideOr21~combout\ : std_logic;
SIGNAL \Control|WideOr21~clkctrl_outclk\ : std_logic;
SIGNAL \Control|ALUK~1_combout\ : std_logic;
SIGNAL \Control|ALUK~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[15]~2_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[11]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[11]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[11]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~12_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[9]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[9]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[9]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~16_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[6]~9_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][6]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[7]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[7]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[7]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~20_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~7_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~5_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[7]~20_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[4]~11_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[5]~10_combout\ : std_logic;
SIGNAL \SR2Mux|Selector10~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[5]~26_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~6_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][5]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux10~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux10~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][5]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][5]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux10~4_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[3]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~28_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[3]~12_combout\ : std_logic;
SIGNAL \inst3|dataOut[3]~32_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[2]~13_combout\ : std_logic;
SIGNAL \inst3|dataOut[2]~35_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][2]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][2]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][2]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux13~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux13~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux13~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[2]~36_combout\ : std_logic;
SIGNAL \inst3|dataOut[2]~37_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~31_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][2]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[5][2]~regout\ : std_logic;
SIGNAL \inst2|Data_CPU[1]~14_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[1]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~32_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][1]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][1]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][1]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][1]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][1]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][1]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux14~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux14~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux14~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~38_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~39_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~40_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~33_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][2]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[0]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[0]~0_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[0]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~34_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[0]~15_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][0]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][0]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux31~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][0]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux31~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][0]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux31~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux31~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][0]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux15~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux15~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][0]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux15~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[0]~41_combout\ : std_logic;
SIGNAL \inst3|dataOut[0]~42_combout\ : std_logic;
SIGNAL \inst3|dataOut[0]~43_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~35_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux29~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector13~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][1]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][1]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux30~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux30~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector14~0_combout\ : std_logic;
SIGNAL \ALU|Add0~1\ : std_logic;
SIGNAL \ALU|Add0~3\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \inst3|dataOut[3]~33_combout\ : std_logic;
SIGNAL \inst3|dataOut[3]~34_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~29_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][3]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[2][3]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][3]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][3]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux28~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux28~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][3]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][3]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][3]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux28~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux28~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector12~0_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \inst3|dataOut[5]~27_combout\ : std_logic;
SIGNAL \inst3|dataOut[5]~28_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~25_combout\ : std_logic;
SIGNAL \Control|SR2MUX~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][4]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][4]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux11~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux11~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][4]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][4]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux11~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[4]~29_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \inst3|dataOut[4]~30_combout\ : std_logic;
SIGNAL \inst3|dataOut[4]~31_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~27_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][7]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[6][7]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux24~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector8~0_combout\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \inst3|dataOut[7]~21_combout\ : std_logic;
SIGNAL \inst3|dataOut[7]~22_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~21_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][6]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][6]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][6]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][6]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[3][6]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][6]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][6]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux9~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux9~4_combout\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \inst3|dataOut[6]~24_combout\ : std_logic;
SIGNAL \SR2Mux|Selector9~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[6]~23_combout\ : std_logic;
SIGNAL \inst3|dataOut[6]~25_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~23_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][9]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][9]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[9]~14_combout\ : std_logic;
SIGNAL \SR2Mux|Selector6~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector7~0_combout\ : std_logic;
SIGNAL \ALU|Add0~15\ : std_logic;
SIGNAL \ALU|Add0~17\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \inst3|dataOut[9]~15_combout\ : std_logic;
SIGNAL \inst3|dataOut[9]~16_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~17_combout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][15]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][15]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][15]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][15]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][15]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[5][15]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][15]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|inst|Mux16~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux16~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][15]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][15]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][15]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][15]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux16~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][13]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[4][13]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][13]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][13]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][13]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[1][13]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|inst|ram[0][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|inst|ram[3][12]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[2][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[5][12]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][12]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux3~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector5~0_combout\ : std_logic;
SIGNAL \ALU|Add0~19\ : std_logic;
SIGNAL \ALU|Add0~21\ : std_logic;
SIGNAL \ALU|Add0~23\ : std_logic;
SIGNAL \ALU|Add0~25\ : std_logic;
SIGNAL \ALU|Add0~27\ : std_logic;
SIGNAL \ALU|Add0~29\ : std_logic;
SIGNAL \ALU|Add0~30_combout\ : std_logic;
SIGNAL \inst3|dataOut[15]~1_combout\ : std_logic;
SIGNAL \inst3|dataOut[15]~3_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[15]~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~5_combout\ : std_logic;
SIGNAL \Control|Selector19~0_combout\ : std_logic;
SIGNAL \Control|Selector22~0_combout\ : std_logic;
SIGNAL \Control|Next_state.add0_464~combout\ : std_logic;
SIGNAL \Control|State.add0~regout\ : std_logic;
SIGNAL \Control|WideOr23~combout\ : std_logic;
SIGNAL \inst1|inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[6][11]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[4][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][11]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][11]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux4~4_combout\ : std_logic;
SIGNAL \ALU|Add0~22_combout\ : std_logic;
SIGNAL \SR2Mux|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[11]~10_combout\ : std_logic;
SIGNAL \inst3|dataOut[11]~11_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~13_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[8]~7_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][8]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[3][8]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][8]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[1][8]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][8]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[5][8]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[8]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~16_combout\ : std_logic;
SIGNAL \inst3|dataOut[8]~18_combout\ : std_logic;
SIGNAL \inst3|dataOut[8]~19_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~19_combout\ : std_logic;
SIGNAL \inst1|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|inst|ram[7][14]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[5][14]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][14]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|ram[2][14]~regout\ : std_logic;
SIGNAL \inst1|inst|ram[0][14]~regout\ : std_logic;
SIGNAL \inst1|inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|inst|Mux1~4_combout\ : std_logic;
SIGNAL \ALU|Add0~28_combout\ : std_logic;
SIGNAL \inst3|dataOut[14]~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[14]~5_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~7_combout\ : std_logic;
SIGNAL \Control|Selector20~0_combout\ : std_logic;
SIGNAL \Control|Selector20~1_combout\ : std_logic;
SIGNAL \Control|Next_state.not0_448~combout\ : std_logic;
SIGNAL \Control|State.not0~regout\ : std_logic;
SIGNAL \Control|WideOr21~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[15]~0_combout\ : std_logic;
SIGNAL \ALU|Add0~26_combout\ : std_logic;
SIGNAL \inst3|dataOut[13]~6_combout\ : std_logic;
SIGNAL \inst3|dataOut[13]~7_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~9_combout\ : std_logic;
SIGNAL \Control|Selector1~0_combout\ : std_logic;
SIGNAL \Control|Selector1~1_combout\ : std_logic;
SIGNAL \Control|Next_state.LDR0_424~combout\ : std_logic;
SIGNAL \Control|State.LDR0~regout\ : std_logic;
SIGNAL \Control|Next_state.LDR1_416~combout\ : std_logic;
SIGNAL \Control|State.LDR1~feeder_combout\ : std_logic;
SIGNAL \Control|State.LDR1~regout\ : std_logic;
SIGNAL \Control|Next_state.LDR2_408~combout\ : std_logic;
SIGNAL \Control|State.LDR2~feeder_combout\ : std_logic;
SIGNAL \Control|State.LDR2~regout\ : std_logic;
SIGNAL \Control|WideOr19~0_combout\ : std_logic;
SIGNAL \inst2|Mem_Read~0_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[10]~5_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[10]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~14_combout\ : std_logic;
SIGNAL \ALU|Add0~20_combout\ : std_logic;
SIGNAL \inst3|dataOut[10]~12_combout\ : std_logic;
SIGNAL \inst3|dataOut[10]~13_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~15_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[10]~feeder_combout\ : std_logic;
SIGNAL \Control|WideOr18~0_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[10]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[8]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[11]~regout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[5]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[5]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[6]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[7]~regout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[14]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[14]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[13]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[15]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[15]~regout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[12]~3_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[12]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~10_combout\ : std_logic;
SIGNAL \ALU|Add0~24_combout\ : std_logic;
SIGNAL \SR2Mux|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[12]~8_combout\ : std_logic;
SIGNAL \inst3|dataOut[12]~9_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~11_combout\ : std_logic;
SIGNAL \Control|Selector19~1_combout\ : std_logic;
SIGNAL \Control|Next_state.BR0_440~combout\ : std_logic;
SIGNAL \Control|State.BR0~regout\ : std_logic;
SIGNAL \Control|WideOr0~0_combout\ : std_logic;
SIGNAL \Control|WideOr0~0clkctrl_outclk\ : std_logic;
SIGNAL \Run~combout\ : std_logic;
SIGNAL \Control|Selector37~0_combout\ : std_logic;
SIGNAL \Control|Next_state.Halted_528~combout\ : std_logic;
SIGNAL \Control|State.Halted~0_combout\ : std_logic;
SIGNAL \Control|State.Halted~regout\ : std_logic;
SIGNAL \Control|Selector31~0_combout\ : std_logic;
SIGNAL \Control|Selector31~1_combout\ : std_logic;
SIGNAL \Control|Selector31~2_combout\ : std_logic;
SIGNAL \Control|Next_state.PCtoMAR_504~combout\ : std_logic;
SIGNAL \Control|State.PCtoMAR~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[1]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[1]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[2]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[2]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[2]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[3]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[3]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[3]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[4]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[5]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[5]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[5]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[6]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[7]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[8]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[8]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[8]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[9]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[10]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[10]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[10]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[11]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[12]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[12]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[12]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[13]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[14]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[14]~regout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[14]~2\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[15]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[15]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[15]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~2_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~36_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~52_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[14]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~6_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~37_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~38_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~39_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[11]~4_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~40_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~41_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[9]~6_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~42_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[8]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~18_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~43_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[7]~8_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~44_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[6]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[6]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[6]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~22_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~45_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[5]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~24_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~46_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[4]~1_combout\ : std_logic;
SIGNAL \inst|PCreg|regOp:ram[4]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[4]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~26_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~47_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~48_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[2]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~30_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~49_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~50_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~51_combout\ : std_logic;
SIGNAL \Control|Mem_WE~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|regOp:ram[12]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[9]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[9]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[4]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[3]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[3]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[2]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[1]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[1]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[0]~regout\ : std_logic;
SIGNAL \inst2|Hex_Write~2_combout\ : std_logic;
SIGNAL \inst2|hex_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|hex_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|hex_data[4]~feeder_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|hex_data[8]~feeder_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst10|Mux1~0_combout\ : std_logic;
SIGNAL \inst10|Mux2~0_combout\ : std_logic;
SIGNAL \inst10|Mux3~0_combout\ : std_logic;
SIGNAL \inst10|Mux4~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|hex_data[13]~feeder_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \Control|ALUK\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \instruction_register|internal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|inst|SR1out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|hex_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Switches~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|inst|SR2out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_Mem_WE~0_combout\ : std_logic;
SIGNAL \Control|ALT_INV_WideOr19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset~combout\ : std_logic;

BEGIN

CE <= ww_CE;
ww_clk <= clk;
ww_Reset <= Reset;
ww_Run <= Run;
ww_Continue <= Continue;
ww_Switches <= Switches;
UB <= ww_UB;
LB <= ww_LB;
OE <= ww_OE;
WE <= ww_WE;
ADDR <= ww_ADDR;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Control|WideOr21~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|WideOr21~combout\);

\Control|WideOr0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|WideOr0~0_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst11|ALT_INV_Mux0~0_combout\ <= NOT \inst11|Mux0~0_combout\;
\inst10|ALT_INV_Mux0~0_combout\ <= NOT \inst10|Mux0~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst8|ALT_INV_Mux0~0_combout\ <= NOT \inst8|Mux0~0_combout\;
\Control|ALT_INV_Mem_WE~0_combout\ <= NOT \Control|Mem_WE~0_combout\;
\Control|ALT_INV_WideOr19~0_combout\ <= NOT \Control|WideOr19~0_combout\;
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;

-- Location: LCCOMB_X34_Y6_N0
\ALU|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = (\inst1|inst|SR1out\(0) & (\SR2Mux|Selector15~0_combout\ $ (VCC))) # (!\inst1|inst|SR1out\(0) & (\SR2Mux|Selector15~0_combout\ & VCC))
-- \ALU|Add0~1\ = CARRY((\inst1|inst|SR1out\(0) & \SR2Mux|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(0),
	datab => \SR2Mux|Selector15~0_combout\,
	datad => VCC,
	combout => \ALU|Add0~0_combout\,
	cout => \ALU|Add0~1\);

-- Location: LCCOMB_X34_Y6_N2
\ALU|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\inst1|inst|SR1out\(1) & ((\SR2Mux|Selector14~0_combout\ & (\ALU|Add0~1\ & VCC)) # (!\SR2Mux|Selector14~0_combout\ & (!\ALU|Add0~1\)))) # (!\inst1|inst|SR1out\(1) & ((\SR2Mux|Selector14~0_combout\ & (!\ALU|Add0~1\)) # 
-- (!\SR2Mux|Selector14~0_combout\ & ((\ALU|Add0~1\) # (GND)))))
-- \ALU|Add0~3\ = CARRY((\inst1|inst|SR1out\(1) & (!\SR2Mux|Selector14~0_combout\ & !\ALU|Add0~1\)) # (!\inst1|inst|SR1out\(1) & ((!\ALU|Add0~1\) # (!\SR2Mux|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(1),
	datab => \SR2Mux|Selector14~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~1\,
	combout => \ALU|Add0~2_combout\,
	cout => \ALU|Add0~3\);

-- Location: LCCOMB_X34_Y6_N4
\ALU|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = ((\inst1|inst|SR1out\(2) $ (\SR2Mux|Selector13~0_combout\ $ (!\ALU|Add0~3\)))) # (GND)
-- \ALU|Add0~5\ = CARRY((\inst1|inst|SR1out\(2) & ((\SR2Mux|Selector13~0_combout\) # (!\ALU|Add0~3\))) # (!\inst1|inst|SR1out\(2) & (\SR2Mux|Selector13~0_combout\ & !\ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(2),
	datab => \SR2Mux|Selector13~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~3\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: LCCOMB_X32_Y3_N6
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst12|regOp:ram[2]~regout\ & (\inst12|regOp:ram[1]~regout\ & (\inst12|regOp:ram[0]~regout\ & \inst12|regOp:ram[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[2]~regout\,
	datab => \inst12|regOp:ram[1]~regout\,
	datac => \inst12|regOp:ram[0]~regout\,
	datad => \inst12|regOp:ram[3]~regout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LCFF_X33_Y7_N17
\inst1|inst|SR2out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(14));

-- Location: LCCOMB_X36_Y6_N28
\SR2Mux|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector1~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(14))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(14),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector1~0_combout\);

-- Location: LCFF_X31_Y6_N9
\inst1|inst|SR2out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(13));

-- Location: LCCOMB_X35_Y6_N6
\SR2Mux|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector2~0_combout\ = (\Control|SR2MUX~0_combout\ & ((\inst1|inst|SR2out\(13)))) # (!\Control|SR2MUX~0_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|SR2MUX~0_combout\,
	datab => \instruction_register|internal\(4),
	datad => \inst1|inst|SR2out\(13),
	combout => \SR2Mux|Selector2~0_combout\);

-- Location: LCFF_X31_Y6_N31
\inst1|inst|SR2out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(12));

-- Location: LCFF_X31_Y6_N23
\inst1|inst|SR2out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(11));

-- Location: LCFF_X31_Y6_N11
\inst1|inst|SR2out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(10));

-- Location: LCFF_X31_Y6_N25
\inst1|inst|SR1out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(10));

-- Location: LCFF_X31_Y6_N15
\inst1|inst|SR2out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(9));

-- Location: LCFF_X35_Y6_N7
\inst1|inst|SR2out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux23~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(8));

-- Location: LCFF_X35_Y6_N11
\inst1|inst|SR2out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux25~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(6));

-- Location: LCFF_X34_Y3_N13
\inst1|inst|SR2out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(5));

-- Location: LCFF_X34_Y6_N13
\inst1|inst|SR2out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux27~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(4));

-- Location: LCFF_X34_Y3_N31
\inst1|inst|SR1out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(3));

-- Location: LCCOMB_X37_Y6_N6
\GateMDR|dataOut[15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~3_combout\ = (\Control|State.LoadIR~regout\) # ((\Control|State.PCtoMAR~regout\) # (\Control|State.LDR3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.LoadIR~regout\,
	datac => \Control|State.PCtoMAR~regout\,
	datad => \Control|State.LDR3~regout\,
	combout => \GateMDR|dataOut[15]~3_combout\);

-- Location: LCFF_X35_Y5_N13
\inst1|inst|ram[3][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][15]~regout\);

-- Location: LCCOMB_X32_Y5_N6
\inst1|inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][15]~regout\))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|ram[4][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][15]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[6][15]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux0~0_combout\);

-- Location: LCFF_X32_Y5_N13
\inst1|inst|ram[6][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][14]~regout\);

-- Location: LCFF_X32_Y5_N27
\inst1|inst|ram[4][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][14]~regout\);

-- Location: LCCOMB_X32_Y5_N12
\inst1|inst|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][14]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[4][14]~regout\,
	datac => \inst1|inst|ram[6][14]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux17~0_combout\);

-- Location: LCCOMB_X33_Y3_N10
\inst1|inst|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~1_combout\ = (\inst1|inst|Mux17~0_combout\ & (((\inst1|inst|ram[7][14]~regout\) # (!\instruction_register|internal\(0))))) # (!\inst1|inst|Mux17~0_combout\ & (\inst1|inst|ram[5][14]~regout\ & ((\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux17~0_combout\,
	datab => \inst1|inst|ram[5][14]~regout\,
	datac => \inst1|inst|ram[7][14]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux17~1_combout\);

-- Location: LCFF_X32_Y4_N11
\inst1|inst|ram[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][14]~regout\);

-- Location: LCCOMB_X32_Y4_N28
\inst1|inst|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][14]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][14]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[0][14]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux17~2_combout\);

-- Location: LCFF_X34_Y7_N5
\inst1|inst|ram[3][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[3][14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][14]~regout\);

-- Location: LCCOMB_X33_Y7_N0
\inst1|inst|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~3_combout\ = (\inst1|inst|Mux17~2_combout\ & (((\inst1|inst|ram[3][14]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst1|inst|Mux17~2_combout\ & (\instruction_register|internal\(1) & (\inst1|inst|ram[2][14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux17~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[2][14]~regout\,
	datad => \inst1|inst|ram[3][14]~regout\,
	combout => \inst1|inst|Mux17~3_combout\);

-- Location: LCCOMB_X33_Y7_N16
\inst1|inst|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux17~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux17~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst1|inst|Mux17~1_combout\,
	datad => \inst1|inst|Mux17~3_combout\,
	combout => \inst1|inst|Mux17~4_combout\);

-- Location: LCCOMB_X32_Y5_N26
\inst1|inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[6][14]~regout\)) # (!\inst1|inst4|Mux1~0_combout\ & 
-- ((\inst1|inst|ram[4][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][14]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[4][14]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux1~0_combout\);

-- Location: LCFF_X33_Y3_N29
\inst1|inst|ram[5][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[13]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][13]~regout\);

-- Location: LCFF_X32_Y5_N29
\inst1|inst|ram[6][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[6][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][13]~regout\);

-- Location: LCCOMB_X31_Y3_N2
\inst1|inst|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst1|inst|ram[6][13]~regout\)) # 
-- (!\instruction_register|internal\(1) & ((\inst1|inst|ram[4][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][13]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \instruction_register|internal\(1),
	datad => \inst1|inst|ram[4][13]~regout\,
	combout => \inst1|inst|Mux18~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\inst1|inst|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~1_combout\ = (\inst1|inst|Mux18~0_combout\ & ((\inst1|inst|ram[7][13]~regout\) # ((!\instruction_register|internal\(0))))) # (!\inst1|inst|Mux18~0_combout\ & (((\inst1|inst|ram[5][13]~regout\ & \instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][13]~regout\,
	datab => \inst1|inst|Mux18~0_combout\,
	datac => \inst1|inst|ram[5][13]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux18~1_combout\);

-- Location: LCFF_X32_Y6_N17
\inst1|inst|ram[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][13]~regout\);

-- Location: LCCOMB_X32_Y7_N20
\inst1|inst|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst1|inst|ram[1][13]~regout\))) # 
-- (!\instruction_register|internal\(0) & (\inst1|inst|ram[0][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[0][13]~regout\,
	datac => \inst1|inst|ram[1][13]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux18~2_combout\);

-- Location: LCCOMB_X32_Y6_N16
\inst1|inst|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux18~2_combout\ & ((\inst1|inst|ram[3][13]~regout\))) # (!\inst1|inst|Mux18~2_combout\ & (\inst1|inst|ram[2][13]~regout\)))) # (!\instruction_register|internal\(1) & 
-- (\inst1|inst|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|Mux18~2_combout\,
	datac => \inst1|inst|ram[2][13]~regout\,
	datad => \inst1|inst|ram[3][13]~regout\,
	combout => \inst1|inst|Mux18~3_combout\);

-- Location: LCCOMB_X31_Y6_N8
\inst1|inst|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux18~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux18~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux18~1_combout\,
	datac => \inst1|inst|Mux18~3_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst1|inst|Mux18~4_combout\);

-- Location: LCFF_X32_Y5_N31
\inst1|inst|ram[6][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][12]~regout\);

-- Location: LCCOMB_X32_Y5_N30
\inst1|inst|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][12]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][12]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst1|inst|ram[6][12]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux19~0_combout\);

-- Location: LCFF_X31_Y5_N15
\inst1|inst|ram[7][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][12]~regout\);

-- Location: LCCOMB_X31_Y5_N8
\inst1|inst|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux19~0_combout\ & (\inst1|inst|ram[7][12]~regout\)) # (!\inst1|inst|Mux19~0_combout\ & ((\inst1|inst|ram[5][12]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[7][12]~regout\,
	datac => \inst1|inst|ram[5][12]~regout\,
	datad => \inst1|inst|Mux19~0_combout\,
	combout => \inst1|inst|Mux19~1_combout\);

-- Location: LCFF_X32_Y4_N9
\inst1|inst|ram[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][12]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][12]~regout\);

-- Location: LCCOMB_X32_Y4_N30
\inst1|inst|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][12]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][12]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[0][12]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux19~2_combout\);

-- Location: LCCOMB_X32_Y6_N12
\inst1|inst|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux19~2_combout\ & ((\inst1|inst|ram[3][12]~regout\))) # (!\inst1|inst|Mux19~2_combout\ & (\inst1|inst|ram[2][12]~regout\)))) # (!\instruction_register|internal\(1) & 
-- (\inst1|inst|Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|Mux19~2_combout\,
	datac => \inst1|inst|ram[2][12]~regout\,
	datad => \inst1|inst|ram[3][12]~regout\,
	combout => \inst1|inst|Mux19~3_combout\);

-- Location: LCCOMB_X31_Y6_N30
\inst1|inst|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux19~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux19~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst1|inst|Mux19~3_combout\,
	datad => \inst1|inst|Mux19~1_combout\,
	combout => \inst1|inst|Mux19~4_combout\);

-- Location: LCFF_X31_Y5_N13
\inst1|inst|ram[5][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][11]~regout\);

-- Location: LCCOMB_X32_Y5_N18
\inst1|inst|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst1|inst|ram[6][11]~regout\)) # 
-- (!\instruction_register|internal\(1) & ((\inst1|inst|ram[4][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[6][11]~regout\,
	datad => \inst1|inst|ram[4][11]~regout\,
	combout => \inst1|inst|Mux20~0_combout\);

-- Location: LCCOMB_X31_Y5_N12
\inst1|inst|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux20~0_combout\ & (\inst1|inst|ram[7][11]~regout\)) # (!\inst1|inst|Mux20~0_combout\ & ((\inst1|inst|ram[5][11]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[7][11]~regout\,
	datac => \inst1|inst|ram[5][11]~regout\,
	datad => \inst1|inst|Mux20~0_combout\,
	combout => \inst1|inst|Mux20~1_combout\);

-- Location: LCFF_X32_Y7_N7
\inst1|inst|ram[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][11]~regout\);

-- Location: LCCOMB_X32_Y7_N28
\inst1|inst|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~2_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|ram[1][11]~regout\) # ((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & (((!\instruction_register|internal\(1) & 
-- \inst1|inst|ram[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][11]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \instruction_register|internal\(1),
	datad => \inst1|inst|ram[0][11]~regout\,
	combout => \inst1|inst|Mux20~2_combout\);

-- Location: LCFF_X32_Y6_N11
\inst1|inst|ram[3][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][11]~regout\);

-- Location: LCCOMB_X32_Y6_N24
\inst1|inst|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux20~2_combout\ & ((\inst1|inst|ram[3][11]~regout\))) # (!\inst1|inst|Mux20~2_combout\ & (\inst1|inst|ram[2][11]~regout\)))) # (!\instruction_register|internal\(1) & 
-- (\inst1|inst|Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|Mux20~2_combout\,
	datac => \inst1|inst|ram[2][11]~regout\,
	datad => \inst1|inst|ram[3][11]~regout\,
	combout => \inst1|inst|Mux20~3_combout\);

-- Location: LCCOMB_X31_Y6_N22
\inst1|inst|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux20~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux20~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst1|inst|Mux20~3_combout\,
	datad => \inst1|inst|Mux20~1_combout\,
	combout => \inst1|inst|Mux20~4_combout\);

-- Location: LCFF_X31_Y5_N29
\inst1|inst|ram[5][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][10]~regout\);

-- Location: LCFF_X30_Y5_N5
\inst1|inst|ram[6][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][10]~regout\);

-- Location: LCFF_X32_Y5_N23
\inst1|inst|ram[4][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][10]~regout\);

-- Location: LCCOMB_X30_Y5_N4
\inst1|inst|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][10]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][10]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst1|inst|ram[6][10]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux21~0_combout\);

-- Location: LCFF_X31_Y5_N31
\inst1|inst|ram[7][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][10]~regout\);

-- Location: LCCOMB_X31_Y5_N30
\inst1|inst|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux21~0_combout\ & (\inst1|inst|ram[7][10]~regout\)) # (!\inst1|inst|Mux21~0_combout\ & ((\inst1|inst|ram[5][10]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (\inst1|inst|Mux21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|Mux21~0_combout\,
	datac => \inst1|inst|ram[7][10]~regout\,
	datad => \inst1|inst|ram[5][10]~regout\,
	combout => \inst1|inst|Mux21~1_combout\);

-- Location: LCFF_X32_Y6_N5
\inst1|inst|ram[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][10]~regout\);

-- Location: LCFF_X34_Y5_N11
\inst1|inst|ram[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][10]~regout\);

-- Location: LCFF_X33_Y6_N3
\inst1|inst|ram[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][10]~regout\);

-- Location: LCCOMB_X33_Y6_N24
\inst1|inst|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~2_combout\ = (\instruction_register|internal\(0) & (((\inst1|inst|ram[1][10]~regout\) # (\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & (\inst1|inst|ram[0][10]~regout\ & 
-- ((!\instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[0][10]~regout\,
	datac => \inst1|inst|ram[1][10]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux21~2_combout\);

-- Location: LCFF_X32_Y6_N3
\inst1|inst|ram[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][10]~regout\);

-- Location: LCCOMB_X32_Y6_N4
\inst1|inst|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux21~2_combout\ & (\inst1|inst|ram[3][10]~regout\)) # (!\inst1|inst|Mux21~2_combout\ & ((\inst1|inst|ram[2][10]~regout\))))) # (!\instruction_register|internal\(1) & 
-- (((\inst1|inst|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[3][10]~regout\,
	datac => \inst1|inst|ram[2][10]~regout\,
	datad => \inst1|inst|Mux21~2_combout\,
	combout => \inst1|inst|Mux21~3_combout\);

-- Location: LCCOMB_X31_Y6_N10
\inst1|inst|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux21~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux21~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst1|inst|Mux21~1_combout\,
	datad => \inst1|inst|Mux21~3_combout\,
	combout => \inst1|inst|Mux21~4_combout\);

-- Location: LCCOMB_X30_Y5_N14
\inst1|inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][10]~regout\))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|ram[4][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][10]~regout\,
	datab => \inst1|inst|ram[6][10]~regout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y5_N28
\inst1|inst|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~1_combout\ = (\inst1|inst|Mux5~0_combout\ & (((\inst1|inst|ram[7][10]~regout\)) # (!\inst1|inst4|Mux2~0_combout\))) # (!\inst1|inst|Mux5~0_combout\ & (\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[5][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux5~0_combout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[5][10]~regout\,
	datad => \inst1|inst|ram[7][10]~regout\,
	combout => \inst1|inst|Mux5~1_combout\);

-- Location: LCCOMB_X33_Y6_N18
\inst1|inst|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][10]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[0][10]~regout\ & !\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[1][10]~regout\,
	datac => \inst1|inst|ram[0][10]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux5~2_combout\);

-- Location: LCCOMB_X32_Y6_N2
\inst1|inst|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux5~2_combout\ & ((\inst1|inst|ram[3][10]~regout\))) # (!\inst1|inst|Mux5~2_combout\ & (\inst1|inst|ram[2][10]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux1~0_combout\,
	datab => \inst1|inst|ram[2][10]~regout\,
	datac => \inst1|inst|ram[3][10]~regout\,
	datad => \inst1|inst|Mux5~2_combout\,
	combout => \inst1|inst|Mux5~3_combout\);

-- Location: LCCOMB_X31_Y6_N24
\inst1|inst|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux5~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux5~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux5~3_combout\,
	datac => \inst1|inst4|Mux0~0_combout\,
	datad => \inst1|inst|Mux5~1_combout\,
	combout => \inst1|inst|Mux5~4_combout\);

-- Location: LCFF_X31_Y5_N25
\inst1|inst|ram[5][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][9]~regout\);

-- Location: LCFF_X32_Y5_N5
\inst1|inst|ram[6][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][9]~regout\);

-- Location: LCCOMB_X32_Y5_N4
\inst1|inst|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][9]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[4][9]~regout\,
	datac => \inst1|inst|ram[6][9]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux22~0_combout\);

-- Location: LCCOMB_X31_Y5_N24
\inst1|inst|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux22~0_combout\ & ((\inst1|inst|ram[7][9]~regout\))) # (!\inst1|inst|Mux22~0_combout\ & (\inst1|inst|ram[5][9]~regout\)))) # (!\instruction_register|internal\(0) & 
-- (\inst1|inst|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|Mux22~0_combout\,
	datac => \inst1|inst|ram[5][9]~regout\,
	datad => \inst1|inst|ram[7][9]~regout\,
	combout => \inst1|inst|Mux22~1_combout\);

-- Location: LCFF_X32_Y6_N21
\inst1|inst|ram[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][9]~regout\);

-- Location: LCFF_X30_Y4_N11
\inst1|inst|ram[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][9]~regout\);

-- Location: LCFF_X33_Y6_N17
\inst1|inst|ram[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][9]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][9]~regout\);

-- Location: LCCOMB_X30_Y4_N24
\inst1|inst|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][9]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][9]~regout\,
	datab => \inst1|inst|ram[0][9]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux22~2_combout\);

-- Location: LCFF_X32_Y6_N19
\inst1|inst|ram[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][9]~regout\);

-- Location: LCCOMB_X31_Y6_N20
\inst1|inst|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~3_combout\ = (\inst1|inst|Mux22~2_combout\ & (((\inst1|inst|ram[3][9]~regout\) # (!\instruction_register|internal\(1))))) # (!\inst1|inst|Mux22~2_combout\ & (\inst1|inst|ram[2][9]~regout\ & (\instruction_register|internal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][9]~regout\,
	datab => \inst1|inst|Mux22~2_combout\,
	datac => \instruction_register|internal\(1),
	datad => \inst1|inst|ram[3][9]~regout\,
	combout => \inst1|inst|Mux22~3_combout\);

-- Location: LCCOMB_X31_Y6_N14
\inst1|inst|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux22~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux22~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux22~1_combout\,
	datac => \inst1|inst|Mux22~3_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst1|inst|Mux22~4_combout\);

-- Location: LCCOMB_X30_Y4_N2
\inst1|inst|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][9]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[0][9]~regout\ & !\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][9]~regout\,
	datab => \inst1|inst|ram[0][9]~regout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux6~2_combout\);

-- Location: LCCOMB_X31_Y6_N6
\inst1|inst|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux6~2_combout\ & ((\inst1|inst|ram[3][9]~regout\))) # (!\inst1|inst|Mux6~2_combout\ & (\inst1|inst|ram[2][9]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][9]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|Mux6~2_combout\,
	datad => \inst1|inst|ram[3][9]~regout\,
	combout => \inst1|inst|Mux6~3_combout\);

-- Location: LCFF_X36_Y4_N5
\inst1|inst|ram[6][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][8]~regout\);

-- Location: LCFF_X36_Y4_N31
\inst1|inst|ram[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][8]~regout\);

-- Location: LCCOMB_X36_Y4_N4
\inst1|inst|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst1|inst|ram[6][8]~regout\)) # 
-- (!\instruction_register|internal\(1) & ((\inst1|inst|ram[4][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[6][8]~regout\,
	datad => \inst1|inst|ram[4][8]~regout\,
	combout => \inst1|inst|Mux23~0_combout\);

-- Location: LCCOMB_X31_Y5_N26
\inst1|inst|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux23~0_combout\ & ((\inst1|inst|ram[7][8]~regout\))) # (!\inst1|inst|Mux23~0_combout\ & (\inst1|inst|ram[5][8]~regout\)))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[5][8]~regout\,
	datac => \inst1|inst|ram[7][8]~regout\,
	datad => \inst1|inst|Mux23~0_combout\,
	combout => \inst1|inst|Mux23~1_combout\);

-- Location: LCCOMB_X32_Y4_N12
\inst1|inst|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][8]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][8]~regout\,
	datac => \inst1|inst|ram[0][8]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux23~2_combout\);

-- Location: LCCOMB_X32_Y6_N8
\inst1|inst|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~3_combout\ = (\inst1|inst|Mux23~2_combout\ & (((\inst1|inst|ram[3][8]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst1|inst|Mux23~2_combout\ & (\instruction_register|internal\(1) & (\inst1|inst|ram[2][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux23~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[2][8]~regout\,
	datad => \inst1|inst|ram[3][8]~regout\,
	combout => \inst1|inst|Mux23~3_combout\);

-- Location: LCCOMB_X32_Y6_N18
\inst1|inst|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux23~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux23~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux23~3_combout\,
	datab => \inst1|inst|Mux23~1_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst1|inst|Mux23~4_combout\);

-- Location: LCCOMB_X36_Y4_N0
\inst1|inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][8]~regout\))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|ram[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[4][8]~regout\,
	datac => \inst1|inst|ram[6][8]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux7~0_combout\);

-- Location: LCFF_X32_Y4_N7
\inst1|inst|ram[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][7]~regout\);

-- Location: LCCOMB_X32_Y4_N6
\inst1|inst|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][7]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][7]~regout\,
	datac => \inst1|inst|ram[0][7]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux24~2_combout\);

-- Location: LCCOMB_X32_Y6_N0
\inst1|inst|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux24~2_combout\ & (\inst1|inst|ram[3][7]~regout\)) # (!\inst1|inst|Mux24~2_combout\ & ((\inst1|inst|ram[2][7]~regout\))))) # (!\instruction_register|internal\(1) & 
-- (((\inst1|inst|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[3][7]~regout\,
	datac => \inst1|inst|ram[2][7]~regout\,
	datad => \inst1|inst|Mux24~2_combout\,
	combout => \inst1|inst|Mux24~3_combout\);

-- Location: LCCOMB_X36_Y4_N18
\inst1|inst|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[6][7]~regout\) # (\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[4][7]~regout\ & ((!\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][7]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[6][7]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux8~0_combout\);

-- Location: LCFF_X36_Y4_N13
\inst1|inst|ram[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][6]~regout\);

-- Location: LCCOMB_X36_Y4_N12
\inst1|inst|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux25~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][6]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[4][6]~regout\,
	datad => \inst1|inst|ram[6][6]~regout\,
	combout => \inst1|inst|Mux25~0_combout\);

-- Location: LCCOMB_X35_Y3_N26
\inst1|inst|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux25~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux25~0_combout\ & (\inst1|inst|ram[7][6]~regout\)) # (!\inst1|inst|Mux25~0_combout\ & ((\inst1|inst|ram[5][6]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][6]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst1|inst|ram[5][6]~regout\,
	datad => \inst1|inst|Mux25~0_combout\,
	combout => \inst1|inst|Mux25~1_combout\);

-- Location: LCCOMB_X32_Y4_N16
\inst1|inst|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux25~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][6]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][6]~regout\,
	datac => \inst1|inst|ram[0][6]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux25~2_combout\);

-- Location: LCCOMB_X35_Y4_N24
\inst1|inst|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux25~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux25~2_combout\ & ((\inst1|inst|ram[3][6]~regout\))) # (!\inst1|inst|Mux25~2_combout\ & (\inst1|inst|ram[2][6]~regout\)))) # (!\instruction_register|internal\(1) & 
-- (((\inst1|inst|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[2][6]~regout\,
	datac => \inst1|inst|ram[3][6]~regout\,
	datad => \inst1|inst|Mux25~2_combout\,
	combout => \inst1|inst|Mux25~3_combout\);

-- Location: LCCOMB_X35_Y4_N30
\inst1|inst|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux25~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux25~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux25~1_combout\,
	datab => \instruction_register|internal\(2),
	datac => \inst1|inst|Mux25~3_combout\,
	combout => \inst1|inst|Mux25~4_combout\);

-- Location: LCFF_X36_Y5_N21
\inst1|inst|ram[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[6][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][5]~regout\);

-- Location: LCCOMB_X36_Y5_N26
\inst1|inst|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux26~0_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|ram[6][5]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((!\instruction_register|internal\(0) & 
-- \inst1|inst|ram[4][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][5]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|ram[4][5]~regout\,
	combout => \inst1|inst|Mux26~0_combout\);

-- Location: LCCOMB_X36_Y3_N26
\inst1|inst|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux26~1_combout\ = (\inst1|inst|Mux26~0_combout\ & (((\inst1|inst|ram[7][5]~regout\) # (!\instruction_register|internal\(0))))) # (!\inst1|inst|Mux26~0_combout\ & (\inst1|inst|ram[5][5]~regout\ & (\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux26~0_combout\,
	datab => \inst1|inst|ram[5][5]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|ram[7][5]~regout\,
	combout => \inst1|inst|Mux26~1_combout\);

-- Location: LCCOMB_X32_Y7_N18
\inst1|inst|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux26~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][5]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][5]~regout\,
	datac => \inst1|inst|ram[0][5]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux26~2_combout\);

-- Location: LCFF_X35_Y5_N19
\inst1|inst|ram[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[5]~25_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][5]~regout\);

-- Location: LCCOMB_X34_Y7_N30
\inst1|inst|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux26~3_combout\ = (\inst1|inst|Mux26~2_combout\ & (((\inst1|inst|ram[3][5]~regout\) # (!\instruction_register|internal\(1))))) # (!\inst1|inst|Mux26~2_combout\ & (\inst1|inst|ram[2][5]~regout\ & ((\instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux26~2_combout\,
	datab => \inst1|inst|ram[2][5]~regout\,
	datac => \inst1|inst|ram[3][5]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux26~3_combout\);

-- Location: LCCOMB_X34_Y3_N12
\inst1|inst|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux26~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux26~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Mux26~3_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst1|inst|Mux26~1_combout\,
	combout => \inst1|inst|Mux26~4_combout\);

-- Location: LCFF_X36_Y5_N17
\inst1|inst|ram[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[6][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][4]~regout\);

-- Location: LCCOMB_X36_Y4_N10
\inst1|inst|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~0_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|ram[6][4]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((\inst1|inst|ram[4][4]~regout\ & 
-- !\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][4]~regout\,
	datab => \inst1|inst|ram[4][4]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux27~0_combout\);

-- Location: LCFF_X36_Y3_N31
\inst1|inst|ram[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][4]~regout\);

-- Location: LCCOMB_X36_Y3_N16
\inst1|inst|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux27~0_combout\ & ((\inst1|inst|ram[7][4]~regout\))) # (!\inst1|inst|Mux27~0_combout\ & (\inst1|inst|ram[5][4]~regout\)))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][4]~regout\,
	datab => \inst1|inst|ram[7][4]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|Mux27~0_combout\,
	combout => \inst1|inst|Mux27~1_combout\);

-- Location: LCFF_X34_Y3_N15
\inst1|inst|ram[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][4]~regout\);

-- Location: LCCOMB_X33_Y6_N6
\inst1|inst|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst1|inst|ram[1][4]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & 
-- (\inst1|inst|ram[0][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[0][4]~regout\,
	datad => \inst1|inst|ram[1][4]~regout\,
	combout => \inst1|inst|Mux27~2_combout\);

-- Location: LCFF_X35_Y5_N15
\inst1|inst|ram[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][4]~regout\);

-- Location: LCCOMB_X33_Y6_N20
\inst1|inst|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~3_combout\ = (\inst1|inst|Mux27~2_combout\ & (((\inst1|inst|ram[3][4]~regout\) # (!\instruction_register|internal\(1))))) # (!\inst1|inst|Mux27~2_combout\ & (\inst1|inst|ram[2][4]~regout\ & ((\instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux27~2_combout\,
	datab => \inst1|inst|ram[2][4]~regout\,
	datac => \inst1|inst|ram[3][4]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux27~3_combout\);

-- Location: LCCOMB_X33_Y6_N30
\inst1|inst|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux27~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux27~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux27~3_combout\,
	datab => \instruction_register|internal\(2),
	datad => \inst1|inst|Mux27~1_combout\,
	combout => \inst1|inst|Mux27~4_combout\);

-- Location: LCFF_X33_Y4_N11
\inst1|inst|ram[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][3]~regout\);

-- Location: LCCOMB_X32_Y5_N2
\inst1|inst|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[6][3]~regout\)) # (!\inst1|inst4|Mux1~0_combout\ & 
-- ((\inst1|inst|ram[4][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][3]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[4][3]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux12~0_combout\);

-- Location: LCCOMB_X33_Y4_N2
\inst1|inst|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux12~0_combout\ & (\inst1|inst|ram[7][3]~regout\)) # (!\inst1|inst|Mux12~0_combout\ & ((\inst1|inst|ram[5][3]~regout\))))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][3]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|Mux12~0_combout\,
	datad => \inst1|inst|ram[5][3]~regout\,
	combout => \inst1|inst|Mux12~1_combout\);

-- Location: LCCOMB_X34_Y5_N16
\inst1|inst|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][3]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][3]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[0][3]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[1][3]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux12~2_combout\);

-- Location: LCCOMB_X34_Y3_N0
\inst1|inst|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~3_combout\ = (\inst1|inst|Mux12~2_combout\ & (((\inst1|inst|ram[3][3]~regout\) # (!\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst|Mux12~2_combout\ & (\inst1|inst|ram[2][3]~regout\ & ((\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][3]~regout\,
	datab => \inst1|inst|Mux12~2_combout\,
	datac => \inst1|inst|ram[3][3]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux12~3_combout\);

-- Location: LCCOMB_X34_Y3_N30
\inst1|inst|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux12~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux12~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux12~1_combout\,
	datad => \inst1|inst|Mux12~3_combout\,
	combout => \inst1|inst|Mux12~4_combout\);

-- Location: LCFF_X36_Y4_N7
\inst1|inst|ram[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][2]~regout\);

-- Location: LCFF_X30_Y7_N21
\inst1|inst|ram[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][2]~regout\);

-- Location: LCCOMB_X36_Y4_N6
\inst1|inst|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][2]~regout\) # ((\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[4][2]~regout\ & !\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][2]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[4][2]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux13~0_combout\);

-- Location: LCCOMB_X33_Y7_N10
\inst1|inst|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~1_combout\ = (\inst1|inst|Mux13~0_combout\ & (((\inst1|inst|ram[7][2]~regout\) # (!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux13~0_combout\ & (\inst1|inst|ram[5][2]~regout\ & ((\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][2]~regout\,
	datab => \inst1|inst|ram[7][2]~regout\,
	datac => \inst1|inst|Mux13~0_combout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y4_N14
\inst1|inst|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~0_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|ram[6][1]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((\inst1|inst|ram[4][1]~regout\ & 
-- !\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][1]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[4][1]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux30~0_combout\);

-- Location: LCFF_X36_Y3_N13
\inst1|inst|ram[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][1]~regout\);

-- Location: LCCOMB_X36_Y3_N10
\inst1|inst|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux30~0_combout\ & (\inst1|inst|ram[7][1]~regout\)) # (!\inst1|inst|Mux30~0_combout\ & ((\inst1|inst|ram[5][1]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][1]~regout\,
	datab => \inst1|inst|ram[5][1]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|Mux30~0_combout\,
	combout => \inst1|inst|Mux30~1_combout\);

-- Location: LCCOMB_X32_Y7_N10
\inst1|inst|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][1]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][1]~regout\,
	datac => \inst1|inst|ram[0][1]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux30~2_combout\);

-- Location: LCFF_X35_Y7_N1
\inst1|inst|ram[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[5][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][0]~regout\);

-- Location: LCFF_X34_Y7_N3
\inst1|inst|ram[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][0]~regout\);

-- Location: LCCOMB_X36_Y6_N6
\Control|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector21~0_combout\ = (!\instruction_register|internal\(13) & (\instruction_register|internal\(12) & \Control|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(13),
	datac => \instruction_register|internal\(12),
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector21~0_combout\);

-- Location: LCCOMB_X35_Y6_N26
\Control|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Mux0~0_combout\ = (\instruction_register|internal\(12) & ((\instruction_register|internal\(14) & (\instruction_register|internal\(15))) # (!\instruction_register|internal\(14) & ((\instruction_register|internal\(13)))))) # 
-- (!\instruction_register|internal\(12) & ((\instruction_register|internal\(15)) # (\instruction_register|internal\(14) $ (\instruction_register|internal\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(12),
	datab => \instruction_register|internal\(14),
	datac => \instruction_register|internal\(15),
	datad => \instruction_register|internal\(13),
	combout => \Control|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y6_N20
\Control|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector8~0_combout\ = (\instruction_register|internal\(13) & (\instruction_register|internal\(12) & \Control|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(13),
	datac => \instruction_register|internal\(12),
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector8~0_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(15),
	combout => \Switches~combout\(15));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(14),
	combout => \Switches~combout\(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(13),
	combout => \Switches~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(12),
	combout => \Switches~combout\(12));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(9),
	combout => \Switches~combout\(9));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(7),
	combout => \Switches~combout\(7));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(6),
	combout => \Switches~combout\(6));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(3),
	combout => \Switches~combout\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(2),
	combout => \Switches~combout\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(1),
	combout => \Switches~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(0),
	combout => \Switches~combout\(0));

-- Location: LCCOMB_X34_Y7_N4
\inst1|inst|ram[3][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[3][14]~feeder_combout\ = \GateMDR|dataOut[14]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~7_combout\,
	combout => \inst1|inst|ram[3][14]~feeder_combout\);

-- Location: LCCOMB_X32_Y4_N10
\inst1|inst|ram[1][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][14]~feeder_combout\ = \GateMDR|dataOut[14]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~7_combout\,
	combout => \inst1|inst|ram[1][14]~feeder_combout\);

-- Location: LCCOMB_X32_Y5_N28
\inst1|inst|ram[6][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[6][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[6][13]~feeder_combout\);

-- Location: LCCOMB_X32_Y4_N8
\inst1|inst|ram[1][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][12]~feeder_combout\ = \GateMDR|dataOut[12]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[12]~11_combout\,
	combout => \inst1|inst|ram[1][12]~feeder_combout\);

-- Location: LCCOMB_X33_Y6_N2
\inst1|inst|ram[0][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][10]~feeder_combout\ = \GateMDR|dataOut[10]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~15_combout\,
	combout => \inst1|inst|ram[0][10]~feeder_combout\);

-- Location: LCCOMB_X34_Y5_N10
\inst1|inst|ram[1][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][10]~feeder_combout\ = \GateMDR|dataOut[10]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~15_combout\,
	combout => \inst1|inst|ram[1][10]~feeder_combout\);

-- Location: LCCOMB_X33_Y6_N16
\inst1|inst|ram[0][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][9]~feeder_combout\ = \GateMDR|dataOut[9]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[9]~17_combout\,
	combout => \inst1|inst|ram[0][9]~feeder_combout\);

-- Location: LCCOMB_X36_Y5_N20
\inst1|inst|ram[6][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[6][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[6][5]~feeder_combout\);

-- Location: LCCOMB_X36_Y5_N16
\inst1|inst|ram[6][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[6][4]~feeder_combout\ = \GateMDR|dataOut[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~27_combout\,
	combout => \inst1|inst|ram[6][4]~feeder_combout\);

-- Location: LCCOMB_X34_Y3_N14
\inst1|inst|ram[1][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][4]~feeder_combout\ = \GateMDR|dataOut[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~27_combout\,
	combout => \inst1|inst|ram[1][4]~feeder_combout\);

-- Location: LCCOMB_X36_Y3_N30
\inst1|inst|ram[7][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][4]~feeder_combout\ = \GateMDR|dataOut[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~27_combout\,
	combout => \inst1|inst|ram[7][4]~feeder_combout\);

-- Location: LCCOMB_X30_Y7_N20
\inst1|inst|ram[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst1|inst|ram[2][2]~feeder_combout\);

-- Location: LCCOMB_X35_Y7_N0
\inst1|inst|ram[5][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[5][0]~feeder_combout\ = \GateMDR|dataOut[0]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~35_combout\,
	combout => \inst1|inst|ram[5][0]~feeder_combout\);

-- Location: LCCOMB_X34_Y7_N2
\inst1|inst|ram[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][0]~feeder_combout\ = \GateMDR|dataOut[0]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~35_combout\,
	combout => \inst1|inst|ram[2][0]~feeder_combout\);

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[15]~36_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(15),
	combout => \Data~0\);

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[14]~37_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(14),
	combout => \Data~1\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[13]~38_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(13),
	combout => \Data~2\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[12]~39_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(12),
	combout => \Data~3\);

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[11]~40_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(11),
	combout => \Data~4\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[10]~41_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(10),
	combout => \Data~5\);

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[9]~42_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(9),
	combout => \Data~6\);

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[8]~43_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(8),
	combout => \Data~7\);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[7]~44_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(7),
	combout => \Data~8\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[6]~45_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(6),
	combout => \Data~9\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[5]~46_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(5),
	combout => \Data~10\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[4]~47_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(4),
	combout => \Data~11\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[3]~48_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(3),
	combout => \Data~12\);

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[2]~49_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(2),
	combout => \Data~13\);

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[1]~50_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(1),
	combout => \Data~14\);

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GateMDR|dataOut[0]~51_combout\,
	oe => \GateMDR|dataOut[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(0),
	combout => \Data~15\);

-- Location: LCCOMB_X37_Y4_N0
\inst|PCreg|regOp:ram[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[1]~1_combout\ = (\inst|PCreg|regOp:ram[0]~regout\ & (\inst|PCreg|regOp:ram[1]~regout\ $ (VCC))) # (!\inst|PCreg|regOp:ram[0]~regout\ & (\inst|PCreg|regOp:ram[1]~regout\ & VCC))
-- \inst|PCreg|regOp:ram[1]~2\ = CARRY((\inst|PCreg|regOp:ram[0]~regout\ & \inst|PCreg|regOp:ram[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[0]~regout\,
	datab => \inst|PCreg|regOp:ram[1]~regout\,
	datad => VCC,
	combout => \inst|PCreg|regOp:ram[1]~1_combout\,
	cout => \inst|PCreg|regOp:ram[1]~2\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LCCOMB_X36_Y6_N10
\Control|Next_state.and0_456\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.and0_456~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Selector21~0_combout\)) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Next_state.and0_456~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector21~0_combout\,
	datac => \Control|Next_state.and0_456~combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.and0_456~combout\);

-- Location: LCFF_X36_Y6_N11
\Control|State.and0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.and0_456~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.and0~regout\);

-- Location: LCCOMB_X37_Y6_N14
\Control|Next_state.STR0_392\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.STR0_392~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Selector8~0_combout\)) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Next_state.STR0_392~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector8~0_combout\,
	datac => \Control|Next_state.STR0_392~combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.STR0_392~combout\);

-- Location: LCFF_X37_Y6_N13
\Control|State.STR0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Control|Next_state.STR0_392~combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.STR0~regout\);

-- Location: LCCOMB_X37_Y6_N2
\Control|Next_state.STR1_384\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.STR1_384~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.STR0~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.STR1_384~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.STR1_384~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.STR0~regout\,
	combout => \Control|Next_state.STR1_384~combout\);

-- Location: LCFF_X36_Y6_N23
\Control|State.STR1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \Control|Next_state.STR1_384~combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.STR1~regout\);

-- Location: LCCOMB_X37_Y5_N28
\Control|Next_state.STR2_376\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.STR2_376~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.STR1~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.STR2_376~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.STR2_376~combout\,
	datac => \Control|State.STR1~regout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.STR2_376~combout\);

-- Location: LCFF_X37_Y5_N29
\Control|State.STR2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.STR2_376~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.STR2~regout\);

-- Location: LCCOMB_X37_Y5_N26
\Control|Next_state.STR3_368\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.STR3_368~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.STR2~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.STR3_368~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.STR3_368~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.STR2~regout\,
	combout => \Control|Next_state.STR3_368~combout\);

-- Location: LCFF_X37_Y5_N27
\Control|State.STR3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.STR3_368~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.STR3~regout\);

-- Location: LCCOMB_X37_Y6_N18
\Control|Next_state.LoadMDR_496\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadMDR_496~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.PCtoMAR~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LoadMDR_496~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.LoadMDR_496~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \Control|Next_state.LoadMDR_496~combout\);

-- Location: LCFF_X37_Y6_N19
\Control|State.LoadMDR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.LoadMDR_496~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadMDR~regout\);

-- Location: LCCOMB_X37_Y6_N0
\Control|Next_state.LoadMDR_2_488\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadMDR_2_488~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LoadMDR~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LoadMDR_2_488~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.LoadMDR_2_488~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LoadMDR~regout\,
	combout => \Control|Next_state.LoadMDR_2_488~combout\);

-- Location: LCFF_X37_Y6_N1
\Control|State.LoadMDR_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.LoadMDR_2_488~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadMDR_2~regout\);

-- Location: LCCOMB_X30_Y3_N4
\inst2|Data_CPU[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[13]~2_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(13))) # (!\inst2|Equal0~4_combout\ & ((\Data~2\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(13),
	datab => \Data~2\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[13]~2_combout\);

-- Location: LCCOMB_X37_Y4_N24
\inst|PCreg|regOp:ram[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[13]~1_combout\ = (\inst|PCreg|regOp:ram[13]~regout\ & (\inst|PCreg|regOp:ram[12]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[13]~regout\ & (!\inst|PCreg|regOp:ram[12]~2\ & VCC))
-- \inst|PCreg|regOp:ram[13]~2\ = CARRY((\inst|PCreg|regOp:ram[13]~regout\ & !\inst|PCreg|regOp:ram[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[13]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[12]~2\,
	combout => \inst|PCreg|regOp:ram[13]~1_combout\,
	cout => \inst|PCreg|regOp:ram[13]~2\);

-- Location: LCFF_X37_Y4_N25
\inst|PCreg|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[13]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[13]~regout\);

-- Location: LCCOMB_X37_Y6_N12
\Control|WideOr20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr20~combout\ = (\Control|State.STR1~regout\) # ((\Control|State.LoadMDR_2~regout\) # (\Control|State.LDR2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.STR1~regout\,
	datab => \Control|State.LoadMDR_2~regout\,
	datad => \Control|State.LDR2~regout\,
	combout => \Control|WideOr20~combout\);

-- Location: LCFF_X34_Y4_N3
\MDR|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[13]~regout\);

-- Location: LCCOMB_X38_Y6_N22
\Control|Next_state.LDR3_400\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LDR3_400~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LDR2~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LDR3_400~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.LDR3_400~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LDR2~regout\,
	combout => \Control|Next_state.LDR3_400~combout\);

-- Location: LCFF_X38_Y6_N23
\Control|State.LDR3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.LDR3_400~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LDR3~regout\);

-- Location: LCCOMB_X36_Y6_N22
\Control|GateMDR\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|GateMDR~combout\ = (\Control|State.LoadIR~regout\) # (\Control|State.LDR3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LoadIR~regout\,
	datad => \Control|State.LDR3~regout\,
	combout => \Control|GateMDR~combout\);

-- Location: LCCOMB_X34_Y4_N2
\GateMDR|dataOut[13]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~8_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[13]~regout\ & ((\MDR|regOp:ram[13]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[13]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[13]~regout\,
	datac => \MDR|regOp:ram[13]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[13]~8_combout\);

-- Location: LCCOMB_X37_Y6_N22
\Control|Next_state.LoadIR_480\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadIR_480~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LoadMDR_2~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LoadIR_480~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.LoadIR_480~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LoadMDR_2~regout\,
	combout => \Control|Next_state.LoadIR_480~combout\);

-- Location: LCFF_X37_Y6_N23
\Control|State.LoadIR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.LoadIR_480~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadIR~regout\);

-- Location: LCCOMB_X37_Y6_N26
\Control|Next_state.Decode_472\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.Decode_472~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LoadIR~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.Decode_472~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.Decode_472~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LoadIR~regout\,
	combout => \Control|Next_state.Decode_472~combout\);

-- Location: LCFF_X37_Y6_N27
\Control|State.Decode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.Decode_472~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.Decode~regout\);

-- Location: LCCOMB_X35_Y4_N16
\GateMDR|dataOut[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~4_combout\ = (\GateMDR|dataOut[15]~3_combout\) # ((\Control|State.LDR0~regout\) # ((\inst2|Mem_Read~0_combout\) # (!\Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~3_combout\,
	datab => \Control|State.LDR0~regout\,
	datac => \inst2|Mem_Read~0_combout\,
	datad => \Control|WideOr21~0_combout\,
	combout => \GateMDR|dataOut[15]~4_combout\);

-- Location: LCCOMB_X30_Y5_N0
\inst2|Data_CPU[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[14]~1_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(14))) # (!\inst2|Equal0~4_combout\ & ((\Data~1\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(14),
	datab => \inst2|Equal0~4_combout\,
	datac => \Data~1\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[14]~1_combout\);

-- Location: LCCOMB_X35_Y3_N24
\Control|WideOr21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr21~combout\ = (\Control|WideOr21~0_combout\) # (\Control|State.BR0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|WideOr21~0_combout\,
	datad => \Control|State.BR0~regout\,
	combout => \Control|WideOr21~combout\);

-- Location: CLKCTRL_G13
\Control|WideOr21~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Control|WideOr21~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Control|WideOr21~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y6_N20
\Control|ALUK~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK~1_combout\ = (\Control|State.STR1~regout\) # (\Control|State.not0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR1~regout\,
	datad => \Control|State.not0~regout\,
	combout => \Control|ALUK~1_combout\);

-- Location: LCCOMB_X34_Y4_N14
\Control|ALUK[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK\(1) = (GLOBAL(\Control|WideOr21~clkctrl_outclk\) & (\Control|ALUK\(1))) # (!GLOBAL(\Control|WideOr21~clkctrl_outclk\) & ((\Control|ALUK~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|ALUK\(1),
	datac => \Control|WideOr21~clkctrl_outclk\,
	datad => \Control|ALUK~1_combout\,
	combout => \Control|ALUK\(1));

-- Location: LCCOMB_X35_Y6_N20
\Control|ALUK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK~0_combout\ = (\Control|State.and0~regout\) # (\Control|State.STR1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.and0~regout\,
	datad => \Control|State.STR1~regout\,
	combout => \Control|ALUK~0_combout\);

-- Location: LCCOMB_X34_Y4_N0
\Control|ALUK[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK\(0) = (GLOBAL(\Control|WideOr21~clkctrl_outclk\) & (\Control|ALUK\(0))) # (!GLOBAL(\Control|WideOr21~clkctrl_outclk\) & ((\Control|ALUK~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr21~clkctrl_outclk\,
	datab => \Control|ALUK\(0),
	datad => \Control|ALUK~0_combout\,
	combout => \Control|ALUK\(0));

-- Location: LCCOMB_X34_Y4_N10
\inst3|dataOut[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[15]~2_combout\ = (!\Control|ALUK\(1) & !\Control|ALUK\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[15]~2_combout\);

-- Location: LCCOMB_X37_Y4_N20
\inst|PCreg|regOp:ram[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[11]~1_combout\ = (\inst|PCreg|regOp:ram[11]~regout\ & (\inst|PCreg|regOp:ram[10]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[11]~regout\ & (!\inst|PCreg|regOp:ram[10]~2\ & VCC))
-- \inst|PCreg|regOp:ram[11]~2\ = CARRY((\inst|PCreg|regOp:ram[11]~regout\ & !\inst|PCreg|regOp:ram[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[11]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[10]~2\,
	combout => \inst|PCreg|regOp:ram[11]~1_combout\,
	cout => \inst|PCreg|regOp:ram[11]~2\);

-- Location: LCFF_X37_Y4_N21
\inst|PCreg|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[11]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[11]~regout\);

-- Location: LCFF_X33_Y5_N23
\MDR|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[11]~regout\);

-- Location: LCCOMB_X33_Y5_N22
\GateMDR|dataOut[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~12_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[11]~regout\ & ((\MDR|regOp:ram[11]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[11]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[11]~regout\,
	datac => \MDR|regOp:ram[11]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[11]~12_combout\);

-- Location: LCCOMB_X37_Y4_N16
\inst|PCreg|regOp:ram[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[9]~1_combout\ = (\inst|PCreg|regOp:ram[9]~regout\ & (\inst|PCreg|regOp:ram[8]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[9]~regout\ & (!\inst|PCreg|regOp:ram[8]~2\ & VCC))
-- \inst|PCreg|regOp:ram[9]~2\ = CARRY((\inst|PCreg|regOp:ram[9]~regout\ & !\inst|PCreg|regOp:ram[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[9]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[8]~2\,
	combout => \inst|PCreg|regOp:ram[9]~1_combout\,
	cout => \inst|PCreg|regOp:ram[9]~2\);

-- Location: LCFF_X37_Y4_N17
\inst|PCreg|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[9]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[9]~regout\);

-- Location: LCFF_X31_Y4_N23
\MDR|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[9]~regout\);

-- Location: LCCOMB_X31_Y4_N22
\GateMDR|dataOut[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~16_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[9]~regout\ & ((\MDR|regOp:ram[9]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[9]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[9]~regout\,
	datac => \MDR|regOp:ram[9]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[9]~16_combout\);

-- Location: LCCOMB_X35_Y4_N28
\inst2|Data_CPU[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[6]~9_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(6))) # (!\inst2|Equal0~4_combout\ & ((\Data~9\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(6),
	datab => \Data~9\,
	datac => \inst2|Mem_Read~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[6]~9_combout\);

-- Location: LCCOMB_X35_Y7_N6
\inst1|inst|ram[5][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[5][6]~feeder_combout\ = \GateMDR|dataOut[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~23_combout\,
	combout => \inst1|inst|ram[5][6]~feeder_combout\);

-- Location: LCCOMB_X36_Y7_N14
\inst1|inst|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~0_combout\ = (!\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (\instruction_register|internal\(9) & \instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~0_combout\);

-- Location: LCFF_X35_Y7_N7
\inst1|inst|ram[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[5][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][6]~regout\);

-- Location: LCCOMB_X37_Y4_N12
\inst|PCreg|regOp:ram[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[7]~1_combout\ = (\inst|PCreg|regOp:ram[7]~regout\ & (\inst|PCreg|regOp:ram[6]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[7]~regout\ & (!\inst|PCreg|regOp:ram[6]~2\ & VCC))
-- \inst|PCreg|regOp:ram[7]~2\ = CARRY((\inst|PCreg|regOp:ram[7]~regout\ & !\inst|PCreg|regOp:ram[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[7]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[6]~2\,
	combout => \inst|PCreg|regOp:ram[7]~1_combout\,
	cout => \inst|PCreg|regOp:ram[7]~2\);

-- Location: LCFF_X37_Y4_N13
\inst|PCreg|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[7]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[7]~regout\);

-- Location: LCFF_X31_Y4_N19
\MDR|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[7]~regout\);

-- Location: LCCOMB_X31_Y4_N18
\GateMDR|dataOut[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~20_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[7]~regout\ & ((\MDR|regOp:ram[7]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[7]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[7]~regout\,
	datac => \MDR|regOp:ram[7]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[7]~20_combout\);

-- Location: LCFF_X31_Y5_N1
\inst1|inst|ram[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][7]~regout\);

-- Location: LCCOMB_X36_Y7_N0
\inst1|inst|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~3_combout\ = (\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (\instruction_register|internal\(9) & \instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~3_combout\);

-- Location: LCFF_X31_Y5_N19
\inst1|inst|ram[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][7]~regout\);

-- Location: LCCOMB_X31_Y5_N0
\inst1|inst|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~1_combout\ = (\inst1|inst|Mux8~0_combout\ & (((\inst1|inst|ram[7][7]~regout\)) # (!\inst1|inst4|Mux2~0_combout\))) # (!\inst1|inst|Mux8~0_combout\ & (\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[5][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux8~0_combout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[5][7]~regout\,
	datad => \inst1|inst|ram[7][7]~regout\,
	combout => \inst1|inst|Mux8~1_combout\);

-- Location: LCFF_X32_Y6_N1
\inst1|inst|ram[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][7]~regout\);

-- Location: LCCOMB_X36_Y7_N12
\inst1|inst|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~7_combout\ = (\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (\instruction_register|internal\(9) & !\instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~7_combout\);

-- Location: LCFF_X32_Y6_N23
\inst1|inst|ram[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][7]~regout\);

-- Location: LCCOMB_X36_Y7_N16
\inst1|inst|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~5_combout\ = (!\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (\instruction_register|internal\(9) & !\instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~5_combout\);

-- Location: LCFF_X32_Y4_N1
\inst1|inst|ram[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][7]~regout\);

-- Location: LCCOMB_X32_Y4_N4
\inst1|inst|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][7]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][7]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[0][7]~regout\,
	datab => \inst1|inst|ram[1][7]~regout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y6_N22
\inst1|inst|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux8~2_combout\ & ((\inst1|inst|ram[3][7]~regout\))) # (!\inst1|inst|Mux8~2_combout\ & (\inst1|inst|ram[2][7]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux1~0_combout\,
	datab => \inst1|inst|ram[2][7]~regout\,
	datac => \inst1|inst|ram[3][7]~regout\,
	datad => \inst1|inst|Mux8~2_combout\,
	combout => \inst1|inst|Mux8~3_combout\);

-- Location: LCCOMB_X31_Y6_N0
\inst1|inst|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux8~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux8~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux0~0_combout\,
	datab => \inst1|inst|Mux8~1_combout\,
	datad => \inst1|inst|Mux8~3_combout\,
	combout => \inst1|inst|Mux8~4_combout\);

-- Location: LCFF_X31_Y6_N1
\inst1|inst|SR1out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(7));

-- Location: LCCOMB_X33_Y4_N4
\inst3|dataOut[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[7]~20_combout\ = (\Control|ALUK\(0) & (\inst1|inst|SR1out\(7) & ((\SR2Mux|Selector8~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector8~0_combout\,
	datab => \Control|ALUK\(1),
	datac => \Control|ALUK\(0),
	datad => \inst1|inst|SR1out\(7),
	combout => \inst3|dataOut[7]~20_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(4),
	combout => \Switches~combout\(4));

-- Location: LCCOMB_X35_Y4_N18
\inst2|Data_CPU[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[4]~11_combout\ = ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(4)))) # (!\inst2|Equal0~4_combout\ & (\Data~11\))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~11\,
	datab => \Switches~combout\(4),
	datac => \inst2|Mem_Read~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[4]~11_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(5),
	combout => \Switches~combout\(5));

-- Location: LCCOMB_X35_Y3_N18
\inst2|Data_CPU[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[5]~10_combout\ = ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(5)))) # (!\inst2|Equal0~4_combout\ & (\Data~10\))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~10\,
	datab => \Switches~combout\(5),
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[5]~10_combout\);

-- Location: LCCOMB_X35_Y6_N2
\SR2Mux|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector10~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(5))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(5),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector10~0_combout\);

-- Location: LCCOMB_X35_Y5_N20
\inst3|dataOut[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[5]~26_combout\ = (\inst1|inst|SR1out\(5) & (\Control|ALUK\(0) & ((\SR2Mux|Selector10~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(5),
	datab => \SR2Mux|Selector10~0_combout\,
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[5]~26_combout\);

-- Location: LCCOMB_X32_Y7_N8
\inst1|inst|ram[0][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[0][5]~feeder_combout\);

-- Location: LCCOMB_X36_Y7_N6
\inst1|inst|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~6_combout\ = (!\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (!\instruction_register|internal\(9) & !\instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~6_combout\);

-- Location: LCFF_X32_Y7_N9
\inst1|inst|ram[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][5]~regout\);

-- Location: LCCOMB_X34_Y3_N16
\inst1|inst|ram[1][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[1][5]~feeder_combout\);

-- Location: LCFF_X34_Y3_N17
\inst1|inst|ram[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][5]~regout\);

-- Location: LCCOMB_X32_Y7_N12
\inst1|inst|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][5]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][5]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[0][5]~regout\,
	datac => \inst1|inst|ram[1][5]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux10~2_combout\);

-- Location: LCCOMB_X34_Y7_N0
\inst1|inst|ram[2][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[2][5]~feeder_combout\);

-- Location: LCFF_X34_Y7_N1
\inst1|inst|ram[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][5]~regout\);

-- Location: LCCOMB_X34_Y7_N8
\inst1|inst|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~3_combout\ = (\inst1|inst|Mux10~2_combout\ & ((\inst1|inst|ram[3][5]~regout\) # ((!\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst|Mux10~2_combout\ & (((\inst1|inst4|Mux1~0_combout\ & \inst1|inst|ram[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][5]~regout\,
	datab => \inst1|inst|Mux10~2_combout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|ram[2][5]~regout\,
	combout => \inst1|inst|Mux10~3_combout\);

-- Location: LCCOMB_X36_Y3_N18
\inst1|inst|ram[5][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[5][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[5][5]~feeder_combout\);

-- Location: LCFF_X36_Y3_N19
\inst1|inst|ram[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[5][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][5]~regout\);

-- Location: LCCOMB_X36_Y7_N22
\inst1|inst|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~2_combout\ = (!\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (!\instruction_register|internal\(9) & \instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~2_combout\);

-- Location: LCFF_X36_Y4_N23
\inst1|inst|ram[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~25_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][5]~regout\);

-- Location: LCCOMB_X36_Y4_N22
\inst1|inst|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][5]~regout\) # ((\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[4][5]~regout\ & !\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][5]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[4][5]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux10~0_combout\);

-- Location: LCCOMB_X36_Y3_N0
\inst1|inst|ram[7][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst1|inst|ram[7][5]~feeder_combout\);

-- Location: LCFF_X36_Y3_N1
\inst1|inst|ram[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][5]~regout\);

-- Location: LCCOMB_X36_Y3_N8
\inst1|inst|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux10~0_combout\ & ((\inst1|inst|ram[7][5]~regout\))) # (!\inst1|inst|Mux10~0_combout\ & (\inst1|inst|ram[5][5]~regout\)))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[5][5]~regout\,
	datac => \inst1|inst|Mux10~0_combout\,
	datad => \inst1|inst|ram[7][5]~regout\,
	combout => \inst1|inst|Mux10~1_combout\);

-- Location: LCCOMB_X34_Y3_N6
\inst1|inst|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux10~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux10~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux10~3_combout\,
	datad => \inst1|inst|Mux10~1_combout\,
	combout => \inst1|inst|Mux10~4_combout\);

-- Location: LCFF_X34_Y3_N7
\inst1|inst|SR1out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(5));

-- Location: LCFF_X34_Y4_N23
\MDR|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[3]~regout\);

-- Location: LCCOMB_X34_Y4_N22
\GateMDR|dataOut[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~28_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[3]~regout\ & ((\MDR|regOp:ram[3]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[3]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[3]~regout\,
	datac => \MDR|regOp:ram[3]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[3]~28_combout\);

-- Location: LCCOMB_X33_Y4_N14
\inst2|Data_CPU[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[3]~12_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(3))) # (!\inst2|Equal0~4_combout\ & ((\Data~12\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Data~12\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[3]~12_combout\);

-- Location: LCCOMB_X33_Y4_N24
\inst3|dataOut[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[3]~32_combout\ = (\inst1|inst|SR1out\(3) & (\Control|ALUK\(0) & ((\Control|ALUK\(1)) # (\SR2Mux|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(3),
	datab => \Control|ALUK\(0),
	datac => \Control|ALUK\(1),
	datad => \SR2Mux|Selector12~0_combout\,
	combout => \inst3|dataOut[3]~32_combout\);

-- Location: LCCOMB_X31_Y4_N28
\inst2|Data_CPU[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[2]~13_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(2))) # (!\inst2|Equal0~4_combout\ & ((\Data~13\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(2),
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Mem_Read~0_combout\,
	datad => \Data~13\,
	combout => \inst2|Data_CPU[2]~13_combout\);

-- Location: LCCOMB_X33_Y4_N16
\inst3|dataOut[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[2]~35_combout\ = (\inst1|inst|SR1out\(2) & (\Control|ALUK\(0) & ((\Control|ALUK\(1)) # (\SR2Mux|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(2),
	datab => \Control|ALUK\(1),
	datac => \Control|ALUK\(0),
	datad => \SR2Mux|Selector13~0_combout\,
	combout => \inst3|dataOut[2]~35_combout\);

-- Location: LCCOMB_X30_Y7_N2
\inst1|inst|ram[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[3][2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst1|inst|ram[3][2]~feeder_combout\);

-- Location: LCFF_X30_Y7_N3
\inst1|inst|ram[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[3][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][2]~regout\);

-- Location: LCCOMB_X32_Y7_N26
\inst1|inst|ram[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst1|inst|ram[0][2]~feeder_combout\);

-- Location: LCFF_X32_Y7_N27
\inst1|inst|ram[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][2]~regout\);

-- Location: LCCOMB_X30_Y4_N8
\inst1|inst|ram[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst1|inst|ram[1][2]~feeder_combout\);

-- Location: LCFF_X30_Y4_N9
\inst1|inst|ram[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][2]~regout\);

-- Location: LCCOMB_X32_Y7_N14
\inst1|inst|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][2]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][2]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[0][2]~regout\,
	datac => \inst1|inst|ram[1][2]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux13~2_combout\);

-- Location: LCCOMB_X33_Y7_N28
\inst1|inst|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux13~2_combout\ & ((\inst1|inst|ram[3][2]~regout\))) # (!\inst1|inst|Mux13~2_combout\ & (\inst1|inst|ram[2][2]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][2]~regout\,
	datab => \inst1|inst|ram[3][2]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|Mux13~2_combout\,
	combout => \inst1|inst|Mux13~3_combout\);

-- Location: LCCOMB_X33_Y7_N4
\inst1|inst|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux13~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux13~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux13~1_combout\,
	datab => \inst1|inst|Mux13~3_combout\,
	datad => \inst1|inst4|Mux0~0_combout\,
	combout => \inst1|inst|Mux13~4_combout\);

-- Location: LCFF_X33_Y7_N5
\inst1|inst|SR1out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(2));

-- Location: LCCOMB_X33_Y4_N18
\inst3|dataOut[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[2]~36_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst1|inst|SR1out\(2)))) # (!\Control|ALUK\(1) & (\ALU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~4_combout\,
	datab => \Control|ALUK\(1),
	datac => \Control|ALUK\(0),
	datad => \inst1|inst|SR1out\(2),
	combout => \inst3|dataOut[2]~36_combout\);

-- Location: LCCOMB_X33_Y4_N0
\inst3|dataOut[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[2]~37_combout\ = (\inst3|dataOut[2]~35_combout\) # ((\inst3|dataOut[2]~36_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[2]~35_combout\,
	datad => \inst3|dataOut[2]~36_combout\,
	combout => \inst3|dataOut[2]~37_combout\);

-- Location: LCCOMB_X31_Y4_N24
\GateMDR|dataOut[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~31_combout\ = ((\GateMDR|dataOut[2]~30_combout\ & (\inst2|Data_CPU[2]~13_combout\ & \inst3|dataOut[2]~37_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[2]~30_combout\,
	datab => \inst2|Data_CPU[2]~13_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[2]~37_combout\,
	combout => \GateMDR|dataOut[2]~31_combout\);

-- Location: LCCOMB_X31_Y5_N2
\inst1|inst|ram[7][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst1|inst|ram[7][2]~feeder_combout\);

-- Location: LCFF_X31_Y5_N3
\inst1|inst|ram[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][2]~regout\);

-- Location: LCFF_X31_Y5_N17
\inst1|inst|ram[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][2]~regout\);

-- Location: LCCOMB_X35_Y3_N4
\inst2|Data_CPU[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[1]~14_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(1))) # (!\inst2|Equal0~4_combout\ & ((\Data~14\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(1),
	datab => \Data~14\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[1]~14_combout\);

-- Location: LCFF_X35_Y3_N3
\MDR|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[1]~regout\);

-- Location: LCCOMB_X35_Y3_N8
\GateMDR|dataOut[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~32_combout\ = (\inst|PCreg|regOp:ram[1]~regout\ & ((\MDR|regOp:ram[1]~regout\) # ((!\Control|GateMDR~combout\)))) # (!\inst|PCreg|regOp:ram[1]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[1]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[1]~regout\,
	datab => \MDR|regOp:ram[1]~regout\,
	datac => \Control|GateMDR~combout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[1]~32_combout\);

-- Location: LCFF_X36_Y3_N3
\inst1|inst|ram[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][1]~regout\);

-- Location: LCFF_X36_Y4_N15
\inst1|inst|ram[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][1]~regout\);

-- Location: LCFF_X36_Y4_N29
\inst1|inst|ram[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][1]~regout\);

-- Location: LCCOMB_X36_Y4_N28
\inst1|inst|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux14~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][1]~regout\))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|ram[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[4][1]~regout\,
	datac => \inst1|inst|ram[6][1]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux14~0_combout\);

-- Location: LCCOMB_X36_Y3_N20
\inst1|inst|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux14~1_combout\ = (\inst1|inst|Mux14~0_combout\ & ((\inst1|inst|ram[7][1]~regout\) # ((!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux14~0_combout\ & (((\inst1|inst|ram[5][1]~regout\ & \inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][1]~regout\,
	datab => \inst1|inst|ram[5][1]~regout\,
	datac => \inst1|inst|Mux14~0_combout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux14~1_combout\);

-- Location: LCCOMB_X34_Y7_N24
\inst1|inst|ram[3][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[3][1]~feeder_combout\ = \GateMDR|dataOut[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~33_combout\,
	combout => \inst1|inst|ram[3][1]~feeder_combout\);

-- Location: LCFF_X34_Y7_N25
\inst1|inst|ram[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[3][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][1]~regout\);

-- Location: LCCOMB_X34_Y3_N26
\inst1|inst|ram[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][1]~feeder_combout\ = \GateMDR|dataOut[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~33_combout\,
	combout => \inst1|inst|ram[1][1]~feeder_combout\);

-- Location: LCFF_X34_Y3_N27
\inst1|inst|ram[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][1]~regout\);

-- Location: LCFF_X32_Y7_N25
\inst1|inst|ram[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][1]~regout\);

-- Location: LCCOMB_X32_Y7_N24
\inst1|inst|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux14~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][1]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[0][1]~regout\ & !\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[1][1]~regout\,
	datac => \inst1|inst|ram[0][1]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux14~2_combout\);

-- Location: LCCOMB_X33_Y7_N8
\inst1|inst|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux14~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux14~2_combout\ & ((\inst1|inst|ram[3][1]~regout\))) # (!\inst1|inst|Mux14~2_combout\ & (\inst1|inst|ram[2][1]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][1]~regout\,
	datab => \inst1|inst|ram[3][1]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|Mux14~2_combout\,
	combout => \inst1|inst|Mux14~3_combout\);

-- Location: LCCOMB_X34_Y3_N24
\inst1|inst|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux14~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux14~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux14~1_combout\,
	datad => \inst1|inst|Mux14~3_combout\,
	combout => \inst1|inst|Mux14~4_combout\);

-- Location: LCFF_X34_Y3_N25
\inst1|inst|SR1out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(1));

-- Location: LCCOMB_X35_Y3_N14
\inst3|dataOut[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~38_combout\ = (\inst1|inst|SR1out\(1) & (\Control|ALUK\(0) & ((\SR2Mux|Selector14~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector14~0_combout\,
	datab => \inst1|inst|SR1out\(1),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[1]~38_combout\);

-- Location: LCCOMB_X35_Y3_N0
\inst3|dataOut[1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~39_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst1|inst|SR1out\(1)))) # (!\Control|ALUK\(1) & (\ALU|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~2_combout\,
	datab => \inst1|inst|SR1out\(1),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[1]~39_combout\);

-- Location: LCCOMB_X35_Y3_N6
\inst3|dataOut[1]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~40_combout\ = (\inst3|dataOut[1]~38_combout\) # ((\inst3|dataOut[1]~39_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[1]~38_combout\,
	datad => \inst3|dataOut[1]~39_combout\,
	combout => \inst3|dataOut[1]~40_combout\);

-- Location: LCCOMB_X35_Y3_N2
\GateMDR|dataOut[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~33_combout\ = ((\inst2|Data_CPU[1]~14_combout\ & (\GateMDR|dataOut[1]~32_combout\ & \inst3|dataOut[1]~40_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \inst2|Data_CPU[1]~14_combout\,
	datac => \GateMDR|dataOut[1]~32_combout\,
	datad => \inst3|dataOut[1]~40_combout\,
	combout => \GateMDR|dataOut[1]~33_combout\);

-- Location: LCFF_X35_Y6_N25
\instruction_register|internal[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(1));

-- Location: LCFF_X36_Y4_N25
\inst1|inst|ram[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][2]~regout\);

-- Location: LCFF_X34_Y4_N27
\MDR|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[0]~regout\);

-- Location: LCCOMB_X38_Y4_N24
\inst|PCreg|regOp:ram[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[0]~0_combout\ = \Control|State.PCtoMAR~regout\ $ (\inst|PCreg|regOp:ram[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datac => \inst|PCreg|regOp:ram[0]~regout\,
	combout => \inst|PCreg|regOp:ram[0]~0_combout\);

-- Location: LCFF_X38_Y4_N25
\inst|PCreg|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[0]~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[0]~regout\);

-- Location: LCCOMB_X34_Y4_N28
\GateMDR|dataOut[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~34_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[0]~regout\ & ((\MDR|regOp:ram[0]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[0]~regout\) # 
-- ((!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \MDR|regOp:ram[0]~regout\,
	datac => \inst|PCreg|regOp:ram[0]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[0]~34_combout\);

-- Location: LCCOMB_X31_Y4_N2
\inst2|Data_CPU[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[0]~15_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(0))) # (!\inst2|Equal0~4_combout\ & ((\Data~15\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(0),
	datab => \inst2|Mem_Read~0_combout\,
	datac => \Data~15\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[0]~15_combout\);

-- Location: LCCOMB_X36_Y3_N14
\inst1|inst|ram[7][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][0]~feeder_combout\ = \GateMDR|dataOut[0]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~35_combout\,
	combout => \inst1|inst|ram[7][0]~feeder_combout\);

-- Location: LCFF_X36_Y3_N15
\inst1|inst|ram[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][0]~regout\);

-- Location: LCFF_X36_Y4_N3
\inst1|inst|ram[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][0]~regout\);

-- Location: LCCOMB_X36_Y4_N2
\inst1|inst|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~0_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|ram[6][0]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((\inst1|inst|ram[4][0]~regout\ & 
-- !\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][0]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[4][0]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux31~0_combout\);

-- Location: LCCOMB_X36_Y7_N18
\inst1|inst|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux31~0_combout\ & ((\inst1|inst|ram[7][0]~regout\))) # (!\inst1|inst|Mux31~0_combout\ & (\inst1|inst|ram[5][0]~regout\)))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][0]~regout\,
	datab => \inst1|inst|ram[7][0]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|Mux31~0_combout\,
	combout => \inst1|inst|Mux31~1_combout\);

-- Location: LCFF_X32_Y4_N23
\inst1|inst|ram[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][0]~regout\);

-- Location: LCCOMB_X32_Y4_N22
\inst1|inst|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][0]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][0]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[0][0]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux31~2_combout\);

-- Location: LCCOMB_X34_Y7_N20
\inst1|inst|ram[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[3][0]~feeder_combout\ = \GateMDR|dataOut[0]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~35_combout\,
	combout => \inst1|inst|ram[3][0]~feeder_combout\);

-- Location: LCFF_X34_Y7_N21
\inst1|inst|ram[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[3][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][0]~regout\);

-- Location: LCCOMB_X33_Y7_N6
\inst1|inst|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux31~2_combout\ & ((\inst1|inst|ram[3][0]~regout\))) # (!\inst1|inst|Mux31~2_combout\ & (\inst1|inst|ram[2][0]~regout\)))) # (!\instruction_register|internal\(1) & 
-- (((\inst1|inst|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][0]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|Mux31~2_combout\,
	datad => \inst1|inst|ram[3][0]~regout\,
	combout => \inst1|inst|Mux31~3_combout\);

-- Location: LCFF_X31_Y4_N13
\instruction_register|internal[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(2));

-- Location: LCCOMB_X36_Y7_N8
\inst1|inst|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux31~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux31~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Mux31~1_combout\,
	datac => \inst1|inst|Mux31~3_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst1|inst|Mux31~4_combout\);

-- Location: LCFF_X36_Y7_N9
\inst1|inst|SR2out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux31~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(0));

-- Location: LCCOMB_X35_Y6_N30
\SR2Mux|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector15~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(0))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|SR2out\(0),
	datac => \instruction_register|internal\(0),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector15~0_combout\);

-- Location: LCFF_X32_Y4_N21
\inst1|inst|ram[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][0]~regout\);

-- Location: LCCOMB_X32_Y4_N20
\inst1|inst|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux15~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\) # ((\inst1|inst|ram[1][0]~regout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (!\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[1][0]~regout\,
	datad => \inst1|inst|ram[0][0]~regout\,
	combout => \inst1|inst|Mux15~2_combout\);

-- Location: LCCOMB_X33_Y7_N24
\inst1|inst|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux15~3_combout\ = (\inst1|inst|Mux15~2_combout\ & (((\inst1|inst|ram[3][0]~regout\) # (!\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst|Mux15~2_combout\ & (\inst1|inst|ram[2][0]~regout\ & (\inst1|inst4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][0]~regout\,
	datab => \inst1|inst|Mux15~2_combout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|ram[3][0]~regout\,
	combout => \inst1|inst|Mux15~3_combout\);

-- Location: LCFF_X36_Y4_N21
\inst1|inst|ram[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][0]~regout\);

-- Location: LCCOMB_X36_Y4_N20
\inst1|inst|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux15~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][0]~regout\))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|ram[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[4][0]~regout\,
	datac => \inst1|inst|ram[6][0]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux15~0_combout\);

-- Location: LCCOMB_X36_Y7_N24
\inst1|inst|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux15~1_combout\ = (\inst1|inst|Mux15~0_combout\ & (((\inst1|inst|ram[7][0]~regout\) # (!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux15~0_combout\ & (\inst1|inst|ram[5][0]~regout\ & ((\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][0]~regout\,
	datab => \inst1|inst|ram[7][0]~regout\,
	datac => \inst1|inst|Mux15~0_combout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux15~1_combout\);

-- Location: LCCOMB_X33_Y7_N18
\inst1|inst|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux15~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux15~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux15~3_combout\,
	datad => \inst1|inst|Mux15~1_combout\,
	combout => \inst1|inst|Mux15~4_combout\);

-- Location: LCFF_X33_Y7_N19
\inst1|inst|SR1out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(0));

-- Location: LCCOMB_X34_Y4_N20
\inst3|dataOut[0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[0]~41_combout\ = (\inst1|inst|SR1out\(0) & (\Control|ALUK\(0) & ((\Control|ALUK\(1)) # (\SR2Mux|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \SR2Mux|Selector15~0_combout\,
	datac => \inst1|inst|SR1out\(0),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[0]~41_combout\);

-- Location: LCCOMB_X34_Y4_N6
\inst3|dataOut[0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[0]~42_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst1|inst|SR1out\(0)))) # (!\Control|ALUK\(1) & (\ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~0_combout\,
	datab => \Control|ALUK\(0),
	datac => \inst1|inst|SR1out\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[0]~42_combout\);

-- Location: LCCOMB_X34_Y4_N12
\inst3|dataOut[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[0]~43_combout\ = (\inst3|dataOut[0]~41_combout\) # ((\inst3|dataOut[0]~42_combout\) # ((\Control|WideOr21~0_combout\ & !\Control|State.LDR0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr21~0_combout\,
	datab => \Control|State.LDR0~regout\,
	datac => \inst3|dataOut[0]~41_combout\,
	datad => \inst3|dataOut[0]~42_combout\,
	combout => \inst3|dataOut[0]~43_combout\);

-- Location: LCCOMB_X34_Y4_N26
\GateMDR|dataOut[0]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~35_combout\ = ((\GateMDR|dataOut[0]~34_combout\ & (\inst2|Data_CPU[0]~15_combout\ & \inst3|dataOut[0]~43_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \GateMDR|dataOut[0]~34_combout\,
	datac => \inst2|Data_CPU[0]~15_combout\,
	datad => \inst3|dataOut[0]~43_combout\,
	combout => \GateMDR|dataOut[0]~35_combout\);

-- Location: LCFF_X35_Y6_N31
\instruction_register|internal[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(0));

-- Location: LCCOMB_X36_Y4_N24
\inst1|inst|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~0_combout\ = (\instruction_register|internal\(1) & (((\inst1|inst|ram[6][2]~regout\) # (\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][2]~regout\ & 
-- ((!\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][2]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[6][2]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux29~0_combout\);

-- Location: LCCOMB_X31_Y5_N16
\inst1|inst|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux29~0_combout\ & (\inst1|inst|ram[7][2]~regout\)) # (!\inst1|inst|Mux29~0_combout\ & ((\inst1|inst|ram[5][2]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[7][2]~regout\,
	datac => \inst1|inst|ram[5][2]~regout\,
	datad => \inst1|inst|Mux29~0_combout\,
	combout => \inst1|inst|Mux29~1_combout\);

-- Location: LCCOMB_X32_Y7_N0
\inst1|inst|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst1|inst|ram[1][2]~regout\))) # 
-- (!\instruction_register|internal\(0) & (\inst1|inst|ram[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[0][2]~regout\,
	datac => \inst1|inst|ram[1][2]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux29~2_combout\);

-- Location: LCCOMB_X33_Y7_N20
\inst1|inst|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~3_combout\ = (\inst1|inst|Mux29~2_combout\ & (((\inst1|inst|ram[3][2]~regout\) # (!\instruction_register|internal\(1))))) # (!\inst1|inst|Mux29~2_combout\ & (\inst1|inst|ram[2][2]~regout\ & ((\instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][2]~regout\,
	datab => \inst1|inst|ram[3][2]~regout\,
	datac => \inst1|inst|Mux29~2_combout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux29~3_combout\);

-- Location: LCCOMB_X32_Y5_N22
\inst1|inst|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux29~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux29~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst1|inst|Mux29~1_combout\,
	datad => \inst1|inst|Mux29~3_combout\,
	combout => \inst1|inst|Mux29~4_combout\);

-- Location: LCFF_X35_Y6_N15
\inst1|inst|SR2out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux29~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(2));

-- Location: LCCOMB_X35_Y6_N14
\SR2Mux|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector13~0_combout\ = (\Control|SR2MUX~0_combout\ & ((\inst1|inst|SR2out\(2)))) # (!\Control|SR2MUX~0_combout\ & (\instruction_register|internal\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datac => \inst1|inst|SR2out\(2),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector13~0_combout\);

-- Location: LCCOMB_X34_Y7_N26
\inst1|inst|ram[2][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][1]~feeder_combout\ = \GateMDR|dataOut[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~33_combout\,
	combout => \inst1|inst|ram[2][1]~feeder_combout\);

-- Location: LCFF_X34_Y7_N27
\inst1|inst|ram[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][1]~regout\);

-- Location: LCCOMB_X33_Y7_N22
\inst1|inst|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~3_combout\ = (\inst1|inst|Mux30~2_combout\ & (((\inst1|inst|ram[3][1]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst1|inst|Mux30~2_combout\ & (\instruction_register|internal\(1) & (\inst1|inst|ram[2][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux30~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[2][1]~regout\,
	datad => \inst1|inst|ram[3][1]~regout\,
	combout => \inst1|inst|Mux30~3_combout\);

-- Location: LCCOMB_X36_Y6_N18
\inst1|inst|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux30~4_combout\ = (\instruction_register|internal\(2) & (\inst1|inst|Mux30~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst1|inst|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux30~1_combout\,
	datab => \instruction_register|internal\(2),
	datad => \inst1|inst|Mux30~3_combout\,
	combout => \inst1|inst|Mux30~4_combout\);

-- Location: LCFF_X35_Y6_N3
\inst1|inst|SR2out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux30~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(1));

-- Location: LCCOMB_X35_Y6_N24
\SR2Mux|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector14~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(1))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|SR2out\(1),
	datac => \instruction_register|internal\(1),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector14~0_combout\);

-- Location: LCCOMB_X34_Y6_N6
\ALU|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = (\inst1|inst|SR1out\(3) & ((\SR2Mux|Selector12~0_combout\ & (\ALU|Add0~5\ & VCC)) # (!\SR2Mux|Selector12~0_combout\ & (!\ALU|Add0~5\)))) # (!\inst1|inst|SR1out\(3) & ((\SR2Mux|Selector12~0_combout\ & (!\ALU|Add0~5\)) # 
-- (!\SR2Mux|Selector12~0_combout\ & ((\ALU|Add0~5\) # (GND)))))
-- \ALU|Add0~7\ = CARRY((\inst1|inst|SR1out\(3) & (!\SR2Mux|Selector12~0_combout\ & !\ALU|Add0~5\)) # (!\inst1|inst|SR1out\(3) & ((!\ALU|Add0~5\) # (!\SR2Mux|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(3),
	datab => \SR2Mux|Selector12~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X33_Y4_N30
\inst3|dataOut[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[3]~33_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(3))) # (!\Control|ALUK\(1) & ((\ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(3),
	datab => \Control|ALUK\(0),
	datac => \Control|ALUK\(1),
	datad => \ALU|Add0~6_combout\,
	combout => \inst3|dataOut[3]~33_combout\);

-- Location: LCCOMB_X33_Y4_N12
\inst3|dataOut[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[3]~34_combout\ = (\inst3|dataOut[3]~32_combout\) # ((\inst3|dataOut[3]~33_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[3]~32_combout\,
	datad => \inst3|dataOut[3]~33_combout\,
	combout => \inst3|dataOut[3]~34_combout\);

-- Location: LCCOMB_X33_Y4_N26
\GateMDR|dataOut[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~29_combout\ = ((\GateMDR|dataOut[3]~28_combout\ & (\inst2|Data_CPU[3]~12_combout\ & \inst3|dataOut[3]~34_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \GateMDR|dataOut[3]~28_combout\,
	datac => \inst2|Data_CPU[3]~12_combout\,
	datad => \inst3|dataOut[3]~34_combout\,
	combout => \GateMDR|dataOut[3]~29_combout\);

-- Location: LCFF_X32_Y6_N31
\inst1|inst|ram[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][3]~regout\);

-- Location: LCFF_X32_Y6_N29
\inst1|inst|ram[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][3]~regout\);

-- Location: LCFF_X34_Y5_N5
\inst1|inst|ram[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][3]~regout\);

-- Location: LCFF_X32_Y4_N27
\inst1|inst|ram[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][3]~regout\);

-- Location: LCCOMB_X34_Y5_N2
\inst1|inst|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux28~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst1|inst|ram[1][3]~regout\)) # 
-- (!\instruction_register|internal\(0) & ((\inst1|inst|ram[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[1][3]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|ram[0][3]~regout\,
	combout => \inst1|inst|Mux28~2_combout\);

-- Location: LCCOMB_X32_Y6_N28
\inst1|inst|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux28~3_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|Mux28~2_combout\ & (\inst1|inst|ram[3][3]~regout\)) # (!\inst1|inst|Mux28~2_combout\ & ((\inst1|inst|ram[2][3]~regout\))))) # (!\instruction_register|internal\(1) & 
-- (((\inst1|inst|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[3][3]~regout\,
	datac => \inst1|inst|ram[2][3]~regout\,
	datad => \inst1|inst|Mux28~2_combout\,
	combout => \inst1|inst|Mux28~3_combout\);

-- Location: LCFF_X32_Y5_N3
\inst1|inst|ram[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][3]~regout\);

-- Location: LCFF_X32_Y5_N17
\inst1|inst|ram[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][3]~regout\);

-- Location: LCCOMB_X32_Y5_N16
\inst1|inst|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux28~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][3]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[4][3]~regout\,
	datac => \inst1|inst|ram[6][3]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux28~0_combout\);

-- Location: LCFF_X33_Y4_N27
\inst1|inst|ram[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][3]~regout\);

-- Location: LCCOMB_X33_Y4_N8
\inst1|inst|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux28~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux28~0_combout\ & (\inst1|inst|ram[7][3]~regout\)) # (!\inst1|inst|Mux28~0_combout\ & ((\inst1|inst|ram[5][3]~regout\))))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][3]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst1|inst|Mux28~0_combout\,
	datad => \inst1|inst|ram[5][3]~regout\,
	combout => \inst1|inst|Mux28~1_combout\);

-- Location: LCCOMB_X34_Y3_N20
\inst1|inst|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux28~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux28~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux28~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Mux28~3_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst1|inst|Mux28~1_combout\,
	combout => \inst1|inst|Mux28~4_combout\);

-- Location: LCFF_X34_Y3_N21
\inst1|inst|SR2out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux28~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(3));

-- Location: LCFF_X35_Y6_N13
\instruction_register|internal[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(3));

-- Location: LCCOMB_X35_Y6_N12
\SR2Mux|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector12~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(3))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|SR2out\(3),
	datac => \instruction_register|internal\(3),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector12~0_combout\);

-- Location: LCCOMB_X34_Y6_N8
\ALU|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = ((\inst1|inst|SR1out\(4) $ (\SR2Mux|Selector11~0_combout\ $ (!\ALU|Add0~7\)))) # (GND)
-- \ALU|Add0~9\ = CARRY((\inst1|inst|SR1out\(4) & ((\SR2Mux|Selector11~0_combout\) # (!\ALU|Add0~7\))) # (!\inst1|inst|SR1out\(4) & (\SR2Mux|Selector11~0_combout\ & !\ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(4),
	datab => \SR2Mux|Selector11~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~8_combout\,
	cout => \ALU|Add0~9\);

-- Location: LCCOMB_X34_Y6_N10
\ALU|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\SR2Mux|Selector10~0_combout\ & ((\inst1|inst|SR1out\(5) & (\ALU|Add0~9\ & VCC)) # (!\inst1|inst|SR1out\(5) & (!\ALU|Add0~9\)))) # (!\SR2Mux|Selector10~0_combout\ & ((\inst1|inst|SR1out\(5) & (!\ALU|Add0~9\)) # 
-- (!\inst1|inst|SR1out\(5) & ((\ALU|Add0~9\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\SR2Mux|Selector10~0_combout\ & (!\inst1|inst|SR1out\(5) & !\ALU|Add0~9\)) # (!\SR2Mux|Selector10~0_combout\ & ((!\ALU|Add0~9\) # (!\inst1|inst|SR1out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector10~0_combout\,
	datab => \inst1|inst|SR1out\(5),
	datad => VCC,
	cin => \ALU|Add0~9\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: LCCOMB_X35_Y5_N6
\inst3|dataOut[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[5]~27_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(5))) # (!\Control|ALUK\(1) & ((\ALU|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(5),
	datab => \ALU|Add0~10_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[5]~27_combout\);

-- Location: LCCOMB_X35_Y5_N28
\inst3|dataOut[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[5]~28_combout\ = (\inst3|dataOut[5]~26_combout\) # ((\inst3|dataOut[5]~27_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[5]~26_combout\,
	datad => \inst3|dataOut[5]~27_combout\,
	combout => \inst3|dataOut[5]~28_combout\);

-- Location: LCCOMB_X35_Y5_N18
\GateMDR|dataOut[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~25_combout\ = ((\GateMDR|dataOut[5]~24_combout\ & (\inst2|Data_CPU[5]~10_combout\ & \inst3|dataOut[5]~28_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[5]~24_combout\,
	datab => \GateMDR|dataOut[15]~4_combout\,
	datac => \inst2|Data_CPU[5]~10_combout\,
	datad => \inst3|dataOut[5]~28_combout\,
	combout => \GateMDR|dataOut[5]~25_combout\);

-- Location: LCFF_X36_Y6_N31
\instruction_register|internal[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~25_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(5));

-- Location: LCCOMB_X36_Y6_N30
\Control|SR2MUX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|SR2MUX~0_combout\ = (\instruction_register|internal\(5) & ((\Control|State.add0~regout\) # (\Control|State.and0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.add0~regout\,
	datac => \instruction_register|internal\(5),
	datad => \Control|State.and0~regout\,
	combout => \Control|SR2MUX~0_combout\);

-- Location: LCCOMB_X35_Y6_N0
\SR2Mux|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector11~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(4))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(4),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector11~0_combout\);

-- Location: LCFF_X33_Y6_N31
\inst1|inst|ram[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][4]~regout\);

-- Location: LCCOMB_X33_Y6_N4
\inst1|inst|ram[0][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][4]~feeder_combout\ = \GateMDR|dataOut[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~27_combout\,
	combout => \inst1|inst|ram[0][4]~feeder_combout\);

-- Location: LCFF_X33_Y6_N5
\inst1|inst|ram[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][4]~regout\);

-- Location: LCCOMB_X33_Y6_N14
\inst1|inst|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][4]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[0][4]~regout\ & !\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][4]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[0][4]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux11~2_combout\);

-- Location: LCCOMB_X33_Y6_N0
\inst1|inst|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~3_combout\ = (\inst1|inst|Mux11~2_combout\ & ((\inst1|inst|ram[3][4]~regout\) # ((!\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst|Mux11~2_combout\ & (((\inst1|inst|ram[2][4]~regout\ & \inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][4]~regout\,
	datab => \inst1|inst|ram[2][4]~regout\,
	datac => \inst1|inst|Mux11~2_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux11~3_combout\);

-- Location: LCFF_X33_Y3_N21
\inst1|inst|ram[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][4]~regout\);

-- Location: LCFF_X36_Y4_N9
\inst1|inst|ram[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][4]~regout\);

-- Location: LCCOMB_X36_Y4_N8
\inst1|inst|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][4]~regout\) # ((\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[4][4]~regout\ & !\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][4]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[4][4]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux11~0_combout\);

-- Location: LCCOMB_X33_Y3_N20
\inst1|inst|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux11~0_combout\ & (\inst1|inst|ram[7][4]~regout\)) # (!\inst1|inst|Mux11~0_combout\ & ((\inst1|inst|ram[5][4]~regout\))))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][4]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[5][4]~regout\,
	datad => \inst1|inst|Mux11~0_combout\,
	combout => \inst1|inst|Mux11~1_combout\);

-- Location: LCCOMB_X33_Y7_N26
\inst1|inst|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux11~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux11~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Mux11~3_combout\,
	datac => \inst1|inst|Mux11~1_combout\,
	datad => \inst1|inst4|Mux0~0_combout\,
	combout => \inst1|inst|Mux11~4_combout\);

-- Location: LCFF_X33_Y7_N27
\inst1|inst|SR1out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(4));

-- Location: LCCOMB_X35_Y5_N8
\inst3|dataOut[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[4]~29_combout\ = (\inst1|inst|SR1out\(4) & (\Control|ALUK\(0) & ((\Control|ALUK\(1)) # (\SR2Mux|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \SR2Mux|Selector11~0_combout\,
	datac => \inst1|inst|SR1out\(4),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[4]~29_combout\);

-- Location: LCCOMB_X35_Y5_N2
\inst3|dataOut[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[4]~30_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(4))) # (!\Control|ALUK\(1) & ((\ALU|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(4),
	datab => \ALU|Add0~8_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[4]~30_combout\);

-- Location: LCCOMB_X35_Y5_N0
\inst3|dataOut[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[4]~31_combout\ = (\inst3|dataOut[4]~29_combout\) # ((\inst3|dataOut[4]~30_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[4]~29_combout\,
	datad => \inst3|dataOut[4]~30_combout\,
	combout => \inst3|dataOut[4]~31_combout\);

-- Location: LCCOMB_X35_Y5_N14
\GateMDR|dataOut[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~27_combout\ = ((\GateMDR|dataOut[4]~26_combout\ & (\inst2|Data_CPU[4]~11_combout\ & \inst3|dataOut[4]~31_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[4]~26_combout\,
	datab => \GateMDR|dataOut[15]~4_combout\,
	datac => \inst2|Data_CPU[4]~11_combout\,
	datad => \inst3|dataOut[4]~31_combout\,
	combout => \GateMDR|dataOut[4]~27_combout\);

-- Location: LCFF_X35_Y6_N1
\instruction_register|internal[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(4));

-- Location: LCFF_X36_Y4_N17
\inst1|inst|ram[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][7]~regout\);

-- Location: LCFF_X36_Y4_N19
\inst1|inst|ram[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][7]~regout\);

-- Location: LCCOMB_X36_Y4_N16
\inst1|inst|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst1|inst|ram[6][7]~regout\))) # 
-- (!\instruction_register|internal\(1) & (\inst1|inst|ram[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst1|inst|ram[4][7]~regout\,
	datad => \inst1|inst|ram[6][7]~regout\,
	combout => \inst1|inst|Mux24~0_combout\);

-- Location: LCCOMB_X31_Y5_N18
\inst1|inst|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~1_combout\ = (\instruction_register|internal\(0) & ((\inst1|inst|Mux24~0_combout\ & ((\inst1|inst|ram[7][7]~regout\))) # (!\inst1|inst|Mux24~0_combout\ & (\inst1|inst|ram[5][7]~regout\)))) # (!\instruction_register|internal\(0) & 
-- (((\inst1|inst|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst1|inst|ram[5][7]~regout\,
	datac => \inst1|inst|ram[7][7]~regout\,
	datad => \inst1|inst|Mux24~0_combout\,
	combout => \inst1|inst|Mux24~1_combout\);

-- Location: LCCOMB_X32_Y6_N10
\inst1|inst|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux24~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux24~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux24~3_combout\,
	datab => \inst1|inst|Mux24~1_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst1|inst|Mux24~4_combout\);

-- Location: LCFF_X35_Y6_N5
\inst1|inst|SR2out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|inst|Mux24~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(7));

-- Location: LCCOMB_X35_Y6_N18
\SR2Mux|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector8~0_combout\ = (\Control|SR2MUX~0_combout\ & ((\inst1|inst|SR2out\(7)))) # (!\Control|SR2MUX~0_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(4),
	datac => \inst1|inst|SR2out\(7),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector8~0_combout\);

-- Location: LCCOMB_X34_Y6_N12
\ALU|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\SR2Mux|Selector9~0_combout\ $ (\inst1|inst|SR1out\(6) $ (!\ALU|Add0~11\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\SR2Mux|Selector9~0_combout\ & ((\inst1|inst|SR1out\(6)) # (!\ALU|Add0~11\))) # (!\SR2Mux|Selector9~0_combout\ & (\inst1|inst|SR1out\(6) & !\ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector9~0_combout\,
	datab => \inst1|inst|SR1out\(6),
	datad => VCC,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: LCCOMB_X34_Y6_N14
\ALU|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (\inst1|inst|SR1out\(7) & ((\SR2Mux|Selector8~0_combout\ & (\ALU|Add0~13\ & VCC)) # (!\SR2Mux|Selector8~0_combout\ & (!\ALU|Add0~13\)))) # (!\inst1|inst|SR1out\(7) & ((\SR2Mux|Selector8~0_combout\ & (!\ALU|Add0~13\)) # 
-- (!\SR2Mux|Selector8~0_combout\ & ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~15\ = CARRY((\inst1|inst|SR1out\(7) & (!\SR2Mux|Selector8~0_combout\ & !\ALU|Add0~13\)) # (!\inst1|inst|SR1out\(7) & ((!\ALU|Add0~13\) # (!\SR2Mux|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(7),
	datab => \SR2Mux|Selector8~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~14_combout\,
	cout => \ALU|Add0~15\);

-- Location: LCCOMB_X33_Y4_N22
\inst3|dataOut[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[7]~21_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(7))) # (!\Control|ALUK\(1) & ((\ALU|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(7),
	datab => \Control|ALUK\(0),
	datac => \Control|ALUK\(1),
	datad => \ALU|Add0~14_combout\,
	combout => \inst3|dataOut[7]~21_combout\);

-- Location: LCCOMB_X33_Y4_N28
\inst3|dataOut[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[7]~22_combout\ = (\inst3|dataOut[7]~20_combout\) # ((\inst3|dataOut[7]~21_combout\) # ((!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR0~regout\,
	datab => \Control|WideOr21~0_combout\,
	datac => \inst3|dataOut[7]~20_combout\,
	datad => \inst3|dataOut[7]~21_combout\,
	combout => \inst3|dataOut[7]~22_combout\);

-- Location: LCCOMB_X32_Y4_N0
\GateMDR|dataOut[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~21_combout\ = ((\inst2|Data_CPU[7]~8_combout\ & (\GateMDR|dataOut[7]~20_combout\ & \inst3|dataOut[7]~22_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[7]~8_combout\,
	datab => \GateMDR|dataOut[7]~20_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[7]~22_combout\,
	combout => \GateMDR|dataOut[7]~21_combout\);

-- Location: LCFF_X37_Y4_N31
\instruction_register|internal[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(7));

-- Location: LCFF_X35_Y6_N29
\instruction_register|internal[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(10));

-- Location: LCCOMB_X37_Y4_N30
\inst1|inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux1~0_combout\ = (\Control|State.STR1~regout\ & ((\instruction_register|internal\(10)))) # (!\Control|State.STR1~regout\ & (\instruction_register|internal\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR1~regout\,
	datac => \instruction_register|internal\(7),
	datad => \instruction_register|internal\(10),
	combout => \inst1|inst4|Mux1~0_combout\);

-- Location: LCFF_X36_Y4_N27
\inst1|inst|ram[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][6]~regout\);

-- Location: LCCOMB_X36_Y4_N26
\inst1|inst|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux9~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[6][6]~regout\) # (\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[4][6]~regout\ & ((!\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[4][6]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst|ram[6][6]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y3_N4
\inst1|inst|ram[7][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][6]~feeder_combout\ = \GateMDR|dataOut[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~23_combout\,
	combout => \inst1|inst|ram[7][6]~feeder_combout\);

-- Location: LCFF_X36_Y3_N5
\inst1|inst|ram[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][6]~regout\);

-- Location: LCCOMB_X35_Y3_N30
\inst1|inst|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux9~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux9~0_combout\ & ((\inst1|inst|ram[7][6]~regout\))) # (!\inst1|inst|Mux9~0_combout\ & (\inst1|inst|ram[5][6]~regout\)))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[5][6]~regout\,
	datac => \inst1|inst|Mux9~0_combout\,
	datad => \inst1|inst|ram[7][6]~regout\,
	combout => \inst1|inst|Mux9~1_combout\);

-- Location: LCCOMB_X34_Y7_N6
\inst1|inst|ram[2][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][6]~feeder_combout\ = \GateMDR|dataOut[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~23_combout\,
	combout => \inst1|inst|ram[2][6]~feeder_combout\);

-- Location: LCFF_X34_Y7_N7
\inst1|inst|ram[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][6]~regout\);

-- Location: LCFF_X35_Y4_N5
\inst1|inst|ram[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][6]~regout\);

-- Location: LCFF_X32_Y4_N17
\inst1|inst|ram[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][6]~regout\);

-- Location: LCFF_X32_Y4_N19
\inst1|inst|ram[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][6]~regout\);

-- Location: LCCOMB_X32_Y4_N18
\inst1|inst|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux9~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][6]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][6]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[0][6]~regout\,
	datac => \inst1|inst|ram[1][6]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux9~2_combout\);

-- Location: LCCOMB_X35_Y4_N20
\inst1|inst|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux9~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux9~2_combout\ & ((\inst1|inst|ram[3][6]~regout\))) # (!\inst1|inst|Mux9~2_combout\ & (\inst1|inst|ram[2][6]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux1~0_combout\,
	datab => \inst1|inst|ram[2][6]~regout\,
	datac => \inst1|inst|ram[3][6]~regout\,
	datad => \inst1|inst|Mux9~2_combout\,
	combout => \inst1|inst|Mux9~3_combout\);

-- Location: LCCOMB_X34_Y4_N8
\inst1|inst|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux9~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux9~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux9~1_combout\,
	datad => \inst1|inst|Mux9~3_combout\,
	combout => \inst1|inst|Mux9~4_combout\);

-- Location: LCFF_X34_Y4_N9
\inst1|inst|SR1out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(6));

-- Location: LCCOMB_X35_Y4_N8
\inst3|dataOut[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[6]~24_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst1|inst|SR1out\(6)))) # (!\Control|ALUK\(1) & (\ALU|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(0),
	datab => \Control|ALUK\(1),
	datac => \ALU|Add0~12_combout\,
	datad => \inst1|inst|SR1out\(6),
	combout => \inst3|dataOut[6]~24_combout\);

-- Location: LCCOMB_X35_Y6_N16
\SR2Mux|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector9~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(6))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(6),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector9~0_combout\);

-- Location: LCCOMB_X35_Y4_N10
\inst3|dataOut[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[6]~23_combout\ = (\Control|ALUK\(0) & (\inst1|inst|SR1out\(6) & ((\SR2Mux|Selector9~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(0),
	datab => \SR2Mux|Selector9~0_combout\,
	datac => \inst1|inst|SR1out\(6),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[6]~23_combout\);

-- Location: LCCOMB_X35_Y4_N22
\inst3|dataOut[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[6]~25_combout\ = (\inst3|dataOut[6]~24_combout\) # ((\inst3|dataOut[6]~23_combout\) # ((\Control|WideOr21~0_combout\ & !\Control|State.LDR0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr21~0_combout\,
	datab => \Control|State.LDR0~regout\,
	datac => \inst3|dataOut[6]~24_combout\,
	datad => \inst3|dataOut[6]~23_combout\,
	combout => \inst3|dataOut[6]~25_combout\);

-- Location: LCCOMB_X35_Y4_N4
\GateMDR|dataOut[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~23_combout\ = ((\GateMDR|dataOut[6]~22_combout\ & (\inst2|Data_CPU[6]~9_combout\ & \inst3|dataOut[6]~25_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[6]~22_combout\,
	datab => \inst2|Data_CPU[6]~9_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[6]~25_combout\,
	combout => \GateMDR|dataOut[6]~23_combout\);

-- Location: LCFF_X36_Y6_N5
\instruction_register|internal[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(6));

-- Location: LCCOMB_X36_Y6_N4
\inst1|inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux2~0_combout\ = (\Control|State.STR1~regout\ & ((\instruction_register|internal\(9)))) # (!\Control|State.STR1~regout\ & (\instruction_register|internal\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR1~regout\,
	datac => \instruction_register|internal\(6),
	datad => \instruction_register|internal\(9),
	combout => \inst1|inst4|Mux2~0_combout\);

-- Location: LCFF_X32_Y5_N15
\inst1|inst|ram[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][9]~regout\);

-- Location: LCCOMB_X32_Y5_N14
\inst1|inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[6][9]~regout\)) # (!\inst1|inst4|Mux1~0_combout\ & 
-- ((\inst1|inst|ram[4][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][9]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[4][9]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux6~0_combout\);

-- Location: LCFF_X31_Y5_N7
\inst1|inst|ram[7][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][9]~regout\);

-- Location: LCCOMB_X31_Y5_N6
\inst1|inst|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~1_combout\ = (\inst1|inst|Mux6~0_combout\ & (((\inst1|inst|ram[7][9]~regout\) # (!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux6~0_combout\ & (\inst1|inst|ram[5][9]~regout\ & ((\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][9]~regout\,
	datab => \inst1|inst|Mux6~0_combout\,
	datac => \inst1|inst|ram[7][9]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y6_N12
\inst1|inst|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux6~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux6~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux6~3_combout\,
	datac => \inst1|inst4|Mux0~0_combout\,
	datad => \inst1|inst|Mux6~1_combout\,
	combout => \inst1|inst|Mux6~4_combout\);

-- Location: LCFF_X31_Y6_N13
\inst1|inst|SR1out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(9));

-- Location: LCCOMB_X35_Y4_N14
\inst3|dataOut[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[9]~14_combout\ = (\inst1|inst|SR1out\(9) & (\Control|ALUK\(0) & ((\SR2Mux|Selector6~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector6~0_combout\,
	datab => \inst1|inst|SR1out\(9),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[9]~14_combout\);

-- Location: LCCOMB_X35_Y6_N22
\SR2Mux|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector6~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(9))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(9),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector6~0_combout\);

-- Location: LCCOMB_X35_Y6_N8
\SR2Mux|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector7~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(8))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(8),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector7~0_combout\);

-- Location: LCCOMB_X34_Y6_N16
\ALU|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~16_combout\ = ((\inst1|inst|SR1out\(8) $ (\SR2Mux|Selector7~0_combout\ $ (!\ALU|Add0~15\)))) # (GND)
-- \ALU|Add0~17\ = CARRY((\inst1|inst|SR1out\(8) & ((\SR2Mux|Selector7~0_combout\) # (!\ALU|Add0~15\))) # (!\inst1|inst|SR1out\(8) & (\SR2Mux|Selector7~0_combout\ & !\ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(8),
	datab => \SR2Mux|Selector7~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~15\,
	combout => \ALU|Add0~16_combout\,
	cout => \ALU|Add0~17\);

-- Location: LCCOMB_X34_Y6_N18
\ALU|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = (\inst1|inst|SR1out\(9) & ((\SR2Mux|Selector6~0_combout\ & (\ALU|Add0~17\ & VCC)) # (!\SR2Mux|Selector6~0_combout\ & (!\ALU|Add0~17\)))) # (!\inst1|inst|SR1out\(9) & ((\SR2Mux|Selector6~0_combout\ & (!\ALU|Add0~17\)) # 
-- (!\SR2Mux|Selector6~0_combout\ & ((\ALU|Add0~17\) # (GND)))))
-- \ALU|Add0~19\ = CARRY((\inst1|inst|SR1out\(9) & (!\SR2Mux|Selector6~0_combout\ & !\ALU|Add0~17\)) # (!\inst1|inst|SR1out\(9) & ((!\ALU|Add0~17\) # (!\SR2Mux|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(9),
	datab => \SR2Mux|Selector6~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~17\,
	combout => \ALU|Add0~18_combout\,
	cout => \ALU|Add0~19\);

-- Location: LCCOMB_X35_Y4_N12
\inst3|dataOut[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[9]~15_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(9))) # (!\Control|ALUK\(1) & ((\ALU|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(0),
	datab => \inst1|inst|SR1out\(9),
	datac => \ALU|Add0~18_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[9]~15_combout\);

-- Location: LCCOMB_X35_Y4_N2
\inst3|dataOut[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[9]~16_combout\ = (\inst3|dataOut[9]~14_combout\) # ((\inst3|dataOut[9]~15_combout\) # ((\Control|WideOr21~0_combout\ & !\Control|State.LDR0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr21~0_combout\,
	datab => \Control|State.LDR0~regout\,
	datac => \inst3|dataOut[9]~14_combout\,
	datad => \inst3|dataOut[9]~15_combout\,
	combout => \inst3|dataOut[9]~16_combout\);

-- Location: LCCOMB_X31_Y4_N0
\GateMDR|dataOut[9]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~17_combout\ = ((\inst2|Data_CPU[9]~6_combout\ & (\GateMDR|dataOut[9]~16_combout\ & \inst3|dataOut[9]~16_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[9]~6_combout\,
	datab => \GateMDR|dataOut[9]~16_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[9]~16_combout\,
	combout => \GateMDR|dataOut[9]~17_combout\);

-- Location: LCFF_X31_Y4_N9
\instruction_register|internal[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(9));

-- Location: LCCOMB_X36_Y7_N26
\inst1|inst|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~4_combout\ = (\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (!\instruction_register|internal\(9) & !\instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~4_combout\);

-- Location: LCFF_X34_Y5_N25
\inst1|inst|ram[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][15]~regout\);

-- Location: LCFF_X34_Y5_N15
\inst1|inst|ram[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][15]~regout\);

-- Location: LCFF_X34_Y6_N31
\inst1|inst|ram[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][15]~regout\);

-- Location: LCCOMB_X35_Y7_N28
\inst1|inst|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][15]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((!\inst1|inst4|Mux1~0_combout\ & \inst1|inst|ram[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[1][15]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|ram[0][15]~regout\,
	combout => \inst1|inst|Mux0~2_combout\);

-- Location: LCCOMB_X34_Y7_N14
\inst1|inst|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux0~2_combout\ & (\inst1|inst|ram[3][15]~regout\)) # (!\inst1|inst|Mux0~2_combout\ & ((\inst1|inst|ram[2][15]~regout\))))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][15]~regout\,
	datab => \inst1|inst|ram[2][15]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|Mux0~2_combout\,
	combout => \inst1|inst|Mux0~3_combout\);

-- Location: LCCOMB_X33_Y3_N12
\inst1|inst|ram[7][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][15]~feeder_combout\ = \GateMDR|dataOut[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~5_combout\,
	combout => \inst1|inst|ram[7][15]~feeder_combout\);

-- Location: LCFF_X33_Y3_N13
\inst1|inst|ram[7][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][15]~regout\);

-- Location: LCCOMB_X33_Y3_N2
\inst1|inst|ram[5][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[5][15]~feeder_combout\ = \GateMDR|dataOut[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~5_combout\,
	combout => \inst1|inst|ram[5][15]~feeder_combout\);

-- Location: LCFF_X33_Y3_N3
\inst1|inst|ram[5][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[5][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][15]~regout\);

-- Location: LCCOMB_X33_Y3_N24
\inst1|inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~1_combout\ = (\inst1|inst|Mux0~0_combout\ & ((\inst1|inst|ram[7][15]~regout\) # ((!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux0~0_combout\ & (((\inst1|inst4|Mux2~0_combout\ & \inst1|inst|ram[5][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux0~0_combout\,
	datab => \inst1|inst|ram[7][15]~regout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst|ram[5][15]~regout\,
	combout => \inst1|inst|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y3_N18
\inst1|inst|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux0~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux0~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux0~3_combout\,
	datad => \inst1|inst|Mux0~1_combout\,
	combout => \inst1|inst|Mux0~4_combout\);

-- Location: LCFF_X34_Y3_N19
\inst1|inst|SR1out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(15));

-- Location: LCCOMB_X35_Y7_N30
\inst1|inst|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst1|inst|ram[1][15]~regout\))) # 
-- (!\instruction_register|internal\(0) & (\inst1|inst|ram[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[0][15]~regout\,
	datac => \inst1|inst|ram[1][15]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux16~2_combout\);

-- Location: LCCOMB_X34_Y7_N12
\inst1|inst|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~3_combout\ = (\inst1|inst|Mux16~2_combout\ & ((\inst1|inst|ram[3][15]~regout\) # ((!\instruction_register|internal\(1))))) # (!\inst1|inst|Mux16~2_combout\ & (((\inst1|inst|ram[2][15]~regout\ & \instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][15]~regout\,
	datab => \inst1|inst|Mux16~2_combout\,
	datac => \inst1|inst|ram[2][15]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst1|inst|Mux16~3_combout\);

-- Location: LCCOMB_X32_Y5_N8
\inst1|inst|ram[6][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[6][15]~feeder_combout\ = \GateMDR|dataOut[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~5_combout\,
	combout => \inst1|inst|ram[6][15]~feeder_combout\);

-- Location: LCFF_X32_Y5_N9
\inst1|inst|ram[6][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[6][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][15]~regout\);

-- Location: LCCOMB_X32_Y5_N10
\inst1|inst|ram[4][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[4][15]~feeder_combout\ = \GateMDR|dataOut[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~5_combout\,
	combout => \inst1|inst|ram[4][15]~feeder_combout\);

-- Location: LCFF_X32_Y5_N11
\inst1|inst|ram[4][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[4][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][15]~regout\);

-- Location: LCCOMB_X32_Y5_N20
\inst1|inst|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~0_combout\ = (\instruction_register|internal\(1) & ((\inst1|inst|ram[6][15]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((!\instruction_register|internal\(0) & 
-- \inst1|inst|ram[4][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst1|inst|ram[6][15]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst1|inst|ram[4][15]~regout\,
	combout => \inst1|inst|Mux16~0_combout\);

-- Location: LCCOMB_X33_Y3_N14
\inst1|inst|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~1_combout\ = (\inst1|inst|Mux16~0_combout\ & ((\inst1|inst|ram[7][15]~regout\) # ((!\instruction_register|internal\(0))))) # (!\inst1|inst|Mux16~0_combout\ & (((\inst1|inst|ram[5][15]~regout\ & \instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][15]~regout\,
	datab => \inst1|inst|ram[5][15]~regout\,
	datac => \inst1|inst|Mux16~0_combout\,
	datad => \instruction_register|internal\(0),
	combout => \inst1|inst|Mux16~1_combout\);

-- Location: LCCOMB_X34_Y3_N8
\inst1|inst|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux16~4_combout\ = (\instruction_register|internal\(2) & ((\inst1|inst|Mux16~1_combout\))) # (!\instruction_register|internal\(2) & (\inst1|inst|Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Mux16~3_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst1|inst|Mux16~1_combout\,
	combout => \inst1|inst|Mux16~4_combout\);

-- Location: LCFF_X34_Y3_N9
\inst1|inst|SR2out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR2out\(15));

-- Location: LCCOMB_X33_Y6_N8
\SR2Mux|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector0~0_combout\ = (\Control|SR2MUX~0_combout\ & ((\inst1|inst|SR2out\(15)))) # (!\Control|SR2MUX~0_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(4),
	datac => \Control|SR2MUX~0_combout\,
	datad => \inst1|inst|SR2out\(15),
	combout => \SR2Mux|Selector0~0_combout\);

-- Location: LCCOMB_X33_Y3_N6
\inst1|inst|ram[7][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[7][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[7][13]~feeder_combout\);

-- Location: LCFF_X33_Y3_N7
\inst1|inst|ram[7][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[7][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][13]~regout\);

-- Location: LCCOMB_X30_Y3_N14
\inst1|inst|ram[4][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[4][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[4][13]~feeder_combout\);

-- Location: LCFF_X30_Y3_N15
\inst1|inst|ram[4][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[4][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][13]~regout\);

-- Location: LCCOMB_X31_Y3_N28
\inst1|inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~0_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|ram[6][13]~regout\) # ((\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst|ram[4][13]~regout\ & !\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][13]~regout\,
	datab => \inst1|inst|ram[4][13]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y3_N30
\inst1|inst|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux2~0_combout\ & ((\inst1|inst|ram[7][13]~regout\))) # (!\inst1|inst|Mux2~0_combout\ & (\inst1|inst|ram[5][13]~regout\)))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][13]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[7][13]~regout\,
	datad => \inst1|inst|Mux2~0_combout\,
	combout => \inst1|inst|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y6_N14
\inst1|inst|ram[3][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[3][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[3][13]~feeder_combout\);

-- Location: LCFF_X32_Y6_N15
\inst1|inst|ram[3][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[3][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][13]~regout\);

-- Location: LCCOMB_X32_Y7_N30
\inst1|inst|ram[0][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[0][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[0][13]~feeder_combout\);

-- Location: LCFF_X32_Y7_N31
\inst1|inst|ram[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[0][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][13]~regout\);

-- Location: LCCOMB_X32_Y7_N4
\inst1|inst|ram[1][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[1][13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst1|inst|ram[1][13]~feeder_combout\);

-- Location: LCFF_X32_Y7_N5
\inst1|inst|ram[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[1][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][13]~regout\);

-- Location: LCCOMB_X32_Y7_N2
\inst1|inst|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][13]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][13]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[0][13]~regout\,
	datac => \inst1|inst|ram[1][13]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux2~2_combout\);

-- Location: LCCOMB_X34_Y3_N2
\inst1|inst|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~3_combout\ = (\inst1|inst|Mux2~2_combout\ & (((\inst1|inst|ram[3][13]~regout\) # (!\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst|Mux2~2_combout\ & (\inst1|inst|ram[2][13]~regout\ & ((\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[2][13]~regout\,
	datab => \inst1|inst|ram[3][13]~regout\,
	datac => \inst1|inst|Mux2~2_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux2~3_combout\);

-- Location: LCCOMB_X34_Y3_N22
\inst1|inst|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux2~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux2~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux2~1_combout\,
	datad => \inst1|inst|Mux2~3_combout\,
	combout => \inst1|inst|Mux2~4_combout\);

-- Location: LCFF_X34_Y3_N23
\inst1|inst|SR1out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(13));

-- Location: LCFF_X32_Y4_N31
\inst1|inst|ram[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][12]~regout\);

-- Location: LCCOMB_X32_Y4_N24
\inst1|inst|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~2_combout\ = (\inst1|inst4|Mux1~0_combout\ & (((\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[1][12]~regout\)) # (!\inst1|inst4|Mux2~0_combout\ & 
-- ((\inst1|inst|ram[0][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][12]~regout\,
	datab => \inst1|inst4|Mux1~0_combout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst|ram[0][12]~regout\,
	combout => \inst1|inst|Mux3~2_combout\);

-- Location: LCFF_X32_Y6_N27
\inst1|inst|ram[3][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][12]~regout\);

-- Location: LCFF_X32_Y6_N13
\inst1|inst|ram[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][12]~regout\);

-- Location: LCCOMB_X32_Y6_N26
\inst1|inst|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux3~2_combout\ & (\inst1|inst|ram[3][12]~regout\)) # (!\inst1|inst|Mux3~2_combout\ & ((\inst1|inst|ram[2][12]~regout\))))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (\inst1|inst|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux1~0_combout\,
	datab => \inst1|inst|Mux3~2_combout\,
	datac => \inst1|inst|ram[3][12]~regout\,
	datad => \inst1|inst|ram[2][12]~regout\,
	combout => \inst1|inst|Mux3~3_combout\);

-- Location: LCFF_X31_Y5_N21
\inst1|inst|ram[5][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][12]~regout\);

-- Location: LCFF_X32_Y5_N25
\inst1|inst|ram[4][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][12]~regout\);

-- Location: LCCOMB_X32_Y5_N24
\inst1|inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[6][12]~regout\)) # (!\inst1|inst4|Mux1~0_combout\ & 
-- ((\inst1|inst|ram[4][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[6][12]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[4][12]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y5_N10
\inst1|inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~1_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|Mux3~0_combout\ & (\inst1|inst|ram[7][12]~regout\)) # (!\inst1|inst|Mux3~0_combout\ & ((\inst1|inst|ram[5][12]~regout\))))) # (!\inst1|inst4|Mux2~0_combout\ & 
-- (((\inst1|inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[7][12]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[5][12]~regout\,
	datad => \inst1|inst|Mux3~0_combout\,
	combout => \inst1|inst|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y6_N16
\inst1|inst|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux3~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux3~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux0~0_combout\,
	datab => \inst1|inst|Mux3~3_combout\,
	datac => \inst1|inst|Mux3~1_combout\,
	combout => \inst1|inst|Mux3~4_combout\);

-- Location: LCFF_X31_Y6_N17
\inst1|inst|SR1out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(12));

-- Location: LCCOMB_X35_Y6_N28
\SR2Mux|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector5~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(10))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(10),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector5~0_combout\);

-- Location: LCCOMB_X34_Y6_N20
\ALU|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~20_combout\ = ((\inst1|inst|SR1out\(10) $ (\SR2Mux|Selector5~0_combout\ $ (!\ALU|Add0~19\)))) # (GND)
-- \ALU|Add0~21\ = CARRY((\inst1|inst|SR1out\(10) & ((\SR2Mux|Selector5~0_combout\) # (!\ALU|Add0~19\))) # (!\inst1|inst|SR1out\(10) & (\SR2Mux|Selector5~0_combout\ & !\ALU|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(10),
	datab => \SR2Mux|Selector5~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~19\,
	combout => \ALU|Add0~20_combout\,
	cout => \ALU|Add0~21\);

-- Location: LCCOMB_X34_Y6_N22
\ALU|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~22_combout\ = (\SR2Mux|Selector4~0_combout\ & ((\inst1|inst|SR1out\(11) & (\ALU|Add0~21\ & VCC)) # (!\inst1|inst|SR1out\(11) & (!\ALU|Add0~21\)))) # (!\SR2Mux|Selector4~0_combout\ & ((\inst1|inst|SR1out\(11) & (!\ALU|Add0~21\)) # 
-- (!\inst1|inst|SR1out\(11) & ((\ALU|Add0~21\) # (GND)))))
-- \ALU|Add0~23\ = CARRY((\SR2Mux|Selector4~0_combout\ & (!\inst1|inst|SR1out\(11) & !\ALU|Add0~21\)) # (!\SR2Mux|Selector4~0_combout\ & ((!\ALU|Add0~21\) # (!\inst1|inst|SR1out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector4~0_combout\,
	datab => \inst1|inst|SR1out\(11),
	datad => VCC,
	cin => \ALU|Add0~21\,
	combout => \ALU|Add0~22_combout\,
	cout => \ALU|Add0~23\);

-- Location: LCCOMB_X34_Y6_N24
\ALU|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~24_combout\ = ((\SR2Mux|Selector3~0_combout\ $ (\inst1|inst|SR1out\(12) $ (!\ALU|Add0~23\)))) # (GND)
-- \ALU|Add0~25\ = CARRY((\SR2Mux|Selector3~0_combout\ & ((\inst1|inst|SR1out\(12)) # (!\ALU|Add0~23\))) # (!\SR2Mux|Selector3~0_combout\ & (\inst1|inst|SR1out\(12) & !\ALU|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector3~0_combout\,
	datab => \inst1|inst|SR1out\(12),
	datad => VCC,
	cin => \ALU|Add0~23\,
	combout => \ALU|Add0~24_combout\,
	cout => \ALU|Add0~25\);

-- Location: LCCOMB_X34_Y6_N26
\ALU|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~26_combout\ = (\SR2Mux|Selector2~0_combout\ & ((\inst1|inst|SR1out\(13) & (\ALU|Add0~25\ & VCC)) # (!\inst1|inst|SR1out\(13) & (!\ALU|Add0~25\)))) # (!\SR2Mux|Selector2~0_combout\ & ((\inst1|inst|SR1out\(13) & (!\ALU|Add0~25\)) # 
-- (!\inst1|inst|SR1out\(13) & ((\ALU|Add0~25\) # (GND)))))
-- \ALU|Add0~27\ = CARRY((\SR2Mux|Selector2~0_combout\ & (!\inst1|inst|SR1out\(13) & !\ALU|Add0~25\)) # (!\SR2Mux|Selector2~0_combout\ & ((!\ALU|Add0~25\) # (!\inst1|inst|SR1out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector2~0_combout\,
	datab => \inst1|inst|SR1out\(13),
	datad => VCC,
	cin => \ALU|Add0~25\,
	combout => \ALU|Add0~26_combout\,
	cout => \ALU|Add0~27\);

-- Location: LCCOMB_X34_Y6_N28
\ALU|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~28_combout\ = ((\SR2Mux|Selector1~0_combout\ $ (\inst1|inst|SR1out\(14) $ (!\ALU|Add0~27\)))) # (GND)
-- \ALU|Add0~29\ = CARRY((\SR2Mux|Selector1~0_combout\ & ((\inst1|inst|SR1out\(14)) # (!\ALU|Add0~27\))) # (!\SR2Mux|Selector1~0_combout\ & (\inst1|inst|SR1out\(14) & !\ALU|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector1~0_combout\,
	datab => \inst1|inst|SR1out\(14),
	datad => VCC,
	cin => \ALU|Add0~27\,
	combout => \ALU|Add0~28_combout\,
	cout => \ALU|Add0~29\);

-- Location: LCCOMB_X34_Y6_N30
\ALU|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~30_combout\ = \inst1|inst|SR1out\(15) $ (\ALU|Add0~29\ $ (\SR2Mux|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|SR1out\(15),
	datad => \SR2Mux|Selector0~0_combout\,
	cin => \ALU|Add0~29\,
	combout => \ALU|Add0~30_combout\);

-- Location: LCCOMB_X34_Y5_N6
\inst3|dataOut[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[15]~1_combout\ = (\Control|ALUK\(1) & (\inst1|inst|SR1out\(15) $ (((!\Control|ALUK\(0)))))) # (!\Control|ALUK\(1) & (\inst1|inst|SR1out\(15) & (\SR2Mux|Selector0~0_combout\ & \Control|ALUK\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \inst1|inst|SR1out\(15),
	datac => \SR2Mux|Selector0~0_combout\,
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[15]~1_combout\);

-- Location: LCCOMB_X34_Y5_N20
\inst3|dataOut[15]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[15]~3_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[15]~1_combout\) # ((\inst3|dataOut[15]~2_combout\ & \ALU|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~2_combout\,
	datab => \inst3|dataOut[15]~0_combout\,
	datac => \ALU|Add0~30_combout\,
	datad => \inst3|dataOut[15]~1_combout\,
	combout => \inst3|dataOut[15]~3_combout\);

-- Location: LCCOMB_X30_Y5_N18
\inst2|Data_CPU[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[15]~0_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(15))) # (!\inst2|Equal0~4_combout\ & ((\Data~0\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(15),
	datab => \inst2|Equal0~4_combout\,
	datac => \Data~0\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[15]~0_combout\);

-- Location: LCCOMB_X34_Y5_N14
\GateMDR|dataOut[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~5_combout\ = ((\GateMDR|dataOut[15]~2_combout\ & (\inst3|dataOut[15]~3_combout\ & \inst2|Data_CPU[15]~0_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~2_combout\,
	datab => \GateMDR|dataOut[15]~4_combout\,
	datac => \inst3|dataOut[15]~3_combout\,
	datad => \inst2|Data_CPU[15]~0_combout\,
	combout => \GateMDR|dataOut[15]~5_combout\);

-- Location: LCFF_X35_Y6_N27
\instruction_register|internal[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(15));

-- Location: LCCOMB_X36_Y6_N16
\Control|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector19~0_combout\ = (!\instruction_register|internal\(13) & (\Control|State.Decode~regout\ & !\instruction_register|internal\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(13),
	datac => \Control|State.Decode~regout\,
	datad => \instruction_register|internal\(15),
	combout => \Control|Selector19~0_combout\);

-- Location: LCCOMB_X36_Y6_N2
\Control|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector22~0_combout\ = (\instruction_register|internal\(12) & (!\instruction_register|internal\(14) & \Control|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(12),
	datab => \instruction_register|internal\(14),
	datad => \Control|Selector19~0_combout\,
	combout => \Control|Selector22~0_combout\);

-- Location: LCCOMB_X36_Y6_N12
\Control|Next_state.add0_464\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.add0_464~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Selector22~0_combout\)) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Next_state.add0_464~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|WideOr0~0clkctrl_outclk\,
	datac => \Control|Selector22~0_combout\,
	datad => \Control|Next_state.add0_464~combout\,
	combout => \Control|Next_state.add0_464~combout\);

-- Location: LCFF_X36_Y6_N13
\Control|State.add0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.add0_464~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.add0~regout\);

-- Location: LCCOMB_X36_Y6_N0
\Control|WideOr23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr23~combout\ = (\Control|State.and0~regout\) # ((\Control|State.add0~regout\) # ((\Control|State.not0~regout\) # (\Control|State.LDR3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.and0~regout\,
	datab => \Control|State.add0~regout\,
	datac => \Control|State.not0~regout\,
	datad => \Control|State.LDR3~regout\,
	combout => \Control|WideOr23~combout\);

-- Location: LCCOMB_X36_Y7_N20
\inst1|inst|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Decoder0~1_combout\ = (\instruction_register|internal\(10) & (\Control|WideOr23~combout\ & (!\instruction_register|internal\(9) & \instruction_register|internal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \Control|WideOr23~combout\,
	datac => \instruction_register|internal\(9),
	datad => \instruction_register|internal\(11),
	combout => \inst1|inst|Decoder0~1_combout\);

-- Location: LCFF_X32_Y5_N19
\inst1|inst|ram[6][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[6][11]~regout\);

-- Location: LCFF_X32_Y5_N1
\inst1|inst|ram[4][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[4][11]~regout\);

-- Location: LCCOMB_X32_Y5_N0
\inst1|inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~0_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst4|Mux1~0_combout\ & (\inst1|inst|ram[6][11]~regout\)) # (!\inst1|inst4|Mux1~0_combout\ & 
-- ((\inst1|inst|ram[4][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[6][11]~regout\,
	datac => \inst1|inst|ram[4][11]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux4~0_combout\);

-- Location: LCFF_X31_Y5_N23
\inst1|inst|ram[7][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][11]~regout\);

-- Location: LCCOMB_X31_Y5_N22
\inst1|inst|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~1_combout\ = (\inst1|inst|Mux4~0_combout\ & (((\inst1|inst|ram[7][11]~regout\) # (!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux4~0_combout\ & (\inst1|inst|ram[5][11]~regout\ & ((\inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[5][11]~regout\,
	datab => \inst1|inst|Mux4~0_combout\,
	datac => \inst1|inst|ram[7][11]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux4~1_combout\);

-- Location: LCFF_X32_Y6_N25
\inst1|inst|ram[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][11]~regout\);

-- Location: LCFF_X32_Y7_N17
\inst1|inst|ram[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][11]~regout\);

-- Location: LCCOMB_X32_Y7_N22
\inst1|inst|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][11]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][11]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[0][11]~regout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[1][11]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux4~2_combout\);

-- Location: LCCOMB_X31_Y6_N26
\inst1|inst|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux4~2_combout\ & (\inst1|inst|ram[3][11]~regout\)) # (!\inst1|inst|Mux4~2_combout\ & ((\inst1|inst|ram[2][11]~regout\))))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][11]~regout\,
	datab => \inst1|inst|ram[2][11]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|Mux4~2_combout\,
	combout => \inst1|inst|Mux4~3_combout\);

-- Location: LCCOMB_X31_Y6_N28
\inst1|inst|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux4~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux4~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux4~1_combout\,
	datad => \inst1|inst|Mux4~3_combout\,
	combout => \inst1|inst|Mux4~4_combout\);

-- Location: LCFF_X31_Y6_N29
\inst1|inst|SR1out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(11));

-- Location: LCCOMB_X35_Y6_N10
\SR2Mux|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector4~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(11))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(11),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y5_N0
\inst3|dataOut[11]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[11]~10_combout\ = (\inst1|inst|SR1out\(11) & (\Control|ALUK\(0) & ((\SR2Mux|Selector4~0_combout\) # (\Control|ALUK\(1))))) # (!\inst1|inst|SR1out\(11) & (!\Control|ALUK\(0) & ((\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(11),
	datab => \Control|ALUK\(0),
	datac => \SR2Mux|Selector4~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[11]~10_combout\);

-- Location: LCCOMB_X34_Y5_N22
\inst3|dataOut[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[11]~11_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[11]~10_combout\) # ((\ALU|Add0~22_combout\ & \inst3|dataOut[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~0_combout\,
	datab => \ALU|Add0~22_combout\,
	datac => \inst3|dataOut[15]~2_combout\,
	datad => \inst3|dataOut[11]~10_combout\,
	combout => \inst3|dataOut[11]~11_combout\);

-- Location: LCCOMB_X33_Y5_N28
\GateMDR|dataOut[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~13_combout\ = ((\inst2|Data_CPU[11]~4_combout\ & (\GateMDR|dataOut[11]~12_combout\ & \inst3|dataOut[11]~11_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[11]~4_combout\,
	datab => \GateMDR|dataOut[11]~12_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[11]~11_combout\,
	combout => \GateMDR|dataOut[11]~13_combout\);

-- Location: LCFF_X35_Y6_N23
\instruction_register|internal[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(11));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(8),
	combout => \Switches~combout\(8));

-- Location: LCCOMB_X31_Y4_N26
\inst2|Data_CPU[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[8]~7_combout\ = ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(8)))) # (!\inst2|Equal0~4_combout\ & (\Data~7\))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~7\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Mem_Read~0_combout\,
	datad => \Switches~combout\(8),
	combout => \inst2|Data_CPU[8]~7_combout\);

-- Location: LCFF_X32_Y6_N9
\inst1|inst|ram[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][8]~regout\);

-- Location: LCFF_X32_Y6_N7
\inst1|inst|ram[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[3][8]~regout\);

-- Location: LCFF_X32_Y4_N13
\inst1|inst|ram[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][8]~regout\);

-- Location: LCFF_X32_Y4_N3
\inst1|inst|ram[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[1][8]~regout\);

-- Location: LCCOMB_X32_Y4_N2
\inst1|inst|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[1][8]~regout\) # (\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (\inst1|inst|ram[0][8]~regout\ & ((!\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux2~0_combout\,
	datab => \inst1|inst|ram[0][8]~regout\,
	datac => \inst1|inst|ram[1][8]~regout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y6_N6
\inst1|inst|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux7~2_combout\ & ((\inst1|inst|ram[3][8]~regout\))) # (!\inst1|inst|Mux7~2_combout\ & (\inst1|inst|ram[2][8]~regout\)))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux1~0_combout\,
	datab => \inst1|inst|ram[2][8]~regout\,
	datac => \inst1|inst|ram[3][8]~regout\,
	datad => \inst1|inst|Mux7~2_combout\,
	combout => \inst1|inst|Mux7~3_combout\);

-- Location: LCFF_X31_Y5_N27
\inst1|inst|ram[7][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][8]~regout\);

-- Location: LCFF_X31_Y5_N5
\inst1|inst|ram[5][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][8]~regout\);

-- Location: LCCOMB_X31_Y5_N4
\inst1|inst|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~1_combout\ = (\inst1|inst|Mux7~0_combout\ & ((\inst1|inst|ram[7][8]~regout\) # ((!\inst1|inst4|Mux2~0_combout\)))) # (!\inst1|inst|Mux7~0_combout\ & (((\inst1|inst|ram[5][8]~regout\ & \inst1|inst4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux7~0_combout\,
	datab => \inst1|inst|ram[7][8]~regout\,
	datac => \inst1|inst|ram[5][8]~regout\,
	datad => \inst1|inst4|Mux2~0_combout\,
	combout => \inst1|inst|Mux7~1_combout\);

-- Location: LCCOMB_X31_Y6_N2
\inst1|inst|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux7~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux7~1_combout\))) # (!\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux7~3_combout\,
	datad => \inst1|inst|Mux7~1_combout\,
	combout => \inst1|inst|Mux7~4_combout\);

-- Location: LCFF_X31_Y6_N3
\inst1|inst|SR1out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(8));

-- Location: LCCOMB_X34_Y4_N24
\inst3|dataOut[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[8]~17_combout\ = (\Control|ALUK\(0) & (\inst1|inst|SR1out\(8) & ((\SR2Mux|Selector7~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector7~0_combout\,
	datab => \Control|ALUK\(0),
	datac => \inst1|inst|SR1out\(8),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[8]~17_combout\);

-- Location: LCCOMB_X34_Y4_N30
\inst3|dataOut[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[8]~18_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst1|inst|SR1out\(8))) # (!\Control|ALUK\(1) & ((\ALU|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \Control|ALUK\(0),
	datac => \inst1|inst|SR1out\(8),
	datad => \ALU|Add0~16_combout\,
	combout => \inst3|dataOut[8]~18_combout\);

-- Location: LCCOMB_X34_Y4_N16
\inst3|dataOut[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[8]~19_combout\ = (\inst3|dataOut[8]~17_combout\) # ((\inst3|dataOut[8]~18_combout\) # ((\Control|WideOr21~0_combout\ & !\Control|State.LDR0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr21~0_combout\,
	datab => \Control|State.LDR0~regout\,
	datac => \inst3|dataOut[8]~17_combout\,
	datad => \inst3|dataOut[8]~18_combout\,
	combout => \inst3|dataOut[8]~19_combout\);

-- Location: LCCOMB_X31_Y4_N30
\GateMDR|dataOut[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~19_combout\ = ((\GateMDR|dataOut[8]~18_combout\ & (\inst2|Data_CPU[8]~7_combout\ & \inst3|dataOut[8]~19_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[8]~18_combout\,
	datab => \inst2|Data_CPU[8]~7_combout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \inst3|dataOut[8]~19_combout\,
	combout => \GateMDR|dataOut[8]~19_combout\);

-- Location: LCFF_X31_Y4_N31
\instruction_register|internal[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(8));

-- Location: LCCOMB_X35_Y5_N24
\inst1|inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4|Mux0~0_combout\ = (\Control|State.STR1~regout\ & (\instruction_register|internal\(11))) # (!\Control|State.STR1~regout\ & ((\instruction_register|internal\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.STR1~regout\,
	datab => \instruction_register|internal\(11),
	datad => \instruction_register|internal\(8),
	combout => \inst1|inst4|Mux0~0_combout\);

-- Location: LCFF_X33_Y3_N9
\inst1|inst|ram[7][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[7][14]~regout\);

-- Location: LCFF_X33_Y3_N23
\inst1|inst|ram[5][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst1|inst|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[5][14]~regout\);

-- Location: LCCOMB_X33_Y3_N4
\inst1|inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~1_combout\ = (\inst1|inst|Mux1~0_combout\ & (((\inst1|inst|ram[7][14]~regout\)) # (!\inst1|inst4|Mux2~0_combout\))) # (!\inst1|inst|Mux1~0_combout\ & (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[5][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Mux1~0_combout\,
	datab => \inst1|inst4|Mux2~0_combout\,
	datac => \inst1|inst|ram[7][14]~regout\,
	datad => \inst1|inst|ram[5][14]~regout\,
	combout => \inst1|inst|Mux1~1_combout\);

-- Location: LCCOMB_X33_Y6_N28
\inst1|inst|ram[2][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|ram[2][14]~feeder_combout\ = \GateMDR|dataOut[14]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~7_combout\,
	combout => \inst1|inst|ram[2][14]~feeder_combout\);

-- Location: LCFF_X33_Y6_N29
\inst1|inst|ram[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|ram[2][14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[2][14]~regout\);

-- Location: LCFF_X33_Y6_N23
\inst1|inst|ram[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|ram[0][14]~regout\);

-- Location: LCCOMB_X32_Y4_N14
\inst1|inst|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~2_combout\ = (\inst1|inst4|Mux2~0_combout\ & ((\inst1|inst|ram[1][14]~regout\) # ((\inst1|inst4|Mux1~0_combout\)))) # (!\inst1|inst4|Mux2~0_combout\ & (((\inst1|inst|ram[0][14]~regout\ & !\inst1|inst4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[1][14]~regout\,
	datab => \inst1|inst|ram[0][14]~regout\,
	datac => \inst1|inst4|Mux2~0_combout\,
	datad => \inst1|inst4|Mux1~0_combout\,
	combout => \inst1|inst|Mux1~2_combout\);

-- Location: LCCOMB_X33_Y7_N2
\inst1|inst|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~3_combout\ = (\inst1|inst4|Mux1~0_combout\ & ((\inst1|inst|Mux1~2_combout\ & (\inst1|inst|ram[3][14]~regout\)) # (!\inst1|inst|Mux1~2_combout\ & ((\inst1|inst|ram[2][14]~regout\))))) # (!\inst1|inst4|Mux1~0_combout\ & 
-- (((\inst1|inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|ram[3][14]~regout\,
	datab => \inst1|inst|ram[2][14]~regout\,
	datac => \inst1|inst4|Mux1~0_combout\,
	datad => \inst1|inst|Mux1~2_combout\,
	combout => \inst1|inst|Mux1~3_combout\);

-- Location: LCCOMB_X34_Y3_N28
\inst1|inst|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Mux1~4_combout\ = (\inst1|inst4|Mux0~0_combout\ & (\inst1|inst|Mux1~1_combout\)) # (!\inst1|inst4|Mux0~0_combout\ & ((\inst1|inst|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst4|Mux0~0_combout\,
	datac => \inst1|inst|Mux1~1_combout\,
	datad => \inst1|inst|Mux1~3_combout\,
	combout => \inst1|inst|Mux1~4_combout\);

-- Location: LCFF_X34_Y3_N29
\inst1|inst|SR1out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|inst|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|SR1out\(14));

-- Location: LCCOMB_X33_Y6_N26
\inst3|dataOut[14]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[14]~4_combout\ = (\inst1|inst|SR1out\(14) & (\Control|ALUK\(0) & ((\SR2Mux|Selector1~0_combout\) # (\Control|ALUK\(1))))) # (!\inst1|inst|SR1out\(14) & (((\Control|ALUK\(1) & !\Control|ALUK\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector1~0_combout\,
	datab => \inst1|inst|SR1out\(14),
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[14]~4_combout\);

-- Location: LCCOMB_X33_Y6_N12
\inst3|dataOut[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[14]~5_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[14]~4_combout\) # ((\inst3|dataOut[15]~2_combout\ & \ALU|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~0_combout\,
	datab => \inst3|dataOut[15]~2_combout\,
	datac => \ALU|Add0~28_combout\,
	datad => \inst3|dataOut[14]~4_combout\,
	combout => \inst3|dataOut[14]~5_combout\);

-- Location: LCCOMB_X33_Y6_N22
\GateMDR|dataOut[14]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~7_combout\ = ((\GateMDR|dataOut[14]~6_combout\ & (\inst2|Data_CPU[14]~1_combout\ & \inst3|dataOut[14]~5_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[14]~6_combout\,
	datab => \GateMDR|dataOut[15]~4_combout\,
	datac => \inst2|Data_CPU[14]~1_combout\,
	datad => \inst3|dataOut[14]~5_combout\,
	combout => \GateMDR|dataOut[14]~7_combout\);

-- Location: LCFF_X36_Y6_N19
\instruction_register|internal[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(14));

-- Location: LCCOMB_X36_Y6_N26
\Control|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector20~0_combout\ = (!\instruction_register|internal\(13) & (!\instruction_register|internal\(14) & (\instruction_register|internal\(12) & \instruction_register|internal\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(13),
	datab => \instruction_register|internal\(14),
	datac => \instruction_register|internal\(12),
	datad => \instruction_register|internal\(15),
	combout => \Control|Selector20~0_combout\);

-- Location: LCCOMB_X37_Y6_N8
\Control|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector20~1_combout\ = (\Control|State.Decode~regout\ & \Control|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|State.Decode~regout\,
	datad => \Control|Selector20~0_combout\,
	combout => \Control|Selector20~1_combout\);

-- Location: LCCOMB_X37_Y6_N16
\Control|Next_state.not0_448\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.not0_448~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Selector20~1_combout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.not0_448~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.not0_448~combout\,
	datac => \Control|Selector20~1_combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.not0_448~combout\);

-- Location: LCFF_X36_Y6_N1
\Control|State.not0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \Control|Next_state.not0_448~combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.not0~regout\);

-- Location: LCCOMB_X36_Y6_N8
\Control|WideOr21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr21~0_combout\ = (!\Control|State.add0~regout\ & (!\Control|State.not0~regout\ & (!\Control|State.STR1~regout\ & !\Control|State.and0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.add0~regout\,
	datab => \Control|State.not0~regout\,
	datac => \Control|State.STR1~regout\,
	datad => \Control|State.and0~regout\,
	combout => \Control|WideOr21~0_combout\);

-- Location: LCCOMB_X34_Y5_N8
\inst3|dataOut[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[15]~0_combout\ = (!\Control|State.LDR0~regout\ & \Control|WideOr21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.LDR0~regout\,
	datac => \Control|WideOr21~0_combout\,
	combout => \inst3|dataOut[15]~0_combout\);

-- Location: LCCOMB_X33_Y3_N0
\inst3|dataOut[13]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[13]~6_combout\ = (\inst1|inst|SR1out\(13) & (\Control|ALUK\(0) & ((\SR2Mux|Selector2~0_combout\) # (\Control|ALUK\(1))))) # (!\inst1|inst|SR1out\(13) & (((\Control|ALUK\(1) & !\Control|ALUK\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector2~0_combout\,
	datab => \inst1|inst|SR1out\(13),
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[13]~6_combout\);

-- Location: LCCOMB_X33_Y3_N26
\inst3|dataOut[13]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[13]~7_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[13]~6_combout\) # ((\inst3|dataOut[15]~2_combout\ & \ALU|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~2_combout\,
	datab => \inst3|dataOut[15]~0_combout\,
	datac => \ALU|Add0~26_combout\,
	datad => \inst3|dataOut[13]~6_combout\,
	combout => \inst3|dataOut[13]~7_combout\);

-- Location: LCCOMB_X33_Y3_N28
\GateMDR|dataOut[13]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~9_combout\ = ((\inst2|Data_CPU[13]~2_combout\ & (\GateMDR|dataOut[13]~8_combout\ & \inst3|dataOut[13]~7_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \inst2|Data_CPU[13]~2_combout\,
	datac => \GateMDR|dataOut[13]~8_combout\,
	datad => \inst3|dataOut[13]~7_combout\,
	combout => \GateMDR|dataOut[13]~9_combout\);

-- Location: LCFF_X36_Y6_N3
\instruction_register|internal[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(13));

-- Location: LCCOMB_X36_Y6_N24
\Control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~0_combout\ = (\instruction_register|internal\(14) & (\Control|State.Decode~regout\ & !\instruction_register|internal\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(14),
	datac => \Control|State.Decode~regout\,
	datad => \instruction_register|internal\(15),
	combout => \Control|Selector1~0_combout\);

-- Location: LCCOMB_X37_Y6_N30
\Control|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector1~1_combout\ = (\instruction_register|internal\(13) & (!\instruction_register|internal\(12) & \Control|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(13),
	datac => \instruction_register|internal\(12),
	datad => \Control|Selector1~0_combout\,
	combout => \Control|Selector1~1_combout\);

-- Location: LCCOMB_X38_Y6_N12
\Control|Next_state.LDR0_424\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LDR0_424~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Selector1~1_combout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LDR0_424~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.LDR0_424~combout\,
	datac => \Control|Selector1~1_combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.LDR0_424~combout\);

-- Location: LCFF_X38_Y6_N13
\Control|State.LDR0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.LDR0_424~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LDR0~regout\);

-- Location: LCCOMB_X38_Y6_N26
\Control|Next_state.LDR1_416\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LDR1_416~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LDR0~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LDR1_416~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.LDR1_416~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LDR0~regout\,
	combout => \Control|Next_state.LDR1_416~combout\);

-- Location: LCCOMB_X38_Y6_N30
\Control|State.LDR1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|State.LDR1~feeder_combout\ = \Control|Next_state.LDR1_416~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Next_state.LDR1_416~combout\,
	combout => \Control|State.LDR1~feeder_combout\);

-- Location: LCFF_X38_Y6_N31
\Control|State.LDR1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|State.LDR1~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LDR1~regout\);

-- Location: LCCOMB_X38_Y6_N0
\Control|Next_state.LDR2_408\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LDR2_408~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|State.LDR1~regout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.LDR2_408~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.LDR2_408~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|State.LDR1~regout\,
	combout => \Control|Next_state.LDR2_408~combout\);

-- Location: LCCOMB_X38_Y6_N28
\Control|State.LDR2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|State.LDR2~feeder_combout\ = \Control|Next_state.LDR2_408~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Next_state.LDR2_408~combout\,
	combout => \Control|State.LDR2~feeder_combout\);

-- Location: LCFF_X38_Y6_N29
\Control|State.LDR2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|State.LDR2~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LDR2~regout\);

-- Location: LCCOMB_X37_Y6_N4
\Control|WideOr19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr19~0_combout\ = (\Control|State.LDR1~regout\) # ((\Control|State.LoadMDR_2~regout\) # ((\Control|State.LoadMDR~regout\) # (\Control|State.LDR2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR1~regout\,
	datab => \Control|State.LoadMDR_2~regout\,
	datac => \Control|State.LoadMDR~regout\,
	datad => \Control|State.LDR2~regout\,
	combout => \Control|WideOr19~0_combout\);

-- Location: LCCOMB_X37_Y5_N20
\inst2|Mem_Read~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mem_Read~0_combout\ = (!\Control|State.STR2~regout\ & (!\Control|State.STR3~regout\ & \Control|WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR2~regout\,
	datac => \Control|State.STR3~regout\,
	datad => \Control|WideOr19~0_combout\,
	combout => \inst2|Mem_Read~0_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(10),
	combout => \Switches~combout\(10));

-- Location: LCCOMB_X30_Y5_N30
\inst2|Data_CPU[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[10]~5_combout\ = ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(10)))) # (!\inst2|Equal0~4_combout\ & (\Data~5\))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~5\,
	datab => \inst2|Mem_Read~0_combout\,
	datac => \Switches~combout\(10),
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[10]~5_combout\);

-- Location: LCFF_X33_Y5_N17
\MDR|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[10]~regout\);

-- Location: LCCOMB_X33_Y5_N16
\GateMDR|dataOut[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~14_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[10]~regout\ & ((\MDR|regOp:ram[10]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[10]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[10]~regout\,
	datac => \MDR|regOp:ram[10]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[10]~14_combout\);

-- Location: LCCOMB_X34_Y5_N12
\inst3|dataOut[10]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[10]~12_combout\ = (\inst1|inst|SR1out\(10) & (\Control|ALUK\(0) & ((\SR2Mux|Selector5~0_combout\) # (\Control|ALUK\(1))))) # (!\inst1|inst|SR1out\(10) & (!\Control|ALUK\(0) & ((\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR1out\(10),
	datab => \Control|ALUK\(0),
	datac => \SR2Mux|Selector5~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[10]~12_combout\);

-- Location: LCCOMB_X34_Y5_N30
\inst3|dataOut[10]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[10]~13_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[10]~12_combout\) # ((\ALU|Add0~20_combout\ & \inst3|dataOut[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~0_combout\,
	datab => \ALU|Add0~20_combout\,
	datac => \inst3|dataOut[15]~2_combout\,
	datad => \inst3|dataOut[10]~12_combout\,
	combout => \inst3|dataOut[10]~13_combout\);

-- Location: LCCOMB_X33_Y5_N10
\GateMDR|dataOut[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~15_combout\ = ((\inst2|Data_CPU[10]~5_combout\ & (\GateMDR|dataOut[10]~14_combout\ & \inst3|dataOut[10]~13_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \inst2|Data_CPU[10]~5_combout\,
	datac => \GateMDR|dataOut[10]~14_combout\,
	datad => \inst3|dataOut[10]~13_combout\,
	combout => \GateMDR|dataOut[10]~15_combout\);

-- Location: LCCOMB_X35_Y5_N4
\inst12|regOp:ram[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[10]~feeder_combout\ = \GateMDR|dataOut[10]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~15_combout\,
	combout => \inst12|regOp:ram[10]~feeder_combout\);

-- Location: LCCOMB_X36_Y5_N30
\Control|WideOr18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr18~0_combout\ = (\Control|State.STR0~regout\) # ((\Control|State.PCtoMAR~regout\) # (\Control|State.LDR0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR0~regout\,
	datac => \Control|State.PCtoMAR~regout\,
	datad => \Control|State.LDR0~regout\,
	combout => \Control|WideOr18~0_combout\);

-- Location: LCFF_X35_Y5_N5
\inst12|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[10]~regout\);

-- Location: LCFF_X32_Y3_N19
\inst12|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[8]~regout\);

-- Location: LCFF_X35_Y5_N27
\inst12|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[11]~regout\);

-- Location: LCCOMB_X32_Y3_N18
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst12|regOp:ram[9]~regout\ & (\inst12|regOp:ram[10]~regout\ & (\inst12|regOp:ram[8]~regout\ & \inst12|regOp:ram[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[9]~regout\,
	datab => \inst12|regOp:ram[10]~regout\,
	datac => \inst12|regOp:ram[8]~regout\,
	datad => \inst12|regOp:ram[11]~regout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y5_N30
\inst12|regOp:ram[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[5]~feeder_combout\ = \GateMDR|dataOut[5]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~25_combout\,
	combout => \inst12|regOp:ram[5]~feeder_combout\);

-- Location: LCFF_X35_Y5_N31
\inst12|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[5]~regout\);

-- Location: LCCOMB_X35_Y4_N26
\inst12|regOp:ram[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[6]~feeder_combout\ = \GateMDR|dataOut[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~23_combout\,
	combout => \inst12|regOp:ram[6]~feeder_combout\);

-- Location: LCFF_X35_Y4_N27
\inst12|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[6]~regout\);

-- Location: LCFF_X35_Y4_N1
\inst12|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[7]~regout\);

-- Location: LCCOMB_X35_Y5_N10
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst12|regOp:ram[4]~regout\ & (\inst12|regOp:ram[5]~regout\ & (\inst12|regOp:ram[6]~regout\ & \inst12|regOp:ram[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[4]~regout\,
	datab => \inst12|regOp:ram[5]~regout\,
	datac => \inst12|regOp:ram[6]~regout\,
	datad => \inst12|regOp:ram[7]~regout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y3_N8
\inst12|regOp:ram[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[14]~feeder_combout\ = \GateMDR|dataOut[14]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~7_combout\,
	combout => \inst12|regOp:ram[14]~feeder_combout\);

-- Location: LCFF_X32_Y3_N9
\inst12|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[14]~regout\);

-- Location: LCFF_X32_Y3_N23
\inst12|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[13]~regout\);

-- Location: LCCOMB_X35_Y5_N16
\inst12|regOp:ram[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[15]~feeder_combout\ = \GateMDR|dataOut[15]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~5_combout\,
	combout => \inst12|regOp:ram[15]~feeder_combout\);

-- Location: LCFF_X35_Y5_N17
\inst12|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[15]~regout\);

-- Location: LCCOMB_X32_Y3_N22
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst12|regOp:ram[12]~regout\ & (\inst12|regOp:ram[14]~regout\ & (\inst12|regOp:ram[13]~regout\ & \inst12|regOp:ram[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[12]~regout\,
	datab => \inst12|regOp:ram[14]~regout\,
	datac => \inst12|regOp:ram[13]~regout\,
	datad => \inst12|regOp:ram[15]~regout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y3_N0
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~1_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y5_N2
\inst2|Data_CPU[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[12]~3_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(12))) # (!\inst2|Equal0~4_combout\ & ((\Data~3\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(12),
	datab => \inst2|Equal0~4_combout\,
	datac => \Data~3\,
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[12]~3_combout\);

-- Location: LCFF_X33_Y5_N25
\MDR|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[12]~regout\);

-- Location: LCCOMB_X33_Y5_N24
\GateMDR|dataOut[12]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~10_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[12]~regout\ & ((\MDR|regOp:ram[12]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[12]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[12]~regout\,
	datac => \MDR|regOp:ram[12]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[12]~10_combout\);

-- Location: LCCOMB_X35_Y6_N4
\SR2Mux|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector3~0_combout\ = (\Control|SR2MUX~0_combout\ & (\inst1|inst|SR2out\(12))) # (!\Control|SR2MUX~0_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|SR2out\(12),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~0_combout\,
	combout => \SR2Mux|Selector3~0_combout\);

-- Location: LCCOMB_X34_Y5_N28
\inst3|dataOut[12]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[12]~8_combout\ = (\Control|ALUK\(1) & ((\inst1|inst|SR1out\(12) $ (!\Control|ALUK\(0))))) # (!\Control|ALUK\(1) & (\SR2Mux|Selector3~0_combout\ & (\inst1|inst|SR1out\(12) & \Control|ALUK\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \SR2Mux|Selector3~0_combout\,
	datac => \inst1|inst|SR1out\(12),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[12]~8_combout\);

-- Location: LCCOMB_X34_Y5_N18
\inst3|dataOut[12]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[12]~9_combout\ = (\inst3|dataOut[15]~0_combout\) # ((\inst3|dataOut[12]~8_combout\) # ((\inst3|dataOut[15]~2_combout\ & \ALU|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[15]~2_combout\,
	datab => \inst3|dataOut[15]~0_combout\,
	datac => \ALU|Add0~24_combout\,
	datad => \inst3|dataOut[12]~8_combout\,
	combout => \inst3|dataOut[12]~9_combout\);

-- Location: LCCOMB_X33_Y5_N0
\GateMDR|dataOut[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~11_combout\ = ((\inst2|Data_CPU[12]~3_combout\ & (\GateMDR|dataOut[12]~10_combout\ & \inst3|dataOut[12]~9_combout\))) # (!\GateMDR|dataOut[15]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~4_combout\,
	datab => \inst2|Data_CPU[12]~3_combout\,
	datac => \GateMDR|dataOut[12]~10_combout\,
	datad => \inst3|dataOut[12]~9_combout\,
	combout => \GateMDR|dataOut[12]~11_combout\);

-- Location: LCFF_X36_Y6_N7
\instruction_register|internal[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(12));

-- Location: LCCOMB_X36_Y6_N14
\Control|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector19~1_combout\ = (!\instruction_register|internal\(12) & (\Control|Selector19~0_combout\ & !\instruction_register|internal\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(12),
	datac => \Control|Selector19~0_combout\,
	datad => \instruction_register|internal\(14),
	combout => \Control|Selector19~1_combout\);

-- Location: LCCOMB_X35_Y3_N22
\Control|Next_state.BR0_440\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.BR0_440~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Selector19~1_combout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.BR0_440~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.BR0_440~combout\,
	datac => \Control|Selector19~1_combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.BR0_440~combout\);

-- Location: LCFF_X35_Y3_N23
\Control|State.BR0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.BR0_440~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.BR0~regout\);

-- Location: LCCOMB_X35_Y3_N20
\Control|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr0~0_combout\ = (!\Control|State.and0~regout\ & !\Control|State.BR0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|State.and0~regout\,
	datad => \Control|State.BR0~regout\,
	combout => \Control|WideOr0~0_combout\);

-- Location: CLKCTRL_G14
\Control|WideOr0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Control|WideOr0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Control|WideOr0~0clkctrl_outclk\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Run~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Run,
	combout => \Run~combout\);

-- Location: LCCOMB_X36_Y3_N22
\Control|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector37~0_combout\ = (\Run~combout\ & !\Control|State.Halted~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Run~combout\,
	datad => \Control|State.Halted~regout\,
	combout => \Control|Selector37~0_combout\);

-- Location: LCCOMB_X35_Y3_N28
\Control|Next_state.Halted_528\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.Halted_528~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Selector37~0_combout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.Halted_528~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.Halted_528~combout\,
	datac => \Control|Selector37~0_combout\,
	datad => \Control|WideOr0~0clkctrl_outclk\,
	combout => \Control|Next_state.Halted_528~combout\);

-- Location: LCCOMB_X35_Y3_N16
\Control|State.Halted~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|State.Halted~0_combout\ = !\Control|Next_state.Halted_528~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Next_state.Halted_528~combout\,
	combout => \Control|State.Halted~0_combout\);

-- Location: LCFF_X35_Y3_N17
\Control|State.Halted\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|State.Halted~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.Halted~regout\);

-- Location: LCCOMB_X36_Y3_N24
\Control|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector31~0_combout\ = (!\Run~combout\ & !\Control|State.Halted~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Run~combout\,
	datad => \Control|State.Halted~regout\,
	combout => \Control|Selector31~0_combout\);

-- Location: LCCOMB_X37_Y6_N24
\Control|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector31~1_combout\ = (\Control|State.LDR3~regout\) # ((\Control|State.STR3~regout\) # ((\Control|State.not0~regout\) # (\Control|State.add0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LDR3~regout\,
	datab => \Control|State.STR3~regout\,
	datac => \Control|State.not0~regout\,
	datad => \Control|State.add0~regout\,
	combout => \Control|Selector31~1_combout\);

-- Location: LCCOMB_X37_Y6_N10
\Control|Selector31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector31~2_combout\ = (\Control|Selector31~0_combout\) # ((\Control|Selector31~1_combout\) # ((\Control|Mux0~0_combout\ & \Control|State.Decode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Mux0~0_combout\,
	datab => \Control|Selector31~0_combout\,
	datac => \Control|Selector31~1_combout\,
	datad => \Control|State.Decode~regout\,
	combout => \Control|Selector31~2_combout\);

-- Location: LCCOMB_X37_Y6_N28
\Control|Next_state.PCtoMAR_504\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.PCtoMAR_504~combout\ = (GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & ((\Control|Selector31~2_combout\))) # (!GLOBAL(\Control|WideOr0~0clkctrl_outclk\) & (\Control|Next_state.PCtoMAR_504~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.PCtoMAR_504~combout\,
	datac => \Control|WideOr0~0clkctrl_outclk\,
	datad => \Control|Selector31~2_combout\,
	combout => \Control|Next_state.PCtoMAR_504~combout\);

-- Location: LCFF_X37_Y6_N29
\Control|State.PCtoMAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.PCtoMAR_504~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.PCtoMAR~regout\);

-- Location: LCFF_X37_Y4_N1
\inst|PCreg|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[1]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[1]~regout\);

-- Location: LCCOMB_X37_Y4_N2
\inst|PCreg|regOp:ram[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[2]~1_combout\ = (\inst|PCreg|regOp:ram[2]~regout\ & (!\inst|PCreg|regOp:ram[1]~2\)) # (!\inst|PCreg|regOp:ram[2]~regout\ & ((\inst|PCreg|regOp:ram[1]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[2]~2\ = CARRY((!\inst|PCreg|regOp:ram[1]~2\) # (!\inst|PCreg|regOp:ram[2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[2]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[1]~2\,
	combout => \inst|PCreg|regOp:ram[2]~1_combout\,
	cout => \inst|PCreg|regOp:ram[2]~2\);

-- Location: LCFF_X37_Y4_N3
\inst|PCreg|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[2]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[2]~regout\);

-- Location: LCCOMB_X37_Y4_N4
\inst|PCreg|regOp:ram[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[3]~1_combout\ = (\inst|PCreg|regOp:ram[3]~regout\ & (\inst|PCreg|regOp:ram[2]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[3]~regout\ & (!\inst|PCreg|regOp:ram[2]~2\ & VCC))
-- \inst|PCreg|regOp:ram[3]~2\ = CARRY((\inst|PCreg|regOp:ram[3]~regout\ & !\inst|PCreg|regOp:ram[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[3]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[2]~2\,
	combout => \inst|PCreg|regOp:ram[3]~1_combout\,
	cout => \inst|PCreg|regOp:ram[3]~2\);

-- Location: LCFF_X37_Y4_N5
\inst|PCreg|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[3]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[3]~regout\);

-- Location: LCCOMB_X37_Y4_N6
\inst|PCreg|regOp:ram[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[4]~1_combout\ = (\inst|PCreg|regOp:ram[4]~regout\ & (!\inst|PCreg|regOp:ram[3]~2\)) # (!\inst|PCreg|regOp:ram[4]~regout\ & ((\inst|PCreg|regOp:ram[3]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[4]~2\ = CARRY((!\inst|PCreg|regOp:ram[3]~2\) # (!\inst|PCreg|regOp:ram[4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[4]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[3]~2\,
	combout => \inst|PCreg|regOp:ram[4]~1_combout\,
	cout => \inst|PCreg|regOp:ram[4]~2\);

-- Location: LCCOMB_X37_Y4_N8
\inst|PCreg|regOp:ram[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[5]~1_combout\ = (\inst|PCreg|regOp:ram[5]~regout\ & (\inst|PCreg|regOp:ram[4]~2\ $ (GND))) # (!\inst|PCreg|regOp:ram[5]~regout\ & (!\inst|PCreg|regOp:ram[4]~2\ & VCC))
-- \inst|PCreg|regOp:ram[5]~2\ = CARRY((\inst|PCreg|regOp:ram[5]~regout\ & !\inst|PCreg|regOp:ram[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[5]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[4]~2\,
	combout => \inst|PCreg|regOp:ram[5]~1_combout\,
	cout => \inst|PCreg|regOp:ram[5]~2\);

-- Location: LCFF_X37_Y4_N9
\inst|PCreg|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[5]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[5]~regout\);

-- Location: LCCOMB_X37_Y4_N10
\inst|PCreg|regOp:ram[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[6]~1_combout\ = (\inst|PCreg|regOp:ram[6]~regout\ & (!\inst|PCreg|regOp:ram[5]~2\)) # (!\inst|PCreg|regOp:ram[6]~regout\ & ((\inst|PCreg|regOp:ram[5]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[6]~2\ = CARRY((!\inst|PCreg|regOp:ram[5]~2\) # (!\inst|PCreg|regOp:ram[6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[6]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[5]~2\,
	combout => \inst|PCreg|regOp:ram[6]~1_combout\,
	cout => \inst|PCreg|regOp:ram[6]~2\);

-- Location: LCCOMB_X37_Y4_N14
\inst|PCreg|regOp:ram[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[8]~1_combout\ = (\inst|PCreg|regOp:ram[8]~regout\ & (!\inst|PCreg|regOp:ram[7]~2\)) # (!\inst|PCreg|regOp:ram[8]~regout\ & ((\inst|PCreg|regOp:ram[7]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[8]~2\ = CARRY((!\inst|PCreg|regOp:ram[7]~2\) # (!\inst|PCreg|regOp:ram[8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[8]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[7]~2\,
	combout => \inst|PCreg|regOp:ram[8]~1_combout\,
	cout => \inst|PCreg|regOp:ram[8]~2\);

-- Location: LCFF_X37_Y4_N15
\inst|PCreg|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[8]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[8]~regout\);

-- Location: LCCOMB_X37_Y4_N18
\inst|PCreg|regOp:ram[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[10]~1_combout\ = (\inst|PCreg|regOp:ram[10]~regout\ & (!\inst|PCreg|regOp:ram[9]~2\)) # (!\inst|PCreg|regOp:ram[10]~regout\ & ((\inst|PCreg|regOp:ram[9]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[10]~2\ = CARRY((!\inst|PCreg|regOp:ram[9]~2\) # (!\inst|PCreg|regOp:ram[10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[10]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[9]~2\,
	combout => \inst|PCreg|regOp:ram[10]~1_combout\,
	cout => \inst|PCreg|regOp:ram[10]~2\);

-- Location: LCFF_X37_Y4_N19
\inst|PCreg|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[10]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[10]~regout\);

-- Location: LCCOMB_X37_Y4_N22
\inst|PCreg|regOp:ram[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[12]~1_combout\ = (\inst|PCreg|regOp:ram[12]~regout\ & (!\inst|PCreg|regOp:ram[11]~2\)) # (!\inst|PCreg|regOp:ram[12]~regout\ & ((\inst|PCreg|regOp:ram[11]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[12]~2\ = CARRY((!\inst|PCreg|regOp:ram[11]~2\) # (!\inst|PCreg|regOp:ram[12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[12]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[11]~2\,
	combout => \inst|PCreg|regOp:ram[12]~1_combout\,
	cout => \inst|PCreg|regOp:ram[12]~2\);

-- Location: LCFF_X37_Y4_N23
\inst|PCreg|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[12]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[12]~regout\);

-- Location: LCCOMB_X37_Y4_N26
\inst|PCreg|regOp:ram[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[14]~1_combout\ = (\inst|PCreg|regOp:ram[14]~regout\ & (!\inst|PCreg|regOp:ram[13]~2\)) # (!\inst|PCreg|regOp:ram[14]~regout\ & ((\inst|PCreg|regOp:ram[13]~2\) # (GND)))
-- \inst|PCreg|regOp:ram[14]~2\ = CARRY((!\inst|PCreg|regOp:ram[13]~2\) # (!\inst|PCreg|regOp:ram[14]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PCreg|regOp:ram[14]~regout\,
	datad => VCC,
	cin => \inst|PCreg|regOp:ram[13]~2\,
	combout => \inst|PCreg|regOp:ram[14]~1_combout\,
	cout => \inst|PCreg|regOp:ram[14]~2\);

-- Location: LCFF_X37_Y4_N27
\inst|PCreg|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[14]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[14]~regout\);

-- Location: LCCOMB_X37_Y4_N28
\inst|PCreg|regOp:ram[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|PCreg|regOp:ram[15]~1_combout\ = \inst|PCreg|regOp:ram[14]~2\ $ (!\inst|PCreg|regOp:ram[15]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|PCreg|regOp:ram[15]~regout\,
	cin => \inst|PCreg|regOp:ram[14]~2\,
	combout => \inst|PCreg|regOp:ram[15]~1_combout\);

-- Location: LCFF_X37_Y4_N29
\inst|PCreg|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[15]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[15]~regout\);

-- Location: LCFF_X33_Y5_N31
\MDR|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[15]~regout\);

-- Location: LCCOMB_X33_Y5_N30
\GateMDR|dataOut[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~2_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[15]~regout\ & ((\MDR|regOp:ram[15]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[15]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[15]~regout\,
	datac => \MDR|regOp:ram[15]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[15]~2_combout\);

-- Location: LCCOMB_X34_Y5_N26
\GateMDR|dataOut[15]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~36_combout\ = (\GateMDR|dataOut[15]~2_combout\ & (\inst3|dataOut[15]~3_combout\ & \inst2|Data_CPU[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~2_combout\,
	datac => \inst3|dataOut[15]~3_combout\,
	datad => \inst2|Data_CPU[15]~0_combout\,
	combout => \GateMDR|dataOut[15]~36_combout\);

-- Location: LCCOMB_X30_Y3_N10
\GateMDR|dataOut[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~52_combout\ = (\GateMDR|dataOut[15]~4_combout\ & ((\Control|State.STR3~regout\) # (\Control|State.STR2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR3~regout\,
	datac => \GateMDR|dataOut[15]~4_combout\,
	datad => \Control|State.STR2~regout\,
	combout => \GateMDR|dataOut[15]~52_combout\);

-- Location: LCFF_X34_Y4_N1
\MDR|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[14]~regout\);

-- Location: LCCOMB_X31_Y4_N14
\GateMDR|dataOut[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~6_combout\ = (\inst|PCreg|regOp:ram[14]~regout\ & ((\MDR|regOp:ram[14]~regout\) # ((!\Control|GateMDR~combout\)))) # (!\inst|PCreg|regOp:ram[14]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[14]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PCreg|regOp:ram[14]~regout\,
	datab => \MDR|regOp:ram[14]~regout\,
	datac => \Control|State.PCtoMAR~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[14]~6_combout\);

-- Location: LCCOMB_X33_Y6_N10
\GateMDR|dataOut[14]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~37_combout\ = (\inst3|dataOut[14]~5_combout\ & (\inst2|Data_CPU[14]~1_combout\ & \GateMDR|dataOut[14]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[14]~5_combout\,
	datac => \inst2|Data_CPU[14]~1_combout\,
	datad => \GateMDR|dataOut[14]~6_combout\,
	combout => \GateMDR|dataOut[14]~37_combout\);

-- Location: LCCOMB_X33_Y3_N18
\GateMDR|dataOut[13]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~38_combout\ = (\GateMDR|dataOut[13]~8_combout\ & (\inst2|Data_CPU[13]~2_combout\ & \inst3|dataOut[13]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[13]~8_combout\,
	datab => \inst2|Data_CPU[13]~2_combout\,
	datac => \inst3|dataOut[13]~7_combout\,
	combout => \GateMDR|dataOut[13]~38_combout\);

-- Location: LCCOMB_X33_Y5_N8
\GateMDR|dataOut[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~39_combout\ = (\inst2|Data_CPU[12]~3_combout\ & (\GateMDR|dataOut[12]~10_combout\ & \inst3|dataOut[12]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[12]~3_combout\,
	datab => \GateMDR|dataOut[12]~10_combout\,
	datad => \inst3|dataOut[12]~9_combout\,
	combout => \GateMDR|dataOut[12]~39_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switches[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Switches(11),
	combout => \Switches~combout\(11));

-- Location: LCCOMB_X30_Y5_N12
\inst2|Data_CPU[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[11]~4_combout\ = ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(11)))) # (!\inst2|Equal0~4_combout\ & (\Data~4\))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~4\,
	datab => \inst2|Equal0~4_combout\,
	datac => \Switches~combout\(11),
	datad => \inst2|Mem_Read~0_combout\,
	combout => \inst2|Data_CPU[11]~4_combout\);

-- Location: LCCOMB_X33_Y5_N6
\GateMDR|dataOut[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~40_combout\ = (\inst2|Data_CPU[11]~4_combout\ & (\GateMDR|dataOut[11]~12_combout\ & \inst3|dataOut[11]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[11]~4_combout\,
	datab => \GateMDR|dataOut[11]~12_combout\,
	datad => \inst3|dataOut[11]~11_combout\,
	combout => \GateMDR|dataOut[11]~40_combout\);

-- Location: LCCOMB_X33_Y5_N12
\GateMDR|dataOut[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~41_combout\ = (\GateMDR|dataOut[10]~14_combout\ & (\inst2|Data_CPU[10]~5_combout\ & \inst3|dataOut[10]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[10]~14_combout\,
	datab => \inst2|Data_CPU[10]~5_combout\,
	datad => \inst3|dataOut[10]~13_combout\,
	combout => \GateMDR|dataOut[10]~41_combout\);

-- Location: LCCOMB_X31_Y4_N20
\inst2|Data_CPU[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[9]~6_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(9))) # (!\inst2|Equal0~4_combout\ & ((\Data~6\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(9),
	datab => \Data~6\,
	datac => \inst2|Mem_Read~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[9]~6_combout\);

-- Location: LCCOMB_X31_Y4_N12
\GateMDR|dataOut[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~42_combout\ = (\inst2|Data_CPU[9]~6_combout\ & (\GateMDR|dataOut[9]~16_combout\ & \inst3|dataOut[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[9]~6_combout\,
	datab => \GateMDR|dataOut[9]~16_combout\,
	datad => \inst3|dataOut[9]~16_combout\,
	combout => \GateMDR|dataOut[9]~42_combout\);

-- Location: LCFF_X31_Y4_N17
\MDR|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[8]~regout\);

-- Location: LCCOMB_X31_Y4_N16
\GateMDR|dataOut[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~18_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[8]~regout\ & ((\MDR|regOp:ram[8]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[8]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[8]~regout\,
	datac => \MDR|regOp:ram[8]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[8]~18_combout\);

-- Location: LCCOMB_X31_Y4_N8
\GateMDR|dataOut[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~43_combout\ = (\GateMDR|dataOut[8]~18_combout\ & (\inst3|dataOut[8]~19_combout\ & \inst2|Data_CPU[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[8]~18_combout\,
	datab => \inst3|dataOut[8]~19_combout\,
	datad => \inst2|Data_CPU[8]~7_combout\,
	combout => \GateMDR|dataOut[8]~43_combout\);

-- Location: LCCOMB_X31_Y4_N4
\inst2|Data_CPU[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[7]~8_combout\ = ((\inst2|Equal0~4_combout\ & (\Switches~combout\(7))) # (!\inst2|Equal0~4_combout\ & ((\Data~8\)))) # (!\inst2|Mem_Read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(7),
	datab => \inst2|Mem_Read~0_combout\,
	datac => \Data~8\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[7]~8_combout\);

-- Location: LCCOMB_X32_Y4_N26
\GateMDR|dataOut[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~44_combout\ = (\inst3|dataOut[7]~22_combout\ & (\inst2|Data_CPU[7]~8_combout\ & \GateMDR|dataOut[7]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[7]~22_combout\,
	datab => \inst2|Data_CPU[7]~8_combout\,
	datad => \GateMDR|dataOut[7]~20_combout\,
	combout => \GateMDR|dataOut[7]~44_combout\);

-- Location: LCFF_X37_Y4_N11
\inst|PCreg|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[6]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[6]~regout\);

-- Location: LCFF_X34_Y4_N19
\MDR|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~23_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[6]~regout\);

-- Location: LCCOMB_X34_Y4_N18
\GateMDR|dataOut[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~22_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[6]~regout\ & ((\MDR|regOp:ram[6]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[6]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[6]~regout\,
	datac => \MDR|regOp:ram[6]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[6]~22_combout\);

-- Location: LCCOMB_X35_Y4_N6
\GateMDR|dataOut[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~45_combout\ = (\inst2|Data_CPU[6]~9_combout\ & (\GateMDR|dataOut[6]~22_combout\ & \inst3|dataOut[6]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[6]~9_combout\,
	datac => \GateMDR|dataOut[6]~22_combout\,
	datad => \inst3|dataOut[6]~25_combout\,
	combout => \GateMDR|dataOut[6]~45_combout\);

-- Location: LCFF_X33_Y5_N27
\MDR|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~25_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[5]~regout\);

-- Location: LCCOMB_X33_Y5_N26
\GateMDR|dataOut[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~24_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[5]~regout\ & ((\MDR|regOp:ram[5]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[5]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[5]~regout\,
	datac => \MDR|regOp:ram[5]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[5]~24_combout\);

-- Location: LCCOMB_X35_Y5_N12
\GateMDR|dataOut[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~46_combout\ = (\GateMDR|dataOut[5]~24_combout\ & (\inst2|Data_CPU[5]~10_combout\ & \inst3|dataOut[5]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[5]~24_combout\,
	datab => \inst2|Data_CPU[5]~10_combout\,
	datad => \inst3|dataOut[5]~28_combout\,
	combout => \GateMDR|dataOut[5]~46_combout\);

-- Location: LCFF_X37_Y4_N7
\inst|PCreg|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|PCreg|regOp:ram[4]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|PCreg|regOp:ram[4]~regout\);

-- Location: LCFF_X34_Y4_N5
\MDR|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[4]~regout\);

-- Location: LCCOMB_X34_Y4_N4
\GateMDR|dataOut[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~26_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[4]~regout\ & ((\MDR|regOp:ram[4]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[4]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[4]~regout\,
	datac => \MDR|regOp:ram[4]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[4]~26_combout\);

-- Location: LCCOMB_X35_Y5_N22
\GateMDR|dataOut[4]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~47_combout\ = (\inst3|dataOut[4]~31_combout\ & (\inst2|Data_CPU[4]~11_combout\ & \GateMDR|dataOut[4]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dataOut[4]~31_combout\,
	datab => \inst2|Data_CPU[4]~11_combout\,
	datad => \GateMDR|dataOut[4]~26_combout\,
	combout => \GateMDR|dataOut[4]~47_combout\);

-- Location: LCCOMB_X33_Y4_N20
\GateMDR|dataOut[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~48_combout\ = (\GateMDR|dataOut[3]~28_combout\ & (\inst2|Data_CPU[3]~12_combout\ & \inst3|dataOut[3]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GateMDR|dataOut[3]~28_combout\,
	datac => \inst2|Data_CPU[3]~12_combout\,
	datad => \inst3|dataOut[3]~34_combout\,
	combout => \GateMDR|dataOut[3]~48_combout\);

-- Location: LCFF_X31_Y4_N11
\MDR|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[2]~regout\);

-- Location: LCCOMB_X31_Y4_N10
\GateMDR|dataOut[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~30_combout\ = (\Control|State.PCtoMAR~regout\ & (\inst|PCreg|regOp:ram[2]~regout\ & ((\MDR|regOp:ram[2]~regout\) # (!\Control|GateMDR~combout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[2]~regout\) # 
-- (!\Control|GateMDR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \inst|PCreg|regOp:ram[2]~regout\,
	datac => \MDR|regOp:ram[2]~regout\,
	datad => \Control|GateMDR~combout\,
	combout => \GateMDR|dataOut[2]~30_combout\);

-- Location: LCCOMB_X31_Y4_N6
\GateMDR|dataOut[2]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~49_combout\ = (\GateMDR|dataOut[2]~30_combout\ & (\inst2|Data_CPU[2]~13_combout\ & \inst3|dataOut[2]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[2]~30_combout\,
	datab => \inst2|Data_CPU[2]~13_combout\,
	datad => \inst3|dataOut[2]~37_combout\,
	combout => \GateMDR|dataOut[2]~49_combout\);

-- Location: LCCOMB_X35_Y3_N10
\GateMDR|dataOut[1]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~50_combout\ = (\inst2|Data_CPU[1]~14_combout\ & (\GateMDR|dataOut[1]~32_combout\ & \inst3|dataOut[1]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[1]~14_combout\,
	datac => \GateMDR|dataOut[1]~32_combout\,
	datad => \inst3|dataOut[1]~40_combout\,
	combout => \GateMDR|dataOut[1]~50_combout\);

-- Location: LCCOMB_X33_Y4_N6
\GateMDR|dataOut[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~51_combout\ = (\inst2|Data_CPU[0]~15_combout\ & (\inst3|dataOut[0]~43_combout\ & \GateMDR|dataOut[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[0]~15_combout\,
	datac => \inst3|dataOut[0]~43_combout\,
	datad => \GateMDR|dataOut[0]~34_combout\,
	combout => \GateMDR|dataOut[0]~51_combout\);

-- Location: LCCOMB_X30_Y3_N8
\Control|Mem_WE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Mem_WE~0_combout\ = (\Control|State.STR2~regout\) # (\Control|State.STR3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR2~regout\,
	datad => \Control|State.STR3~regout\,
	combout => \Control|Mem_WE~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCFF_X36_Y5_N13
\inst12|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[12]~regout\);

-- Location: LCCOMB_X32_Y3_N12
\inst12|regOp:ram[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[9]~feeder_combout\ = \GateMDR|dataOut[9]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[9]~17_combout\,
	combout => \inst12|regOp:ram[9]~feeder_combout\);

-- Location: LCFF_X32_Y3_N13
\inst12|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[9]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[9]~regout\);

-- Location: LCFF_X35_Y5_N25
\inst12|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~27_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[4]~regout\);

-- Location: LCCOMB_X32_Y3_N28
\inst12|regOp:ram[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[3]~feeder_combout\ = \GateMDR|dataOut[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[3]~29_combout\,
	combout => \inst12|regOp:ram[3]~feeder_combout\);

-- Location: LCFF_X32_Y3_N29
\inst12|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[3]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[3]~regout\);

-- Location: LCFF_X32_Y3_N11
\inst12|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~31_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[2]~regout\);

-- Location: LCCOMB_X32_Y3_N4
\inst12|regOp:ram[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[1]~feeder_combout\ = \GateMDR|dataOut[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~33_combout\,
	combout => \inst12|regOp:ram[1]~feeder_combout\);

-- Location: LCFF_X32_Y3_N5
\inst12|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[1]~regout\);

-- Location: LCFF_X32_Y3_N7
\inst12|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[0]~regout\);

-- Location: LCCOMB_X30_Y3_N12
\inst2|Hex_Write~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Hex_Write~2_combout\ = (\inst2|Equal0~4_combout\ & ((\Control|State.STR2~regout\) # (\Control|State.STR3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.STR2~regout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \Control|State.STR3~regout\,
	combout => \inst2|Hex_Write~2_combout\);

-- Location: LCFF_X32_Y3_N25
\inst2|hex_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~35_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(0));

-- Location: LCCOMB_X30_Y4_N16
\inst2|hex_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|hex_data[2]~feeder_combout\ = \GateMDR|dataOut[2]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~31_combout\,
	combout => \inst2|hex_data[2]~feeder_combout\);

-- Location: LCFF_X30_Y4_N17
\inst2|hex_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|hex_data[2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(2));

-- Location: LCFF_X32_Y3_N17
\inst2|hex_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(3));

-- Location: LCFF_X32_Y3_N3
\inst2|hex_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~33_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(1));

-- Location: LCCOMB_X32_Y3_N30
\inst8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst2|hex_data\(0) & ((\inst2|hex_data\(3)) # (\inst2|hex_data\(2) $ (\inst2|hex_data\(1))))) # (!\inst2|hex_data\(0) & ((\inst2|hex_data\(1)) # (\inst2|hex_data\(2) $ (\inst2|hex_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y3_N20
\inst8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst2|hex_data\(0) & (\inst2|hex_data\(3) $ (((\inst2|hex_data\(1)) # (!\inst2|hex_data\(2)))))) # (!\inst2|hex_data\(0) & (!\inst2|hex_data\(2) & (!\inst2|hex_data\(3) & \inst2|hex_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y3_N26
\inst8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst2|hex_data\(1) & (\inst2|hex_data\(0) & ((!\inst2|hex_data\(3))))) # (!\inst2|hex_data\(1) & ((\inst2|hex_data\(2) & ((!\inst2|hex_data\(3)))) # (!\inst2|hex_data\(2) & (\inst2|hex_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y3_N0
\inst8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst2|hex_data\(1) & (\inst2|hex_data\(0) & (\inst2|hex_data\(2)))) # (!\inst2|hex_data\(1) & (!\inst2|hex_data\(3) & (\inst2|hex_data\(0) $ (\inst2|hex_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y3_N2
\inst8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst2|hex_data\(3) & (\inst2|hex_data\(2) & ((\inst2|hex_data\(1)) # (!\inst2|hex_data\(0))))) # (!\inst2|hex_data\(3) & (!\inst2|hex_data\(0) & (\inst2|hex_data\(1) & !\inst2|hex_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(3),
	datab => \inst2|hex_data\(0),
	datac => \inst2|hex_data\(1),
	datad => \inst2|hex_data\(2),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y3_N14
\inst8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst2|hex_data\(0) & (\inst2|hex_data\(2) & (\inst2|hex_data\(3) $ (!\inst2|hex_data\(1))))) # (!\inst2|hex_data\(0) & ((\inst2|hex_data\(2) & ((\inst2|hex_data\(3)) # (\inst2|hex_data\(1)))) # (!\inst2|hex_data\(2) & 
-- (\inst2|hex_data\(3) & \inst2|hex_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y3_N16
\inst8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst2|hex_data\(0) & (!\inst2|hex_data\(1) & (\inst2|hex_data\(2) $ (!\inst2|hex_data\(3))))) # (!\inst2|hex_data\(0) & ((\inst2|hex_data\(2) & (!\inst2|hex_data\(3) & !\inst2|hex_data\(1))) # (!\inst2|hex_data\(2) & 
-- (\inst2|hex_data\(3) & \inst2|hex_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(0),
	datab => \inst2|hex_data\(2),
	datac => \inst2|hex_data\(3),
	datad => \inst2|hex_data\(1),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCFF_X38_Y5_N11
\inst2|hex_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~25_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(5));

-- Location: LCCOMB_X35_Y7_N20
\inst2|hex_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|hex_data[6]~feeder_combout\ = \GateMDR|dataOut[6]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~23_combout\,
	combout => \inst2|hex_data[6]~feeder_combout\);

-- Location: LCFF_X35_Y7_N21
\inst2|hex_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|hex_data[6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(6));

-- Location: LCFF_X33_Y5_N9
\inst2|hex_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~21_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(7));

-- Location: LCCOMB_X38_Y5_N12
\inst2|hex_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|hex_data[4]~feeder_combout\ = \GateMDR|dataOut[4]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~27_combout\,
	combout => \inst2|hex_data[4]~feeder_combout\);

-- Location: LCFF_X38_Y5_N13
\inst2|hex_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|hex_data[4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(4));

-- Location: LCCOMB_X38_Y5_N0
\inst9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst2|hex_data\(4) & ((\inst2|hex_data\(7)) # (\inst2|hex_data\(5) $ (\inst2|hex_data\(6))))) # (!\inst2|hex_data\(4) & ((\inst2|hex_data\(5)) # (\inst2|hex_data\(6) $ (\inst2|hex_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y5_N2
\inst9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst2|hex_data\(5) & (!\inst2|hex_data\(7) & ((\inst2|hex_data\(4)) # (!\inst2|hex_data\(6))))) # (!\inst2|hex_data\(5) & (\inst2|hex_data\(4) & (\inst2|hex_data\(6) $ (!\inst2|hex_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y5_N20
\inst9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst2|hex_data\(5) & (((!\inst2|hex_data\(7) & \inst2|hex_data\(4))))) # (!\inst2|hex_data\(5) & ((\inst2|hex_data\(6) & (!\inst2|hex_data\(7))) # (!\inst2|hex_data\(6) & ((\inst2|hex_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y5_N22
\inst9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst2|hex_data\(5) & (\inst2|hex_data\(6) & ((\inst2|hex_data\(4))))) # (!\inst2|hex_data\(5) & (!\inst2|hex_data\(7) & (\inst2|hex_data\(6) $ (\inst2|hex_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y5_N16
\inst9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst2|hex_data\(6) & (\inst2|hex_data\(7) & ((\inst2|hex_data\(5)) # (!\inst2|hex_data\(4))))) # (!\inst2|hex_data\(6) & (\inst2|hex_data\(5) & (!\inst2|hex_data\(7) & !\inst2|hex_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X38_Y5_N26
\inst9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst2|hex_data\(5) & ((\inst2|hex_data\(6) & ((\inst2|hex_data\(7)) # (!\inst2|hex_data\(4)))) # (!\inst2|hex_data\(6) & (\inst2|hex_data\(7) & !\inst2|hex_data\(4))))) # (!\inst2|hex_data\(5) & (\inst2|hex_data\(6) & 
-- (\inst2|hex_data\(7) $ (\inst2|hex_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y5_N24
\inst9|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst2|hex_data\(5) & (!\inst2|hex_data\(6) & (\inst2|hex_data\(7) & !\inst2|hex_data\(4)))) # (!\inst2|hex_data\(5) & ((\inst2|hex_data\(6) & (\inst2|hex_data\(7) $ (!\inst2|hex_data\(4)))) # (!\inst2|hex_data\(6) & 
-- (!\inst2|hex_data\(7) & \inst2|hex_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(5),
	datab => \inst2|hex_data\(6),
	datac => \inst2|hex_data\(7),
	datad => \inst2|hex_data\(4),
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y4_N26
\inst2|hex_data[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|hex_data[8]~feeder_combout\ = \GateMDR|dataOut[8]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[8]~19_combout\,
	combout => \inst2|hex_data[8]~feeder_combout\);

-- Location: LCFF_X30_Y4_N27
\inst2|hex_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|hex_data[8]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(8));

-- Location: LCFF_X30_Y4_N1
\inst2|hex_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~17_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(9));

-- Location: LCFF_X33_Y5_N29
\inst2|hex_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[11]~13_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(11));

-- Location: LCFF_X33_Y5_N11
\inst2|hex_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[10]~15_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(10));

-- Location: LCCOMB_X33_Y5_N14
\inst10|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst2|hex_data\(8) & ((\inst2|hex_data\(11)) # (\inst2|hex_data\(9) $ (\inst2|hex_data\(10))))) # (!\inst2|hex_data\(8) & ((\inst2|hex_data\(9)) # (\inst2|hex_data\(11) $ (\inst2|hex_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(8),
	datab => \inst2|hex_data\(9),
	datac => \inst2|hex_data\(11),
	datad => \inst2|hex_data\(10),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y5_N4
\inst10|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux1~0_combout\ = (\inst2|hex_data\(8) & (\inst2|hex_data\(11) $ (((\inst2|hex_data\(9)) # (!\inst2|hex_data\(10)))))) # (!\inst2|hex_data\(8) & (\inst2|hex_data\(9) & (!\inst2|hex_data\(11) & !\inst2|hex_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(8),
	datab => \inst2|hex_data\(9),
	datac => \inst2|hex_data\(11),
	datad => \inst2|hex_data\(10),
	combout => \inst10|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y5_N18
\inst10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux2~0_combout\ = (\inst2|hex_data\(9) & (\inst2|hex_data\(8) & (!\inst2|hex_data\(11)))) # (!\inst2|hex_data\(9) & ((\inst2|hex_data\(10) & ((!\inst2|hex_data\(11)))) # (!\inst2|hex_data\(10) & (\inst2|hex_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(8),
	datab => \inst2|hex_data\(9),
	datac => \inst2|hex_data\(11),
	datad => \inst2|hex_data\(10),
	combout => \inst10|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y5_N20
\inst10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux3~0_combout\ = (\inst2|hex_data\(9) & (\inst2|hex_data\(8) & ((\inst2|hex_data\(10))))) # (!\inst2|hex_data\(9) & (!\inst2|hex_data\(11) & (\inst2|hex_data\(8) $ (\inst2|hex_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(8),
	datab => \inst2|hex_data\(9),
	datac => \inst2|hex_data\(11),
	datad => \inst2|hex_data\(10),
	combout => \inst10|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y5_N2
\inst10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux4~0_combout\ = (\inst2|hex_data\(11) & (\inst2|hex_data\(10) & ((\inst2|hex_data\(9)) # (!\inst2|hex_data\(8))))) # (!\inst2|hex_data\(11) & (!\inst2|hex_data\(8) & (\inst2|hex_data\(9) & !\inst2|hex_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(8),
	datab => \inst2|hex_data\(9),
	datac => \inst2|hex_data\(11),
	datad => \inst2|hex_data\(10),
	combout => \inst10|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y5_N24
\inst10|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst2|hex_data\(10) & ((\inst2|hex_data\(11) & ((\inst2|hex_data\(9)) # (!\inst2|hex_data\(8)))) # (!\inst2|hex_data\(11) & (\inst2|hex_data\(9) $ (\inst2|hex_data\(8)))))) # (!\inst2|hex_data\(10) & (\inst2|hex_data\(11) & 
-- (\inst2|hex_data\(9) & !\inst2|hex_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(10),
	datab => \inst2|hex_data\(11),
	datac => \inst2|hex_data\(9),
	datad => \inst2|hex_data\(8),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y5_N22
\inst10|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst2|hex_data\(10) & (!\inst2|hex_data\(9) & (\inst2|hex_data\(11) $ (!\inst2|hex_data\(8))))) # (!\inst2|hex_data\(10) & ((\inst2|hex_data\(11) & (\inst2|hex_data\(9) & !\inst2|hex_data\(8))) # (!\inst2|hex_data\(11) & 
-- (!\inst2|hex_data\(9) & \inst2|hex_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(10),
	datab => \inst2|hex_data\(11),
	datac => \inst2|hex_data\(9),
	datad => \inst2|hex_data\(8),
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y3_N30
\inst2|hex_data[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|hex_data[13]~feeder_combout\ = \GateMDR|dataOut[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~9_combout\,
	combout => \inst2|hex_data[13]~feeder_combout\);

-- Location: LCFF_X30_Y3_N31
\inst2|hex_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|hex_data[13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(13));

-- Location: LCFF_X33_Y5_N13
\inst2|hex_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(15));

-- Location: LCFF_X33_Y5_N7
\inst2|hex_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~7_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(14));

-- Location: LCFF_X33_Y5_N1
\inst2|hex_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[12]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst2|Hex_Write~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|hex_data\(12));

-- Location: LCCOMB_X30_Y5_N20
\inst11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst2|hex_data\(12) & ((\inst2|hex_data\(15)) # (\inst2|hex_data\(13) $ (\inst2|hex_data\(14))))) # (!\inst2|hex_data\(12) & ((\inst2|hex_data\(13)) # (\inst2|hex_data\(15) $ (\inst2|hex_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y5_N26
\inst11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst2|hex_data\(13) & (!\inst2|hex_data\(15) & ((\inst2|hex_data\(12)) # (!\inst2|hex_data\(14))))) # (!\inst2|hex_data\(13) & (\inst2|hex_data\(12) & (\inst2|hex_data\(15) $ (!\inst2|hex_data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y5_N28
\inst11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst2|hex_data\(13) & (!\inst2|hex_data\(15) & ((\inst2|hex_data\(12))))) # (!\inst2|hex_data\(13) & ((\inst2|hex_data\(14) & (!\inst2|hex_data\(15))) # (!\inst2|hex_data\(14) & ((\inst2|hex_data\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y5_N6
\inst11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst2|hex_data\(13) & (((\inst2|hex_data\(14) & \inst2|hex_data\(12))))) # (!\inst2|hex_data\(13) & (!\inst2|hex_data\(15) & (\inst2|hex_data\(14) $ (\inst2|hex_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y5_N8
\inst11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst2|hex_data\(15) & (\inst2|hex_data\(14) & ((\inst2|hex_data\(13)) # (!\inst2|hex_data\(12))))) # (!\inst2|hex_data\(15) & (\inst2|hex_data\(13) & (!\inst2|hex_data\(14) & !\inst2|hex_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y5_N10
\inst11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (\inst2|hex_data\(13) & ((\inst2|hex_data\(15) & ((\inst2|hex_data\(14)) # (!\inst2|hex_data\(12)))) # (!\inst2|hex_data\(15) & (\inst2|hex_data\(14) & !\inst2|hex_data\(12))))) # (!\inst2|hex_data\(13) & (\inst2|hex_data\(14) & 
-- (\inst2|hex_data\(15) $ (\inst2|hex_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y5_N16
\inst11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst2|hex_data\(13) & (\inst2|hex_data\(15) & (!\inst2|hex_data\(14) & !\inst2|hex_data\(12)))) # (!\inst2|hex_data\(13) & ((\inst2|hex_data\(15) & (\inst2|hex_data\(14) & \inst2|hex_data\(12))) # (!\inst2|hex_data\(15) & 
-- (\inst2|hex_data\(14) $ (\inst2|hex_data\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|hex_data\(13),
	datab => \inst2|hex_data\(15),
	datac => \inst2|hex_data\(14),
	datad => \inst2|hex_data\(12),
	combout => \inst11|Mux6~0_combout\);

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CE);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Continue~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Continue);

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UB);

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LB);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OE);

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\WE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Control|ALT_INV_Mem_WE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_WE);

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(17));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(16));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[15]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(15));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[14]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(14));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(13));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[12]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(12));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(11));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(10));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(9));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[8]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(8));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(7));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(6));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(5));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(4));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(3));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(2));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(1));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst12|regOp:ram[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ADDR(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst8|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst9|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst10|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(0));
END structure;


