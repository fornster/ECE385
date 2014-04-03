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

-- DATE "04/02/2014 22:11:04"

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
-- CE	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Continue	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UB	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LB	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OE	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- WE	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \Control|WideOr11~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Control|WideNor0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \PC|regOp:ram[5]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[3]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[3]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[5]~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \SR2Mux|Selector3~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector14~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector15~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~15_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~21_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[10]~regout\ : std_logic;
SIGNAL \inst2|Data_CPU[8]~7_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[7]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~50_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[5]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~56_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[4]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~59_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[3]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~63_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[2]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~66_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[0]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[0]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~71_combout\ : std_logic;
SIGNAL \inst4|ram[6][15]~regout\ : std_logic;
SIGNAL \inst4|ram[4][15]~regout\ : std_logic;
SIGNAL \inst4|Mux16~0_combout\ : std_logic;
SIGNAL \inst4|Mux16~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][15]~regout\ : std_logic;
SIGNAL \inst4|ram[1][15]~regout\ : std_logic;
SIGNAL \inst4|ram[0][15]~regout\ : std_logic;
SIGNAL \inst4|Mux16~2_combout\ : std_logic;
SIGNAL \inst4|ram[3][15]~regout\ : std_logic;
SIGNAL \inst4|Mux16~3_combout\ : std_logic;
SIGNAL \inst4|Mux16~4_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Mux0~3_combout\ : std_logic;
SIGNAL \inst4|ram[5][14]~regout\ : std_logic;
SIGNAL \inst4|ram[6][14]~regout\ : std_logic;
SIGNAL \inst4|ram[4][14]~regout\ : std_logic;
SIGNAL \inst4|Mux17~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][14]~regout\ : std_logic;
SIGNAL \inst4|Mux17~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][14]~regout\ : std_logic;
SIGNAL \inst4|ram[1][14]~regout\ : std_logic;
SIGNAL \inst4|ram[0][14]~regout\ : std_logic;
SIGNAL \inst4|Mux17~2_combout\ : std_logic;
SIGNAL \inst4|ram[3][14]~regout\ : std_logic;
SIGNAL \inst4|Mux17~3_combout\ : std_logic;
SIGNAL \inst4|Mux17~4_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst4|Mux1~3_combout\ : std_logic;
SIGNAL \inst4|Mux1~4_combout\ : std_logic;
SIGNAL \inst4|ram[6][13]~regout\ : std_logic;
SIGNAL \inst4|ram[4][13]~regout\ : std_logic;
SIGNAL \inst4|Mux18~0_combout\ : std_logic;
SIGNAL \inst4|Mux18~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][13]~regout\ : std_logic;
SIGNAL \inst4|ram[0][13]~regout\ : std_logic;
SIGNAL \inst4|Mux18~2_combout\ : std_logic;
SIGNAL \inst4|Mux18~3_combout\ : std_logic;
SIGNAL \inst4|Mux18~4_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|ram[5][12]~regout\ : std_logic;
SIGNAL \inst4|ram[6][12]~regout\ : std_logic;
SIGNAL \inst4|Mux19~0_combout\ : std_logic;
SIGNAL \inst4|Mux19~1_combout\ : std_logic;
SIGNAL \inst4|ram[1][12]~regout\ : std_logic;
SIGNAL \inst4|ram[0][12]~regout\ : std_logic;
SIGNAL \inst4|Mux19~2_combout\ : std_logic;
SIGNAL \inst4|Mux19~3_combout\ : std_logic;
SIGNAL \inst4|Mux19~4_combout\ : std_logic;
SIGNAL \inst4|Mux3~2_combout\ : std_logic;
SIGNAL \inst4|ram[0][11]~regout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~2_combout\ : std_logic;
SIGNAL \inst4|Mux4~3_combout\ : std_logic;
SIGNAL \inst4|ram[5][10]~regout\ : std_logic;
SIGNAL \inst4|ram[4][10]~regout\ : std_logic;
SIGNAL \inst4|Mux21~0_combout\ : std_logic;
SIGNAL \inst4|Mux21~1_combout\ : std_logic;
SIGNAL \inst4|ram[6][9]~regout\ : std_logic;
SIGNAL \inst4|ram[1][9]~regout\ : std_logic;
SIGNAL \inst4|Mux22~2_combout\ : std_logic;
SIGNAL \inst4|ram[5][8]~regout\ : std_logic;
SIGNAL \inst4|ram[6][8]~regout\ : std_logic;
SIGNAL \inst4|ram[4][8]~regout\ : std_logic;
SIGNAL \inst4|Mux23~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][8]~regout\ : std_logic;
SIGNAL \inst4|Mux23~1_combout\ : std_logic;
SIGNAL \inst4|ram[0][8]~regout\ : std_logic;
SIGNAL \inst4|Mux23~2_combout\ : std_logic;
SIGNAL \inst4|Mux23~3_combout\ : std_logic;
SIGNAL \inst4|Mux23~4_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Mux7~1_combout\ : std_logic;
SIGNAL \inst4|ram[6][7]~regout\ : std_logic;
SIGNAL \inst4|Mux24~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][7]~regout\ : std_logic;
SIGNAL \inst4|Mux24~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][7]~regout\ : std_logic;
SIGNAL \inst4|ram[0][7]~regout\ : std_logic;
SIGNAL \inst4|Mux24~2_combout\ : std_logic;
SIGNAL \inst4|Mux24~3_combout\ : std_logic;
SIGNAL \inst4|Mux24~4_combout\ : std_logic;
SIGNAL \inst4|ram[5][6]~regout\ : std_logic;
SIGNAL \inst4|ram[6][6]~regout\ : std_logic;
SIGNAL \inst4|ram[4][6]~regout\ : std_logic;
SIGNAL \inst4|Mux25~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][6]~regout\ : std_logic;
SIGNAL \inst4|Mux25~1_combout\ : std_logic;
SIGNAL \inst4|ram[1][6]~regout\ : std_logic;
SIGNAL \inst4|ram[0][6]~regout\ : std_logic;
SIGNAL \inst4|Mux25~2_combout\ : std_logic;
SIGNAL \inst4|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Mux9~1_combout\ : std_logic;
SIGNAL \inst4|Mux9~2_combout\ : std_logic;
SIGNAL \inst4|Mux9~3_combout\ : std_logic;
SIGNAL \inst4|Mux9~4_combout\ : std_logic;
SIGNAL \inst4|ram[5][5]~regout\ : std_logic;
SIGNAL \inst4|ram[6][5]~regout\ : std_logic;
SIGNAL \inst4|Mux26~0_combout\ : std_logic;
SIGNAL \inst4|Mux26~1_combout\ : std_logic;
SIGNAL \inst4|ram[1][5]~regout\ : std_logic;
SIGNAL \inst4|ram[0][5]~regout\ : std_logic;
SIGNAL \inst4|Mux26~2_combout\ : std_logic;
SIGNAL \inst4|Mux26~3_combout\ : std_logic;
SIGNAL \inst4|Mux26~4_combout\ : std_logic;
SIGNAL \inst4|Mux10~2_combout\ : std_logic;
SIGNAL \inst4|ram[6][4]~regout\ : std_logic;
SIGNAL \inst4|Mux27~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][4]~regout\ : std_logic;
SIGNAL \inst4|Mux27~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][4]~regout\ : std_logic;
SIGNAL \inst4|ram[1][4]~regout\ : std_logic;
SIGNAL \inst4|ram[0][4]~regout\ : std_logic;
SIGNAL \inst4|Mux27~2_combout\ : std_logic;
SIGNAL \inst4|ram[3][4]~regout\ : std_logic;
SIGNAL \inst4|Mux27~3_combout\ : std_logic;
SIGNAL \inst4|Mux27~4_combout\ : std_logic;
SIGNAL \inst4|Mux11~2_combout\ : std_logic;
SIGNAL \inst4|Mux11~3_combout\ : std_logic;
SIGNAL \inst4|ram[6][3]~regout\ : std_logic;
SIGNAL \inst4|ram[4][3]~regout\ : std_logic;
SIGNAL \inst4|Mux28~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~1_combout\ : std_logic;
SIGNAL \inst4|Mux12~2_combout\ : std_logic;
SIGNAL \inst4|Mux12~3_combout\ : std_logic;
SIGNAL \inst4|Mux12~4_combout\ : std_logic;
SIGNAL \inst4|ram[4][2]~regout\ : std_logic;
SIGNAL \inst4|Mux29~0_combout\ : std_logic;
SIGNAL \inst4|Mux29~1_combout\ : std_logic;
SIGNAL \inst4|ram[1][2]~regout\ : std_logic;
SIGNAL \inst4|ram[0][2]~regout\ : std_logic;
SIGNAL \inst4|Mux29~2_combout\ : std_logic;
SIGNAL \inst4|Mux13~2_combout\ : std_logic;
SIGNAL \inst4|Mux30~0_combout\ : std_logic;
SIGNAL \inst4|Mux30~1_combout\ : std_logic;
SIGNAL \inst4|ram[1][1]~regout\ : std_logic;
SIGNAL \inst4|ram[0][1]~regout\ : std_logic;
SIGNAL \inst4|Mux30~2_combout\ : std_logic;
SIGNAL \inst4|Mux30~3_combout\ : std_logic;
SIGNAL \inst4|Mux30~4_combout\ : std_logic;
SIGNAL \inst4|Mux14~2_combout\ : std_logic;
SIGNAL \inst4|ram[6][0]~regout\ : std_logic;
SIGNAL \inst4|ram[4][0]~regout\ : std_logic;
SIGNAL \inst4|Mux31~0_combout\ : std_logic;
SIGNAL \inst4|Mux31~1_combout\ : std_logic;
SIGNAL \inst4|ram[2][0]~regout\ : std_logic;
SIGNAL \inst4|Mux31~2_combout\ : std_logic;
SIGNAL \inst4|Mux31~3_combout\ : std_logic;
SIGNAL \inst4|Mux31~4_combout\ : std_logic;
SIGNAL \inst4|Mux15~0_combout\ : std_logic;
SIGNAL \PC|regOp:ram[0]~0_combout\ : std_logic;
SIGNAL \inst4|ram[1][15]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][15]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][14]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][14]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][13]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][12]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][12]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][12]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][11]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][8]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[2][7]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][7]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][6]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][6]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][6]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][4]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[2][4]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[3][4]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][1]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][1]~feeder_combout\ : std_logic;
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
SIGNAL \Control|Next_state.LoadMDR_2_383~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Control|State.LoadMDR_2~regout\ : std_logic;
SIGNAL \Control|Next_state.LoadIR_375~combout\ : std_logic;
SIGNAL \Control|State.LoadIR~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~18_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[15]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[1]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[1]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[1]~2\ : std_logic;
SIGNAL \PC|regOp:ram[2]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[2]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[2]~2\ : std_logic;
SIGNAL \PC|regOp:ram[3]~2\ : std_logic;
SIGNAL \PC|regOp:ram[4]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[4]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[4]~2\ : std_logic;
SIGNAL \PC|regOp:ram[5]~2\ : std_logic;
SIGNAL \PC|regOp:ram[6]~2\ : std_logic;
SIGNAL \PC|regOp:ram[7]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[7]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[7]~2\ : std_logic;
SIGNAL \PC|regOp:ram[8]~2\ : std_logic;
SIGNAL \PC|regOp:ram[9]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[9]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[9]~2\ : std_logic;
SIGNAL \PC|regOp:ram[10]~2\ : std_logic;
SIGNAL \PC|regOp:ram[11]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[11]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[11]~2\ : std_logic;
SIGNAL \PC|regOp:ram[12]~2\ : std_logic;
SIGNAL \PC|regOp:ram[13]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[13]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[13]~2\ : std_logic;
SIGNAL \PC|regOp:ram[14]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[14]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[14]~2\ : std_logic;
SIGNAL \PC|regOp:ram[15]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[15]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~14_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~17_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~19_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[5]~10_combout\ : std_logic;
SIGNAL \Control|Selector9~0_combout\ : std_logic;
SIGNAL \Control|Next_state.and0_351~combout\ : std_logic;
SIGNAL \Control|State.and0~regout\ : std_logic;
SIGNAL \Control|WideOr11~combout\ : std_logic;
SIGNAL \inst2|Data_CPU[4]~11_combout\ : std_logic;
SIGNAL \Control|WideOr11~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Data_CPU[6]~9_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[6]~regout\ : std_logic;
SIGNAL \PC|regOp:ram[6]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[6]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~53_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[7]~8_combout\ : std_logic;
SIGNAL \Control|SR2MUX~1_combout\ : std_logic;
SIGNAL \SR2Mux|Selector8~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[7]~4_combout\ : std_logic;
SIGNAL \PC|regOp:ram[8]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[8]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[8]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~46_combout\ : std_logic;
SIGNAL \inst4|ram[1][8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[11]~4_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[11]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~35_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[9]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~43_combout\ : std_logic;
SIGNAL \inst4|ram[3][9]~feeder_combout\ : std_logic;
SIGNAL \inst4|Decoder0~7_combout\ : std_logic;
SIGNAL \inst4|ram[3][9]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[1]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~69_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[10]~5_combout\ : std_logic;
SIGNAL \PC|regOp:ram[10]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[10]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~40_combout\ : std_logic;
SIGNAL \inst4|ram[3][10]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[3][10]~regout\ : std_logic;
SIGNAL \inst4|ram[2][10]~feeder_combout\ : std_logic;
SIGNAL \inst4|Decoder0~4_combout\ : std_logic;
SIGNAL \inst4|ram[2][10]~regout\ : std_logic;
SIGNAL \inst4|ram[1][10]~regout\ : std_logic;
SIGNAL \inst4|Mux5~2_combout\ : std_logic;
SIGNAL \inst4|Mux5~3_combout\ : std_logic;
SIGNAL \inst4|Decoder0~3_combout\ : std_logic;
SIGNAL \inst4|ram[7][10]~regout\ : std_logic;
SIGNAL \inst4|ram[6][10]~regout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|Mux5~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector7~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][5]~regout\ : std_logic;
SIGNAL \inst4|Decoder0~2_combout\ : std_logic;
SIGNAL \inst4|ram[4][5]~regout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~1_combout\ : std_logic;
SIGNAL \inst4|ram[3][5]~regout\ : std_logic;
SIGNAL \inst4|ram[2][5]~regout\ : std_logic;
SIGNAL \inst4|Mux10~3_combout\ : std_logic;
SIGNAL \inst4|Mux10~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector11~0_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[0]~15_combout\ : std_logic;
SIGNAL \inst4|ram[3][0]~regout\ : std_logic;
SIGNAL \inst4|ram[1][0]~regout\ : std_logic;
SIGNAL \inst4|ram[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Decoder0~6_combout\ : std_logic;
SIGNAL \inst4|ram[0][0]~regout\ : std_logic;
SIGNAL \inst4|Mux15~2_combout\ : std_logic;
SIGNAL \inst4|Mux15~3_combout\ : std_logic;
SIGNAL \inst4|ram[5][0]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][0]~regout\ : std_logic;
SIGNAL \inst4|ram[7][0]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][0]~regout\ : std_logic;
SIGNAL \inst4|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|Mux15~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[0]~17_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[0]~18_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~72_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~73_combout\ : std_logic;
SIGNAL \inst3|dataOut[3]~10_combout\ : std_logic;
SIGNAL \inst4|ram[3][2]~regout\ : std_logic;
SIGNAL \inst4|ram[2][2]~regout\ : std_logic;
SIGNAL \inst4|Mux29~3_combout\ : std_logic;
SIGNAL \inst4|Mux29~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector13~0_combout\ : std_logic;
SIGNAL \ALU|Add0~1\ : std_logic;
SIGNAL \ALU|Add0~3\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \inst3|dataOut[3]~11_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~64_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~65_combout\ : std_logic;
SIGNAL \inst4|ram[5][3]~regout\ : std_logic;
SIGNAL \inst4|ram[7][3]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][3]~regout\ : std_logic;
SIGNAL \inst4|Mux28~1_combout\ : std_logic;
SIGNAL \inst4|ram[3][3]~regout\ : std_logic;
SIGNAL \inst4|ram[2][3]~regout\ : std_logic;
SIGNAL \inst4|ram[1][3]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][3]~regout\ : std_logic;
SIGNAL \inst4|ram[0][3]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][3]~regout\ : std_logic;
SIGNAL \inst4|Mux28~2_combout\ : std_logic;
SIGNAL \inst4|Mux28~3_combout\ : std_logic;
SIGNAL \inst4|Mux28~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector12~0_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~15\ : std_logic;
SIGNAL \ALU|Add0~17\ : std_logic;
SIGNAL \ALU|Add0~19\ : std_logic;
SIGNAL \ALU|Add0~20_combout\ : std_logic;
SIGNAL \inst3|dataOut[10]~1_combout\ : std_logic;
SIGNAL \inst4|ram[0][10]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[0][10]~regout\ : std_logic;
SIGNAL \inst4|Mux21~2_combout\ : std_logic;
SIGNAL \inst4|Mux21~3_combout\ : std_logic;
SIGNAL \inst4|Mux21~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[10]~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~41_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~42_combout\ : std_logic;
SIGNAL \inst4|Decoder0~1_combout\ : std_logic;
SIGNAL \inst4|ram[6][1]~regout\ : std_logic;
SIGNAL \inst4|ram[4][1]~regout\ : std_logic;
SIGNAL \inst4|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][1]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][1]~regout\ : std_logic;
SIGNAL \inst4|ram[5][1]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][1]~regout\ : std_logic;
SIGNAL \inst4|Mux14~1_combout\ : std_logic;
SIGNAL \inst4|ram[3][1]~regout\ : std_logic;
SIGNAL \inst4|ram[2][1]~regout\ : std_logic;
SIGNAL \inst4|Mux14~3_combout\ : std_logic;
SIGNAL \inst4|Mux14~4_combout\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~15_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~14_combout\ : std_logic;
SIGNAL \inst3|dataOut[1]~16_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~70_combout\ : std_logic;
SIGNAL \inst4|ram[2][9]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[2][9]~regout\ : std_logic;
SIGNAL \inst4|Mux22~3_combout\ : std_logic;
SIGNAL \inst4|ram[7][9]~regout\ : std_logic;
SIGNAL \inst4|ram[4][9]~regout\ : std_logic;
SIGNAL \inst4|Mux22~0_combout\ : std_logic;
SIGNAL \inst4|Mux22~1_combout\ : std_logic;
SIGNAL \inst4|Mux22~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[9]~2_combout\ : std_logic;
SIGNAL \inst4|ram[5][9]~regout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|ram[0][9]~regout\ : std_logic;
SIGNAL \inst4|Mux6~2_combout\ : std_logic;
SIGNAL \inst4|Mux6~3_combout\ : std_logic;
SIGNAL \inst4|Mux6~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[9]~3_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~44_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~45_combout\ : std_logic;
SIGNAL \inst4|Decoder0~0_combout\ : std_logic;
SIGNAL \inst4|ram[5][11]~regout\ : std_logic;
SIGNAL \inst4|ram[7][11]~regout\ : std_logic;
SIGNAL \inst4|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|Mux4~4_combout\ : std_logic;
SIGNAL \ALU|Add0~21\ : std_logic;
SIGNAL \ALU|Add0~22_combout\ : std_logic;
SIGNAL \inst4|ram[2][11]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[2][11]~regout\ : std_logic;
SIGNAL \inst4|ram[1][11]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[1][11]~regout\ : std_logic;
SIGNAL \inst4|Mux20~2_combout\ : std_logic;
SIGNAL \inst4|ram[3][11]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[3][11]~regout\ : std_logic;
SIGNAL \inst4|Mux20~3_combout\ : std_logic;
SIGNAL \inst4|ram[4][11]~regout\ : std_logic;
SIGNAL \inst4|ram[6][11]~regout\ : std_logic;
SIGNAL \inst4|Mux20~0_combout\ : std_logic;
SIGNAL \inst4|Mux20~1_combout\ : std_logic;
SIGNAL \inst4|Mux20~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector4~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~36_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~37_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~38_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~39_combout\ : std_logic;
SIGNAL \inst4|Decoder0~5_combout\ : std_logic;
SIGNAL \inst4|ram[1][8]~regout\ : std_logic;
SIGNAL \inst4|Mux7~2_combout\ : std_logic;
SIGNAL \inst4|ram[2][8]~regout\ : std_logic;
SIGNAL \inst4|ram[3][8]~regout\ : std_logic;
SIGNAL \inst4|Mux7~3_combout\ : std_logic;
SIGNAL \inst4|Mux7~4_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~47_combout\ : std_logic;
SIGNAL \ALU|Add0~16_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~84_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~48_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[8]~49_combout\ : std_logic;
SIGNAL \instruction_register|internal[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[3][7]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[3][7]~regout\ : std_logic;
SIGNAL \inst4|ram[1][7]~regout\ : std_logic;
SIGNAL \inst4|Mux8~2_combout\ : std_logic;
SIGNAL \inst4|Mux8~3_combout\ : std_logic;
SIGNAL \inst4|ram[5][7]~regout\ : std_logic;
SIGNAL \inst4|ram[4][7]~regout\ : std_logic;
SIGNAL \inst4|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Mux8~1_combout\ : std_logic;
SIGNAL \inst4|Mux8~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[7]~5_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~51_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~52_combout\ : std_logic;
SIGNAL \instruction_register|internal[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux13~3_combout\ : std_logic;
SIGNAL \inst4|ram[5][2]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][2]~regout\ : std_logic;
SIGNAL \inst4|ram[7][2]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][2]~regout\ : std_logic;
SIGNAL \inst4|ram[6][2]~regout\ : std_logic;
SIGNAL \inst4|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|Mux13~1_combout\ : std_logic;
SIGNAL \inst4|Mux13~4_combout\ : std_logic;
SIGNAL \inst3|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst3|dataOut[2]~13_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~67_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~68_combout\ : std_logic;
SIGNAL \inst4|ram[2][6]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[2][6]~regout\ : std_logic;
SIGNAL \inst4|ram[3][6]~regout\ : std_logic;
SIGNAL \inst4|Mux25~3_combout\ : std_logic;
SIGNAL \inst4|Mux25~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector9~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[6]~6_combout\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \inst3|dataOut[6]~7_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~54_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~55_combout\ : std_logic;
SIGNAL \inst4|ram[4][4]~regout\ : std_logic;
SIGNAL \inst4|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|ram[5][4]~regout\ : std_logic;
SIGNAL \inst4|Mux11~1_combout\ : std_logic;
SIGNAL \inst4|Mux11~4_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~60_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~85_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~61_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[4]~62_combout\ : std_logic;
SIGNAL \SR2Mux|Selector10~0_combout\ : std_logic;
SIGNAL \inst3|dataOut[5]~8_combout\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \inst3|dataOut[5]~9_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~57_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~58_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[5]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[5]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[4]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[7]~regout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[14]~1_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[14]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~20_combout\ : std_logic;
SIGNAL \SR2Mux|Selector1~0_combout\ : std_logic;
SIGNAL \SR2Mux|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[12]~3_combout\ : std_logic;
SIGNAL \ALU|Add0~23\ : std_logic;
SIGNAL \ALU|Add0~24_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~31_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~32_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~33_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~34_combout\ : std_logic;
SIGNAL \inst4|ram[3][12]~regout\ : std_logic;
SIGNAL \inst4|ram[2][12]~regout\ : std_logic;
SIGNAL \inst4|Mux3~3_combout\ : std_logic;
SIGNAL \inst4|ram[4][12]~regout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|ram[7][12]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][12]~regout\ : std_logic;
SIGNAL \inst4|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|Add0~25\ : std_logic;
SIGNAL \ALU|Add0~27\ : std_logic;
SIGNAL \ALU|Add0~28_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~22_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~23_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~24_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[14]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[14]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[13]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[12]~regout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[11]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[11]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[9]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[10]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[10]~regout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[13]~2_combout\ : std_logic;
SIGNAL \MDR|regOp:ram[13]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~25_combout\ : std_logic;
SIGNAL \ALU|Add0~26_combout\ : std_logic;
SIGNAL \inst4|ram[7][13]~regout\ : std_logic;
SIGNAL \inst4|ram[5][13]~regout\ : std_logic;
SIGNAL \inst4|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|ram[3][13]~regout\ : std_logic;
SIGNAL \inst4|ram[1][13]~regout\ : std_logic;
SIGNAL \inst4|Mux2~2_combout\ : std_logic;
SIGNAL \inst4|Mux2~3_combout\ : std_logic;
SIGNAL \inst4|Mux2~4_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~26_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~27_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~28_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~29_combout\ : std_logic;
SIGNAL \Control|Selector0~0_combout\ : std_logic;
SIGNAL \Control|Selector10~0_combout\ : std_logic;
SIGNAL \Control|Next_state.add0_359~combout\ : std_logic;
SIGNAL \Control|State.add0~regout\ : std_logic;
SIGNAL \Run~combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~74_combout\ : std_logic;
SIGNAL \Control|Selector25~1_combout\ : std_logic;
SIGNAL \Control|Next_state.Halted_423~combout\ : std_logic;
SIGNAL \Control|State.Halted~0_combout\ : std_logic;
SIGNAL \Control|State.Halted~regout\ : std_logic;
SIGNAL \Control|Selector19~0_combout\ : std_logic;
SIGNAL \Control|Mux0~0_combout\ : std_logic;
SIGNAL \Control|Selector19~1_combout\ : std_logic;
SIGNAL \Control|Next_state.PCtoMAR_399~combout\ : std_logic;
SIGNAL \Control|State.PCtoMAR~regout\ : std_logic;
SIGNAL \Control|Next_state.LoadMDR_391~combout\ : std_logic;
SIGNAL \Control|State.LoadMDR~regout\ : std_logic;
SIGNAL \Control|Mem_OE~0_combout\ : std_logic;
SIGNAL \Control|Next_state.Decode_367~combout\ : std_logic;
SIGNAL \Control|State.Decode~regout\ : std_logic;
SIGNAL \Control|Next_state.PauseIR1_415~combout\ : std_logic;
SIGNAL \Control|State.PauseIR1~regout\ : std_logic;
SIGNAL \Control|Selector25~0_combout\ : std_logic;
SIGNAL \Control|WideNor0~combout\ : std_logic;
SIGNAL \Control|WideNor0~clkctrl_outclk\ : std_logic;
SIGNAL \Control|Selector0~1_combout\ : std_logic;
SIGNAL \Control|Next_state.not0_343~combout\ : std_logic;
SIGNAL \Control|State.not0~regout\ : std_logic;
SIGNAL \inst4|ram[5][15]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[5][15]~regout\ : std_logic;
SIGNAL \inst4|ram[7][15]~feeder_combout\ : std_logic;
SIGNAL \inst4|ram[7][15]~regout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux0~4_combout\ : std_logic;
SIGNAL \SR2Mux|Selector0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~29\ : std_logic;
SIGNAL \ALU|Add0~30_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~16_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[15]~0_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[15]~86_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[14]~87_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[13]~88_combout\ : std_logic;
SIGNAL \PC|regOp:ram[12]~1_combout\ : std_logic;
SIGNAL \PC|regOp:ram[12]~regout\ : std_logic;
SIGNAL \MDR|regOp:ram[12]~regout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~30_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[12]~89_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[11]~90_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[10]~75_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[9]~6_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[9]~76_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[7]~77_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[6]~78_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[5]~79_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[3]~12_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[3]~80_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[2]~13_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[2]~81_combout\ : std_logic;
SIGNAL \inst2|Data_CPU[1]~14_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[1]~82_combout\ : std_logic;
SIGNAL \GateMDR|dataOut[0]~83_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|regOp:ram[15]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[8]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[6]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[3]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[3]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[2]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[1]~feeder_combout\ : std_logic;
SIGNAL \inst12|regOp:ram[1]~regout\ : std_logic;
SIGNAL \inst12|regOp:ram[0]~regout\ : std_logic;
SIGNAL \Switches~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_register|internal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Control|ALUK\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|SR2out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|SR1out\ : std_logic_vector(15 DOWNTO 0);
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

\Control|WideOr11~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|WideOr11~combout\);

\Control|WideNor0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Control|WideNor0~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;

-- Location: LCCOMB_X18_Y4_N4
\ALU|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = ((\inst4|SR1out\(2) $ (\SR2Mux|Selector13~0_combout\ $ (!\ALU|Add0~3\)))) # (GND)
-- \ALU|Add0~5\ = CARRY((\inst4|SR1out\(2) & ((\SR2Mux|Selector13~0_combout\) # (!\ALU|Add0~3\))) # (!\inst4|SR1out\(2) & (\SR2Mux|Selector13~0_combout\ & !\ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(2),
	datab => \SR2Mux|Selector13~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~3\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: LCCOMB_X18_Y4_N8
\ALU|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = ((\inst4|SR1out\(4) $ (\SR2Mux|Selector11~0_combout\ $ (!\ALU|Add0~7\)))) # (GND)
-- \ALU|Add0~9\ = CARRY((\inst4|SR1out\(4) & ((\SR2Mux|Selector11~0_combout\) # (!\ALU|Add0~7\))) # (!\inst4|SR1out\(4) & (\SR2Mux|Selector11~0_combout\ & !\ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(4),
	datab => \SR2Mux|Selector11~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~8_combout\,
	cout => \ALU|Add0~9\);

-- Location: LCCOMB_X18_Y4_N14
\ALU|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (\inst4|SR1out\(7) & ((\SR2Mux|Selector8~0_combout\ & (\ALU|Add0~13\ & VCC)) # (!\SR2Mux|Selector8~0_combout\ & (!\ALU|Add0~13\)))) # (!\inst4|SR1out\(7) & ((\SR2Mux|Selector8~0_combout\ & (!\ALU|Add0~13\)) # 
-- (!\SR2Mux|Selector8~0_combout\ & ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~15\ = CARRY((\inst4|SR1out\(7) & (!\SR2Mux|Selector8~0_combout\ & !\ALU|Add0~13\)) # (!\inst4|SR1out\(7) & ((!\ALU|Add0~13\) # (!\SR2Mux|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(7),
	datab => \SR2Mux|Selector8~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~14_combout\,
	cout => \ALU|Add0~15\);

-- Location: LCCOMB_X18_Y4_N18
\ALU|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = (\inst4|SR1out\(9) & ((\SR2Mux|Selector6~0_combout\ & (\ALU|Add0~17\ & VCC)) # (!\SR2Mux|Selector6~0_combout\ & (!\ALU|Add0~17\)))) # (!\inst4|SR1out\(9) & ((\SR2Mux|Selector6~0_combout\ & (!\ALU|Add0~17\)) # 
-- (!\SR2Mux|Selector6~0_combout\ & ((\ALU|Add0~17\) # (GND)))))
-- \ALU|Add0~19\ = CARRY((\inst4|SR1out\(9) & (!\SR2Mux|Selector6~0_combout\ & !\ALU|Add0~17\)) # (!\inst4|SR1out\(9) & ((!\ALU|Add0~17\) # (!\SR2Mux|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(9),
	datab => \SR2Mux|Selector6~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~17\,
	combout => \ALU|Add0~18_combout\,
	cout => \ALU|Add0~19\);

-- Location: LCFF_X20_Y1_N11
\PC|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[5]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[5]~regout\);

-- Location: LCFF_X20_Y1_N7
\PC|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[3]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[3]~regout\);

-- Location: LCCOMB_X20_Y1_N6
\PC|regOp:ram[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[3]~1_combout\ = (\PC|regOp:ram[3]~regout\ & (\PC|regOp:ram[2]~2\ $ (GND))) # (!\PC|regOp:ram[3]~regout\ & (!\PC|regOp:ram[2]~2\ & VCC))
-- \PC|regOp:ram[3]~2\ = CARRY((\PC|regOp:ram[3]~regout\ & !\PC|regOp:ram[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[3]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[2]~2\,
	combout => \PC|regOp:ram[3]~1_combout\,
	cout => \PC|regOp:ram[3]~2\);

-- Location: LCCOMB_X20_Y1_N10
\PC|regOp:ram[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[5]~1_combout\ = (\PC|regOp:ram[5]~regout\ & (\PC|regOp:ram[4]~2\ $ (GND))) # (!\PC|regOp:ram[5]~regout\ & (!\PC|regOp:ram[4]~2\ & VCC))
-- \PC|regOp:ram[5]~2\ = CARRY((\PC|regOp:ram[5]~regout\ & !\PC|regOp:ram[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[5]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[4]~2\,
	combout => \PC|regOp:ram[5]~1_combout\,
	cout => \PC|regOp:ram[5]~2\);

-- Location: LCCOMB_X17_Y2_N12
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (\inst12|regOp:ram[3]~regout\ & (\inst12|regOp:ram[1]~regout\ & (\inst12|regOp:ram[0]~regout\ & \inst12|regOp:ram[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[3]~regout\,
	datab => \inst12|regOp:ram[1]~regout\,
	datac => \inst12|regOp:ram[0]~regout\,
	datad => \inst12|regOp:ram[2]~regout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LCFF_X17_Y6_N5
\inst4|SR2out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(15));

-- Location: LCFF_X16_Y4_N1
\inst4|SR2out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(14));

-- Location: LCFF_X21_Y3_N3
\inst4|SR1out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(14));

-- Location: LCFF_X17_Y6_N23
\inst4|SR2out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(13));

-- Location: LCFF_X17_Y6_N25
\inst4|SR2out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(12));

-- Location: LCCOMB_X17_Y4_N8
\SR2Mux|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector3~0_combout\ = (\Control|SR2MUX~1_combout\ & ((\inst4|SR2out\(12)))) # (!\Control|SR2MUX~1_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|SR2MUX~1_combout\,
	datac => \instruction_register|internal\(4),
	datad => \inst4|SR2out\(12),
	combout => \SR2Mux|Selector3~0_combout\);

-- Location: LCFF_X16_Y4_N9
\inst4|SR2out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(8));

-- Location: LCFF_X16_Y4_N15
\inst4|SR2out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(7));

-- Location: LCFF_X17_Y1_N1
\inst4|SR1out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(6));

-- Location: LCFF_X16_Y4_N3
\inst4|SR2out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(5));

-- Location: LCFF_X16_Y4_N13
\inst4|SR2out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux27~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(4));

-- Location: LCFF_X17_Y1_N25
\inst4|SR1out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(3));

-- Location: LCFF_X16_Y4_N11
\inst4|SR2out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(1));

-- Location: LCCOMB_X17_Y4_N14
\SR2Mux|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector14~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(1))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(1),
	datac => \instruction_register|internal\(1),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector14~0_combout\);

-- Location: LCFF_X16_Y4_N17
\inst4|SR2out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux31~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(0));

-- Location: LCCOMB_X17_Y4_N30
\SR2Mux|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector15~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(0))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR2out\(0),
	datac => \instruction_register|internal\(0),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector15~0_combout\);

-- Location: LCCOMB_X18_Y3_N12
\GateMDR|dataOut[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~15_combout\ = (\inst4|SR1out\(15) & ((\SR2Mux|Selector0~0_combout\) # (\Control|ALUK\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(15),
	datab => \SR2Mux|Selector0~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[15]~15_combout\);

-- Location: LCCOMB_X18_Y3_N24
\GateMDR|dataOut[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~21_combout\ = (\inst4|SR1out\(14) & ((\SR2Mux|Selector1~0_combout\) # (\Control|ALUK\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(14),
	datab => \SR2Mux|Selector1~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[14]~21_combout\);

-- Location: LCFF_X21_Y4_N3
\MDR|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[10]~regout\);

-- Location: LCCOMB_X18_Y1_N24
\inst2|Data_CPU[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[8]~7_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(8))) # (!\inst2|Equal0~4_combout\ & ((\Data~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(8),
	datab => \Control|Mem_OE~0_combout\,
	datac => \Data~7\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[8]~7_combout\);

-- Location: LCFF_X18_Y1_N3
\MDR|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[7]~regout\);

-- Location: LCCOMB_X18_Y1_N2
\GateMDR|dataOut[7]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~50_combout\ = (\PC|regOp:ram[7]~regout\ & (((\MDR|regOp:ram[7]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[7]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[7]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[7]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[7]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[7]~50_combout\);

-- Location: LCFF_X19_Y5_N11
\MDR|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[5]~regout\);

-- Location: LCCOMB_X19_Y5_N10
\GateMDR|dataOut[5]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~56_combout\ = (\PC|regOp:ram[5]~regout\ & (((\MDR|regOp:ram[5]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[5]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[5]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[5]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[5]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[5]~56_combout\);

-- Location: LCFF_X19_Y5_N21
\MDR|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[4]~regout\);

-- Location: LCCOMB_X19_Y5_N20
\GateMDR|dataOut[4]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~59_combout\ = (\PC|regOp:ram[4]~regout\ & (((\MDR|regOp:ram[4]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[4]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[4]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[4]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[4]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[4]~59_combout\);

-- Location: LCFF_X19_Y5_N7
\MDR|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[3]~regout\);

-- Location: LCCOMB_X19_Y5_N6
\GateMDR|dataOut[3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~63_combout\ = (\PC|regOp:ram[3]~regout\ & (((\MDR|regOp:ram[3]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[3]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[3]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[3]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[3]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[3]~63_combout\);

-- Location: LCFF_X17_Y6_N21
\MDR|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[2]~regout\);

-- Location: LCCOMB_X17_Y6_N20
\GateMDR|dataOut[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~66_combout\ = (\Control|State.LoadIR~regout\ & (\MDR|regOp:ram[2]~regout\ & ((\PC|regOp:ram[2]~regout\) # (!\Control|State.PCtoMAR~regout\)))) # (!\Control|State.LoadIR~regout\ & ((\PC|regOp:ram[2]~regout\) # 
-- ((!\Control|State.PCtoMAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LoadIR~regout\,
	datab => \PC|regOp:ram[2]~regout\,
	datac => \MDR|regOp:ram[2]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[2]~66_combout\);

-- Location: LCFF_X17_Y6_N31
\MDR|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[0]~regout\);

-- Location: LCFF_X17_Y2_N23
\PC|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[0]~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[0]~regout\);

-- Location: LCCOMB_X17_Y6_N30
\GateMDR|dataOut[0]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~71_combout\ = (\Control|State.LoadIR~regout\ & (\MDR|regOp:ram[0]~regout\ & ((\PC|regOp:ram[0]~regout\) # (!\Control|State.PCtoMAR~regout\)))) # (!\Control|State.LoadIR~regout\ & ((\PC|regOp:ram[0]~regout\) # 
-- ((!\Control|State.PCtoMAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LoadIR~regout\,
	datab => \PC|regOp:ram[0]~regout\,
	datac => \MDR|regOp:ram[0]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[0]~71_combout\);

-- Location: LCFF_X19_Y2_N9
\inst4|ram[6][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][15]~regout\);

-- Location: LCFF_X19_Y2_N23
\inst4|ram[4][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][15]~regout\);

-- Location: LCCOMB_X19_Y2_N22
\inst4|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux16~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][15]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[6][15]~regout\,
	datac => \inst4|ram[4][15]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux16~0_combout\);

-- Location: LCCOMB_X20_Y3_N4
\inst4|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux16~1_combout\ = (\inst4|Mux16~0_combout\ & (((\inst4|ram[7][15]~regout\)) # (!\instruction_register|internal\(0)))) # (!\inst4|Mux16~0_combout\ & (\instruction_register|internal\(0) & (\inst4|ram[5][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux16~0_combout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[5][15]~regout\,
	datad => \inst4|ram[7][15]~regout\,
	combout => \inst4|Mux16~1_combout\);

-- Location: LCFF_X18_Y3_N21
\inst4|ram[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][15]~regout\);

-- Location: LCFF_X16_Y3_N5
\inst4|ram[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][15]~regout\);

-- Location: LCFF_X16_Y3_N27
\inst4|ram[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][15]~regout\);

-- Location: LCCOMB_X18_Y2_N20
\inst4|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux16~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][15]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][15]~regout\,
	datad => \inst4|ram[0][15]~regout\,
	combout => \inst4|Mux16~2_combout\);

-- Location: LCFF_X18_Y3_N23
\inst4|ram[3][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][15]~regout\);

-- Location: LCCOMB_X18_Y2_N2
\inst4|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux16~3_combout\ = (\inst4|Mux16~2_combout\ & (((\inst4|ram[3][15]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst4|Mux16~2_combout\ & (\instruction_register|internal\(1) & (\inst4|ram[2][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux16~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[2][15]~regout\,
	datad => \inst4|ram[3][15]~regout\,
	combout => \inst4|Mux16~3_combout\);

-- Location: LCCOMB_X17_Y6_N4
\inst4|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux16~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux16~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datac => \inst4|Mux16~1_combout\,
	datad => \inst4|Mux16~3_combout\,
	combout => \inst4|Mux16~4_combout\);

-- Location: LCCOMB_X19_Y2_N8
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\instruction_register|internal\(6) & (\instruction_register|internal\(7))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][15]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[6][15]~regout\,
	datad => \inst4|ram[4][15]~regout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y2_N4
\inst4|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & ((\inst4|ram[1][15]~regout\))) # (!\instruction_register|internal\(6) 
-- & (\inst4|ram[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][15]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[1][15]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux0~2_combout\);

-- Location: LCCOMB_X18_Y2_N6
\inst4|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~3_combout\ = (\inst4|Mux0~2_combout\ & (((\inst4|ram[3][15]~regout\) # (!\instruction_register|internal\(7))))) # (!\inst4|Mux0~2_combout\ & (\inst4|ram[2][15]~regout\ & ((\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][15]~regout\,
	datab => \inst4|ram[3][15]~regout\,
	datac => \inst4|Mux0~2_combout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux0~3_combout\);

-- Location: LCFF_X20_Y3_N1
\inst4|ram[5][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][14]~regout\);

-- Location: LCFF_X19_Y2_N1
\inst4|ram[6][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][14]~regout\);

-- Location: LCFF_X19_Y2_N3
\inst4|ram[4][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][14]~regout\);

-- Location: LCCOMB_X19_Y2_N2
\inst4|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux17~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][14]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[6][14]~regout\,
	datac => \inst4|ram[4][14]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux17~0_combout\);

-- Location: LCFF_X20_Y3_N23
\inst4|ram[7][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][14]~regout\);

-- Location: LCCOMB_X20_Y3_N0
\inst4|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux17~1_combout\ = (\inst4|Mux17~0_combout\ & (((\inst4|ram[7][14]~regout\)) # (!\instruction_register|internal\(0)))) # (!\inst4|Mux17~0_combout\ & (\instruction_register|internal\(0) & (\inst4|ram[5][14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux17~0_combout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[5][14]~regout\,
	datad => \inst4|ram[7][14]~regout\,
	combout => \inst4|Mux17~1_combout\);

-- Location: LCFF_X18_Y3_N17
\inst4|ram[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][14]~regout\);

-- Location: LCFF_X18_Y2_N17
\inst4|ram[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][14]~regout\);

-- Location: LCFF_X18_Y2_N31
\inst4|ram[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][14]~regout\);

-- Location: LCCOMB_X18_Y2_N28
\inst4|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux17~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][14]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][14]~regout\,
	datad => \inst4|ram[0][14]~regout\,
	combout => \inst4|Mux17~2_combout\);

-- Location: LCFF_X18_Y3_N11
\inst4|ram[3][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][14]~regout\);

-- Location: LCCOMB_X17_Y2_N28
\inst4|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux17~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux17~2_combout\ & (\inst4|ram[3][14]~regout\)) # (!\inst4|Mux17~2_combout\ & ((\inst4|ram[2][14]~regout\))))) # (!\instruction_register|internal\(1) & (((\inst4|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[3][14]~regout\,
	datab => \inst4|ram[2][14]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \inst4|Mux17~2_combout\,
	combout => \inst4|Mux17~3_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst4|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux17~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux17~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux17~1_combout\,
	datab => \inst4|Mux17~3_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst4|Mux17~4_combout\);

-- Location: LCCOMB_X19_Y2_N0
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\instruction_register|internal\(6) & (\instruction_register|internal\(7))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][14]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[6][14]~regout\,
	datad => \inst4|ram[4][14]~regout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y3_N22
\inst4|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (\inst4|Mux1~0_combout\ & (((\inst4|ram[7][14]~regout\) # (!\instruction_register|internal\(6))))) # (!\inst4|Mux1~0_combout\ & (\inst4|ram[5][14]~regout\ & ((\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux1~0_combout\,
	datab => \inst4|ram[5][14]~regout\,
	datac => \inst4|ram[7][14]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y2_N22
\inst4|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][14]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][14]~regout\,
	datab => \inst4|ram[0][14]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux1~2_combout\);

-- Location: LCCOMB_X18_Y3_N0
\inst4|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux1~2_combout\ & (\inst4|ram[3][14]~regout\)) # (!\inst4|Mux1~2_combout\ & ((\inst4|ram[2][14]~regout\))))) # (!\instruction_register|internal\(7) & (((\inst4|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[3][14]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[2][14]~regout\,
	datad => \inst4|Mux1~2_combout\,
	combout => \inst4|Mux1~3_combout\);

-- Location: LCCOMB_X21_Y3_N2
\inst4|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux1~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux1~3_combout\,
	datac => \instruction_register|internal\(8),
	datad => \inst4|Mux1~1_combout\,
	combout => \inst4|Mux1~4_combout\);

-- Location: LCFF_X19_Y2_N5
\inst4|ram[6][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][13]~regout\);

-- Location: LCFF_X19_Y2_N19
\inst4|ram[4][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][13]~regout\);

-- Location: LCCOMB_X19_Y2_N18
\inst4|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux18~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][13]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[6][13]~regout\,
	datac => \inst4|ram[4][13]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux18~0_combout\);

-- Location: LCCOMB_X20_Y3_N28
\inst4|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux18~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux18~0_combout\ & (\inst4|ram[7][13]~regout\)) # (!\inst4|Mux18~0_combout\ & ((\inst4|ram[5][13]~regout\))))) # (!\instruction_register|internal\(0) & (((\inst4|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][13]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[5][13]~regout\,
	datad => \inst4|Mux18~0_combout\,
	combout => \inst4|Mux18~1_combout\);

-- Location: LCFF_X17_Y3_N5
\inst4|ram[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][13]~regout\);

-- Location: LCFF_X18_Y2_N11
\inst4|ram[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][13]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][13]~regout\);

-- Location: LCCOMB_X18_Y2_N8
\inst4|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux18~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst4|ram[1][13]~regout\))) # (!\instruction_register|internal\(0) 
-- & (\inst4|ram[0][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][13]~regout\,
	datab => \inst4|ram[1][13]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux18~2_combout\);

-- Location: LCCOMB_X17_Y3_N4
\inst4|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux18~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux18~2_combout\ & ((\inst4|ram[3][13]~regout\))) # (!\inst4|Mux18~2_combout\ & (\inst4|ram[2][13]~regout\)))) # (!\instruction_register|internal\(1) & (\inst4|Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|Mux18~2_combout\,
	datac => \inst4|ram[2][13]~regout\,
	datad => \inst4|ram[3][13]~regout\,
	combout => \inst4|Mux18~3_combout\);

-- Location: LCCOMB_X17_Y6_N22
\inst4|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux18~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux18~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datac => \inst4|Mux18~3_combout\,
	datad => \inst4|Mux18~1_combout\,
	combout => \inst4|Mux18~4_combout\);

-- Location: LCCOMB_X19_Y2_N4
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\instruction_register|internal\(6) & (\instruction_register|internal\(7))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][13]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[6][13]~regout\,
	datad => \inst4|ram[4][13]~regout\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCFF_X20_Y3_N13
\inst4|ram[5][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][12]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][12]~regout\);

-- Location: LCFF_X18_Y6_N17
\inst4|ram[6][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][12]~regout\);

-- Location: LCCOMB_X18_Y6_N16
\inst4|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux19~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][12]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[6][12]~regout\,
	datad => \inst4|ram[4][12]~regout\,
	combout => \inst4|Mux19~0_combout\);

-- Location: LCCOMB_X19_Y6_N10
\inst4|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux19~1_combout\ = (\inst4|Mux19~0_combout\ & (((\inst4|ram[7][12]~regout\) # (!\instruction_register|internal\(0))))) # (!\inst4|Mux19~0_combout\ & (\inst4|ram[5][12]~regout\ & (\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][12]~regout\,
	datab => \inst4|Mux19~0_combout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|ram[7][12]~regout\,
	combout => \inst4|Mux19~1_combout\);

-- Location: LCFF_X16_Y3_N25
\inst4|ram[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][12]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][12]~regout\);

-- Location: LCFF_X16_Y3_N23
\inst4|ram[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][12]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][12]~regout\);

-- Location: LCCOMB_X16_Y3_N0
\inst4|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux19~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst4|ram[1][12]~regout\)) # (!\instruction_register|internal\(0) & 
-- ((\inst4|ram[0][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][12]~regout\,
	datab => \inst4|ram[0][12]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux19~2_combout\);

-- Location: LCCOMB_X17_Y3_N12
\inst4|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux19~3_combout\ = (\inst4|Mux19~2_combout\ & ((\inst4|ram[3][12]~regout\) # ((!\instruction_register|internal\(1))))) # (!\inst4|Mux19~2_combout\ & (((\inst4|ram[2][12]~regout\ & \instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux19~2_combout\,
	datab => \inst4|ram[3][12]~regout\,
	datac => \inst4|ram[2][12]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux19~3_combout\);

-- Location: LCCOMB_X17_Y6_N24
\inst4|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux19~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux19~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datac => \inst4|Mux19~3_combout\,
	datad => \inst4|Mux19~1_combout\,
	combout => \inst4|Mux19~4_combout\);

-- Location: LCCOMB_X16_Y3_N2
\inst4|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~2_combout\ = (\instruction_register|internal\(6) & (((\inst4|ram[1][12]~regout\) # (\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & (\inst4|ram[0][12]~regout\ & ((!\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[0][12]~regout\,
	datac => \inst4|ram[1][12]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux3~2_combout\);

-- Location: LCFF_X20_Y4_N31
\inst4|ram[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][11]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][11]~regout\);

-- Location: LCCOMB_X19_Y2_N26
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\instruction_register|internal\(7) & ((\inst4|ram[6][11]~regout\) # ((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & (((\inst4|ram[4][11]~regout\ & !\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][11]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[4][11]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y4_N18
\inst4|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~2_combout\ = (\instruction_register|internal\(6) & ((\inst4|ram[1][11]~regout\) # ((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & (((!\instruction_register|internal\(7) & \inst4|ram[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[1][11]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \inst4|ram[0][11]~regout\,
	combout => \inst4|Mux4~2_combout\);

-- Location: LCCOMB_X20_Y2_N2
\inst4|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux4~2_combout\ & ((\inst4|ram[3][11]~regout\))) # (!\inst4|Mux4~2_combout\ & (\inst4|ram[2][11]~regout\)))) # (!\instruction_register|internal\(7) & (((\inst4|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|ram[2][11]~regout\,
	datac => \inst4|Mux4~2_combout\,
	datad => \inst4|ram[3][11]~regout\,
	combout => \inst4|Mux4~3_combout\);

-- Location: LCFF_X20_Y3_N21
\inst4|ram[5][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][10]~regout\);

-- Location: LCFF_X19_Y2_N11
\inst4|ram[4][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][10]~regout\);

-- Location: LCCOMB_X19_Y2_N10
\inst4|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux21~0_combout\ = (\instruction_register|internal\(1) & ((\inst4|ram[6][10]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((\inst4|ram[4][10]~regout\ & !\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][10]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[4][10]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux21~0_combout\);

-- Location: LCCOMB_X20_Y3_N20
\inst4|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux21~1_combout\ = (\inst4|Mux21~0_combout\ & (((\inst4|ram[7][10]~regout\)) # (!\instruction_register|internal\(0)))) # (!\inst4|Mux21~0_combout\ & (\instruction_register|internal\(0) & (\inst4|ram[5][10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux21~0_combout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[5][10]~regout\,
	datad => \inst4|ram[7][10]~regout\,
	combout => \inst4|Mux21~1_combout\);

-- Location: LCFF_X19_Y2_N15
\inst4|ram[6][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][9]~regout\);

-- Location: LCFF_X18_Y2_N13
\inst4|ram[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][9]~regout\);

-- Location: LCCOMB_X18_Y2_N12
\inst4|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux22~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][9]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][9]~regout\,
	datad => \inst4|ram[0][9]~regout\,
	combout => \inst4|Mux22~2_combout\);

-- Location: LCFF_X16_Y5_N21
\inst4|ram[5][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][8]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][8]~regout\);

-- Location: LCFF_X17_Y5_N1
\inst4|ram[6][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][8]~regout\);

-- Location: LCFF_X17_Y5_N31
\inst4|ram[4][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][8]~regout\);

-- Location: LCCOMB_X17_Y5_N30
\inst4|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux23~0_combout\ = (\instruction_register|internal\(1) & ((\instruction_register|internal\(0)) # ((\inst4|ram[6][8]~regout\)))) # (!\instruction_register|internal\(1) & (!\instruction_register|internal\(0) & (\inst4|ram[4][8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[4][8]~regout\,
	datad => \inst4|ram[6][8]~regout\,
	combout => \inst4|Mux23~0_combout\);

-- Location: LCFF_X17_Y1_N7
\inst4|ram[7][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][8]~regout\);

-- Location: LCCOMB_X16_Y5_N26
\inst4|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux23~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux23~0_combout\ & ((\inst4|ram[7][8]~regout\))) # (!\inst4|Mux23~0_combout\ & (\inst4|ram[5][8]~regout\)))) # (!\instruction_register|internal\(0) & (((\inst4|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][8]~regout\,
	datab => \inst4|ram[7][8]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|Mux23~0_combout\,
	combout => \inst4|Mux23~1_combout\);

-- Location: LCFF_X18_Y2_N25
\inst4|ram[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][8]~regout\);

-- Location: LCCOMB_X18_Y2_N24
\inst4|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux23~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst4|ram[1][8]~regout\)) # (!\instruction_register|internal\(0) & 
-- ((\inst4|ram[0][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][8]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[0][8]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux23~2_combout\);

-- Location: LCCOMB_X20_Y2_N6
\inst4|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux23~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux23~2_combout\ & (\inst4|ram[3][8]~regout\)) # (!\inst4|Mux23~2_combout\ & ((\inst4|ram[2][8]~regout\))))) # (!\instruction_register|internal\(1) & (((\inst4|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[3][8]~regout\,
	datac => \inst4|ram[2][8]~regout\,
	datad => \inst4|Mux23~2_combout\,
	combout => \inst4|Mux23~3_combout\);

-- Location: LCCOMB_X16_Y4_N8
\inst4|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux23~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux23~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux23~1_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux23~3_combout\,
	combout => \inst4|Mux23~4_combout\);

-- Location: LCCOMB_X17_Y5_N0
\inst4|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & ((\inst4|ram[6][8]~regout\))) # (!\instruction_register|internal\(7) & 
-- (\inst4|ram[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[4][8]~regout\,
	datac => \inst4|ram[6][8]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y5_N28
\inst4|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux7~1_combout\ = (\inst4|Mux7~0_combout\ & (((\inst4|ram[7][8]~regout\) # (!\instruction_register|internal\(6))))) # (!\inst4|Mux7~0_combout\ & (\inst4|ram[5][8]~regout\ & (\instruction_register|internal\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][8]~regout\,
	datab => \inst4|Mux7~0_combout\,
	datac => \instruction_register|internal\(6),
	datad => \inst4|ram[7][8]~regout\,
	combout => \inst4|Mux7~1_combout\);

-- Location: LCFF_X17_Y5_N17
\inst4|ram[6][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][7]~regout\);

-- Location: LCCOMB_X17_Y5_N16
\inst4|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux24~0_combout\ = (\instruction_register|internal\(1) & ((\instruction_register|internal\(0)) # ((\inst4|ram[6][7]~regout\)))) # (!\instruction_register|internal\(1) & (!\instruction_register|internal\(0) & ((\inst4|ram[4][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[6][7]~regout\,
	datad => \inst4|ram[4][7]~regout\,
	combout => \inst4|Mux24~0_combout\);

-- Location: LCFF_X17_Y1_N9
\inst4|ram[7][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][7]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][7]~regout\);

-- Location: LCCOMB_X16_Y5_N10
\inst4|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux24~1_combout\ = (\inst4|Mux24~0_combout\ & (((\inst4|ram[7][7]~regout\) # (!\instruction_register|internal\(0))))) # (!\inst4|Mux24~0_combout\ & (\inst4|ram[5][7]~regout\ & (\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux24~0_combout\,
	datab => \inst4|ram[5][7]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|ram[7][7]~regout\,
	combout => \inst4|Mux24~1_combout\);

-- Location: LCFF_X15_Y5_N13
\inst4|ram[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][7]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][7]~regout\);

-- Location: LCFF_X18_Y5_N7
\inst4|ram[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][7]~regout\);

-- Location: LCCOMB_X15_Y5_N26
\inst4|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux24~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][7]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & (\inst4|ram[0][7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[0][7]~regout\,
	datad => \inst4|ram[1][7]~regout\,
	combout => \inst4|Mux24~2_combout\);

-- Location: LCCOMB_X15_Y5_N6
\inst4|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux24~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux24~2_combout\ & ((\inst4|ram[3][7]~regout\))) # (!\inst4|Mux24~2_combout\ & (\inst4|ram[2][7]~regout\)))) # (!\instruction_register|internal\(1) & (((\inst4|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][7]~regout\,
	datab => \inst4|ram[3][7]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \inst4|Mux24~2_combout\,
	combout => \inst4|Mux24~3_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst4|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux24~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux24~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux24~3_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux24~1_combout\,
	combout => \inst4|Mux24~4_combout\);

-- Location: LCFF_X16_Y5_N13
\inst4|ram[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][6]~regout\);

-- Location: LCFF_X17_Y5_N27
\inst4|ram[6][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][6]~regout\);

-- Location: LCFF_X17_Y5_N9
\inst4|ram[4][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][6]~regout\);

-- Location: LCCOMB_X17_Y5_N8
\inst4|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux25~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst4|ram[6][6]~regout\))) # (!\instruction_register|internal\(1) & 
-- (\inst4|ram[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[4][6]~regout\,
	datad => \inst4|ram[6][6]~regout\,
	combout => \inst4|Mux25~0_combout\);

-- Location: LCFF_X17_Y1_N3
\inst4|ram[7][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][6]~regout\);

-- Location: LCCOMB_X16_Y5_N12
\inst4|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux25~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux25~0_combout\ & ((\inst4|ram[7][6]~regout\))) # (!\inst4|Mux25~0_combout\ & (\inst4|ram[5][6]~regout\)))) # (!\instruction_register|internal\(0) & (\inst4|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|Mux25~0_combout\,
	datac => \inst4|ram[5][6]~regout\,
	datad => \inst4|ram[7][6]~regout\,
	combout => \inst4|Mux25~1_combout\);

-- Location: LCFF_X16_Y3_N21
\inst4|ram[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][6]~regout\);

-- Location: LCFF_X16_Y3_N15
\inst4|ram[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][6]~regout\);

-- Location: LCCOMB_X16_Y3_N12
\inst4|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux25~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst4|ram[1][6]~regout\)) # (!\instruction_register|internal\(0) & 
-- ((\inst4|ram[0][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][6]~regout\,
	datab => \inst4|ram[0][6]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux25~2_combout\);

-- Location: LCCOMB_X17_Y5_N10
\inst4|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux9~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][6]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[6][6]~regout\,
	datac => \inst4|ram[4][6]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y5_N6
\inst4|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux9~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux9~0_combout\ & (\inst4|ram[7][6]~regout\)) # (!\inst4|Mux9~0_combout\ & ((\inst4|ram[5][6]~regout\))))) # (!\instruction_register|internal\(6) & (((\inst4|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][6]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|Mux9~0_combout\,
	datad => \inst4|ram[5][6]~regout\,
	combout => \inst4|Mux9~1_combout\);

-- Location: LCCOMB_X16_Y3_N8
\inst4|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux9~2_combout\ = (\instruction_register|internal\(6) & (((\inst4|ram[1][6]~regout\) # (\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & (\inst4|ram[0][6]~regout\ & ((!\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[0][6]~regout\,
	datac => \inst4|ram[1][6]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux9~2_combout\);

-- Location: LCCOMB_X17_Y3_N22
\inst4|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux9~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux9~2_combout\ & ((\inst4|ram[3][6]~regout\))) # (!\inst4|Mux9~2_combout\ & (\inst4|ram[2][6]~regout\)))) # (!\instruction_register|internal\(7) & (((\inst4|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][6]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][6]~regout\,
	datad => \inst4|Mux9~2_combout\,
	combout => \inst4|Mux9~3_combout\);

-- Location: LCCOMB_X17_Y1_N0
\inst4|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux9~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux9~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(8),
	datac => \inst4|Mux9~1_combout\,
	datad => \inst4|Mux9~3_combout\,
	combout => \inst4|Mux9~4_combout\);

-- Location: LCFF_X16_Y5_N17
\inst4|ram[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][5]~regout\);

-- Location: LCFF_X17_Y5_N25
\inst4|ram[6][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][5]~regout\);

-- Location: LCCOMB_X17_Y5_N24
\inst4|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux26~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst4|ram[6][5]~regout\))) # (!\instruction_register|internal\(1) 
-- & (\inst4|ram[4][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[4][5]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[6][5]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux26~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst4|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux26~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux26~0_combout\ & (\inst4|ram[7][5]~regout\)) # (!\inst4|Mux26~0_combout\ & ((\inst4|ram[5][5]~regout\))))) # (!\instruction_register|internal\(0) & (((\inst4|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[7][5]~regout\,
	datac => \inst4|ram[5][5]~regout\,
	datad => \inst4|Mux26~0_combout\,
	combout => \inst4|Mux26~1_combout\);

-- Location: LCFF_X18_Y5_N11
\inst4|ram[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][5]~regout\);

-- Location: LCFF_X18_Y5_N15
\inst4|ram[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][5]~regout\);

-- Location: LCCOMB_X18_Y5_N10
\inst4|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux26~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][5]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][5]~regout\,
	datad => \inst4|ram[0][5]~regout\,
	combout => \inst4|Mux26~2_combout\);

-- Location: LCCOMB_X17_Y3_N0
\inst4|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux26~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux26~2_combout\ & ((\inst4|ram[3][5]~regout\))) # (!\inst4|Mux26~2_combout\ & (\inst4|ram[2][5]~regout\)))) # (!\instruction_register|internal\(1) & (\inst4|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|Mux26~2_combout\,
	datac => \inst4|ram[2][5]~regout\,
	datad => \inst4|ram[3][5]~regout\,
	combout => \inst4|Mux26~3_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst4|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux26~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux26~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux26~3_combout\,
	datac => \inst4|Mux26~1_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst4|Mux26~4_combout\);

-- Location: LCCOMB_X18_Y5_N24
\inst4|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux10~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][5]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][5]~regout\,
	datab => \inst4|ram[0][5]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux10~2_combout\);

-- Location: LCFF_X17_Y5_N13
\inst4|ram[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][4]~regout\);

-- Location: LCCOMB_X17_Y5_N12
\inst4|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux27~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][4]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[6][4]~regout\,
	datad => \inst4|ram[4][4]~regout\,
	combout => \inst4|Mux27~0_combout\);

-- Location: LCFF_X17_Y1_N31
\inst4|ram[7][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][4]~regout\);

-- Location: LCCOMB_X16_Y5_N0
\inst4|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux27~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux27~0_combout\ & ((\inst4|ram[7][4]~regout\))) # (!\inst4|Mux27~0_combout\ & (\inst4|ram[5][4]~regout\)))) # (!\instruction_register|internal\(0) & (\inst4|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|Mux27~0_combout\,
	datac => \inst4|ram[5][4]~regout\,
	datad => \inst4|ram[7][4]~regout\,
	combout => \inst4|Mux27~1_combout\);

-- Location: LCFF_X15_Y5_N15
\inst4|ram[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][4]~regout\);

-- Location: LCFF_X18_Y5_N31
\inst4|ram[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][4]~regout\);

-- Location: LCFF_X18_Y5_N17
\inst4|ram[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][4]~regout\);

-- Location: LCCOMB_X18_Y5_N30
\inst4|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux27~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst4|ram[1][4]~regout\))) # (!\instruction_register|internal\(0) 
-- & (\inst4|ram[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][4]~regout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][4]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux27~2_combout\);

-- Location: LCFF_X15_Y5_N1
\inst4|ram[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[3][4]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][4]~regout\);

-- Location: LCCOMB_X15_Y5_N18
\inst4|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux27~3_combout\ = (\inst4|Mux27~2_combout\ & (((\inst4|ram[3][4]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst4|Mux27~2_combout\ & (\instruction_register|internal\(1) & (\inst4|ram[2][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux27~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[2][4]~regout\,
	datad => \inst4|ram[3][4]~regout\,
	combout => \inst4|Mux27~3_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst4|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux27~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux27~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(2),
	datac => \inst4|Mux27~1_combout\,
	datad => \inst4|Mux27~3_combout\,
	combout => \inst4|Mux27~4_combout\);

-- Location: LCCOMB_X18_Y5_N28
\inst4|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux11~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][4]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][4]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[0][4]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux11~2_combout\);

-- Location: LCCOMB_X15_Y5_N24
\inst4|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux11~3_combout\ = (\inst4|Mux11~2_combout\ & ((\inst4|ram[3][4]~regout\) # ((!\instruction_register|internal\(7))))) # (!\inst4|Mux11~2_combout\ & (((\inst4|ram[2][4]~regout\ & \instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux11~2_combout\,
	datab => \inst4|ram[3][4]~regout\,
	datac => \inst4|ram[2][4]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux11~3_combout\);

-- Location: LCFF_X17_Y5_N21
\inst4|ram[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][3]~regout\);

-- Location: LCFF_X17_Y5_N15
\inst4|ram[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][3]~regout\);

-- Location: LCCOMB_X17_Y5_N20
\inst4|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux28~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst4|ram[6][3]~regout\))) # (!\instruction_register|internal\(1) 
-- & (\inst4|ram[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[4][3]~regout\,
	datac => \inst4|ram[6][3]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux28~0_combout\);

-- Location: LCCOMB_X17_Y5_N14
\inst4|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux12~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][3]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][3]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[4][3]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y1_N22
\inst4|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux12~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux12~0_combout\ & (\inst4|ram[7][3]~regout\)) # (!\inst4|Mux12~0_combout\ & ((\inst4|ram[5][3]~regout\))))) # (!\instruction_register|internal\(6) & (((\inst4|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][3]~regout\,
	datab => \inst4|ram[5][3]~regout\,
	datac => \instruction_register|internal\(6),
	datad => \inst4|Mux12~0_combout\,
	combout => \inst4|Mux12~1_combout\);

-- Location: LCCOMB_X20_Y5_N30
\inst4|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux12~2_combout\ = (\instruction_register|internal\(7) & (\instruction_register|internal\(6))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][3]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[1][3]~regout\,
	datad => \inst4|ram[0][3]~regout\,
	combout => \inst4|Mux12~2_combout\);

-- Location: LCCOMB_X17_Y3_N26
\inst4|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux12~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux12~2_combout\ & ((\inst4|ram[3][3]~regout\))) # (!\inst4|Mux12~2_combout\ & (\inst4|ram[2][3]~regout\)))) # (!\instruction_register|internal\(7) & (((\inst4|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][3]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][3]~regout\,
	datad => \inst4|Mux12~2_combout\,
	combout => \inst4|Mux12~3_combout\);

-- Location: LCCOMB_X17_Y1_N24
\inst4|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux12~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux12~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux12~1_combout\,
	datac => \inst4|Mux12~3_combout\,
	datad => \instruction_register|internal\(8),
	combout => \inst4|Mux12~4_combout\);

-- Location: LCFF_X18_Y6_N11
\inst4|ram[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][2]~regout\);

-- Location: LCCOMB_X18_Y6_N0
\inst4|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux29~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][2]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[6][2]~regout\,
	datad => \inst4|ram[4][2]~regout\,
	combout => \inst4|Mux29~0_combout\);

-- Location: LCCOMB_X16_Y6_N16
\inst4|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux29~1_combout\ = (\inst4|Mux29~0_combout\ & (((\inst4|ram[7][2]~regout\) # (!\instruction_register|internal\(0))))) # (!\inst4|Mux29~0_combout\ & (\inst4|ram[5][2]~regout\ & (\instruction_register|internal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][2]~regout\,
	datab => \inst4|Mux29~0_combout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|ram[7][2]~regout\,
	combout => \inst4|Mux29~1_combout\);

-- Location: LCFF_X16_Y2_N21
\inst4|ram[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][2]~regout\);

-- Location: LCFF_X16_Y2_N3
\inst4|ram[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][2]~regout\);

-- Location: LCCOMB_X16_Y2_N0
\inst4|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux29~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst4|ram[1][2]~regout\)) # (!\instruction_register|internal\(0) & 
-- ((\inst4|ram[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][2]~regout\,
	datab => \inst4|ram[0][2]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux29~2_combout\);

-- Location: LCCOMB_X16_Y2_N10
\inst4|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux13~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][2]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][2]~regout\,
	datab => \inst4|ram[0][2]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux13~2_combout\);

-- Location: LCCOMB_X18_Y6_N4
\inst4|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux30~0_combout\ = (\instruction_register|internal\(0) & (\instruction_register|internal\(1))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][1]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[6][1]~regout\,
	datad => \inst4|ram[4][1]~regout\,
	combout => \inst4|Mux30~0_combout\);

-- Location: LCCOMB_X16_Y6_N10
\inst4|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux30~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux30~0_combout\ & (\inst4|ram[7][1]~regout\)) # (!\inst4|Mux30~0_combout\ & ((\inst4|ram[5][1]~regout\))))) # (!\instruction_register|internal\(0) & (((\inst4|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][1]~regout\,
	datab => \inst4|ram[5][1]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|Mux30~0_combout\,
	combout => \inst4|Mux30~1_combout\);

-- Location: LCFF_X20_Y5_N13
\inst4|ram[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][1]~regout\);

-- Location: LCFF_X20_Y5_N3
\inst4|ram[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][1]~regout\);

-- Location: LCCOMB_X20_Y5_N24
\inst4|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux30~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst4|ram[1][1]~regout\))) # (!\instruction_register|internal\(0) 
-- & (\inst4|ram[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[0][1]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|ram[1][1]~regout\,
	combout => \inst4|Mux30~2_combout\);

-- Location: LCCOMB_X17_Y3_N6
\inst4|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux30~3_combout\ = (\inst4|Mux30~2_combout\ & ((\inst4|ram[3][1]~regout\) # ((!\instruction_register|internal\(1))))) # (!\inst4|Mux30~2_combout\ & (((\inst4|ram[2][1]~regout\ & \instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[3][1]~regout\,
	datab => \inst4|ram[2][1]~regout\,
	datac => \inst4|Mux30~2_combout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux30~3_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst4|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux30~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux30~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux30~1_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux30~3_combout\,
	combout => \inst4|Mux30~4_combout\);

-- Location: LCCOMB_X20_Y5_N6
\inst4|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux14~2_combout\ = (\instruction_register|internal\(6) & ((\inst4|ram[1][1]~regout\) # ((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & (((\inst4|ram[0][1]~regout\ & !\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][1]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[0][1]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux14~2_combout\);

-- Location: LCFF_X18_Y6_N15
\inst4|ram[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][0]~regout\);

-- Location: LCFF_X18_Y6_N9
\inst4|ram[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][0]~regout\);

-- Location: LCCOMB_X18_Y6_N22
\inst4|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux31~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & (\inst4|ram[6][0]~regout\)) # (!\instruction_register|internal\(1) & 
-- ((\inst4|ram[4][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[6][0]~regout\,
	datac => \inst4|ram[4][0]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux31~0_combout\);

-- Location: LCCOMB_X16_Y6_N28
\inst4|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux31~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux31~0_combout\ & ((\inst4|ram[7][0]~regout\))) # (!\inst4|Mux31~0_combout\ & (\inst4|ram[5][0]~regout\)))) # (!\instruction_register|internal\(0) & (((\inst4|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][0]~regout\,
	datab => \inst4|ram[7][0]~regout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|Mux31~0_combout\,
	combout => \inst4|Mux31~1_combout\);

-- Location: LCFF_X17_Y3_N21
\inst4|ram[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][0]~regout\);

-- Location: LCCOMB_X20_Y5_N14
\inst4|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux31~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][0]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][0]~regout\,
	datad => \inst4|ram[0][0]~regout\,
	combout => \inst4|Mux31~2_combout\);

-- Location: LCCOMB_X17_Y3_N20
\inst4|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux31~3_combout\ = (\inst4|Mux31~2_combout\ & ((\inst4|ram[3][0]~regout\) # ((!\instruction_register|internal\(1))))) # (!\inst4|Mux31~2_combout\ & (((\inst4|ram[2][0]~regout\ & \instruction_register|internal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux31~2_combout\,
	datab => \inst4|ram[3][0]~regout\,
	datac => \inst4|ram[2][0]~regout\,
	datad => \instruction_register|internal\(1),
	combout => \inst4|Mux31~3_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst4|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux31~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux31~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux31~1_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux31~3_combout\,
	combout => \inst4|Mux31~4_combout\);

-- Location: LCCOMB_X18_Y6_N8
\inst4|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux15~0_combout\ = (\instruction_register|internal\(7) & ((\inst4|ram[6][0]~regout\) # ((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & (((\inst4|ram[4][0]~regout\ & !\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|ram[6][0]~regout\,
	datac => \inst4|ram[4][0]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux15~0_combout\);

-- Location: LCFF_X19_Y4_N25
\instruction_register|internal[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(14));

-- Location: LCCOMB_X17_Y2_N22
\PC|regOp:ram[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[0]~0_combout\ = !\PC|regOp:ram[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|regOp:ram[0]~regout\,
	combout => \PC|regOp:ram[0]~0_combout\);

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

-- Location: LCCOMB_X16_Y3_N4
\inst4|ram[1][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][15]~feeder_combout\ = \GateMDR|dataOut[15]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~19_combout\,
	combout => \inst4|ram[1][15]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N26
\inst4|ram[0][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][15]~feeder_combout\ = \GateMDR|dataOut[15]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~19_combout\,
	combout => \inst4|ram[0][15]~feeder_combout\);

-- Location: LCCOMB_X18_Y2_N16
\inst4|ram[1][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][14]~feeder_combout\ = \GateMDR|dataOut[14]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~24_combout\,
	combout => \inst4|ram[1][14]~feeder_combout\);

-- Location: LCCOMB_X18_Y2_N30
\inst4|ram[0][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][14]~feeder_combout\ = \GateMDR|dataOut[14]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~24_combout\,
	combout => \inst4|ram[0][14]~feeder_combout\);

-- Location: LCCOMB_X18_Y2_N10
\inst4|ram[0][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][13]~feeder_combout\ = \GateMDR|dataOut[13]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[13]~29_combout\,
	combout => \inst4|ram[0][13]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N22
\inst4|ram[0][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][12]~feeder_combout\ = \GateMDR|dataOut[12]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[12]~34_combout\,
	combout => \inst4|ram[0][12]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N24
\inst4|ram[1][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][12]~feeder_combout\ = \GateMDR|dataOut[12]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[12]~34_combout\,
	combout => \inst4|ram[1][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y3_N12
\inst4|ram[5][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][12]~feeder_combout\ = \GateMDR|dataOut[12]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[12]~34_combout\,
	combout => \inst4|ram[5][12]~feeder_combout\);

-- Location: LCCOMB_X20_Y4_N30
\inst4|ram[0][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][11]~feeder_combout\ = \GateMDR|dataOut[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[11]~39_combout\,
	combout => \inst4|ram[0][11]~feeder_combout\);

-- Location: LCCOMB_X16_Y5_N20
\inst4|ram[5][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][8]~feeder_combout\ = \GateMDR|dataOut[8]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[8]~49_combout\,
	combout => \inst4|ram[5][8]~feeder_combout\);

-- Location: LCCOMB_X15_Y5_N12
\inst4|ram[2][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][7]~feeder_combout\ = \GateMDR|dataOut[7]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[7]~52_combout\,
	combout => \inst4|ram[2][7]~feeder_combout\);

-- Location: LCCOMB_X17_Y1_N8
\inst4|ram[7][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][7]~feeder_combout\ = \GateMDR|dataOut[7]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[7]~52_combout\,
	combout => \inst4|ram[7][7]~feeder_combout\);

-- Location: LCCOMB_X17_Y1_N2
\inst4|ram[7][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][6]~feeder_combout\ = \GateMDR|dataOut[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~55_combout\,
	combout => \inst4|ram[7][6]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N14
\inst4|ram[0][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][6]~feeder_combout\ = \GateMDR|dataOut[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~55_combout\,
	combout => \inst4|ram[0][6]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N20
\inst4|ram[1][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][6]~feeder_combout\ = \GateMDR|dataOut[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~55_combout\,
	combout => \inst4|ram[1][6]~feeder_combout\);

-- Location: LCCOMB_X17_Y1_N30
\inst4|ram[7][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][4]~feeder_combout\ = \GateMDR|dataOut[4]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~62_combout\,
	combout => \inst4|ram[7][4]~feeder_combout\);

-- Location: LCCOMB_X15_Y5_N14
\inst4|ram[2][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][4]~feeder_combout\ = \GateMDR|dataOut[4]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~62_combout\,
	combout => \inst4|ram[2][4]~feeder_combout\);

-- Location: LCCOMB_X15_Y5_N0
\inst4|ram[3][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[3][4]~feeder_combout\ = \GateMDR|dataOut[4]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[4]~62_combout\,
	combout => \inst4|ram[3][4]~feeder_combout\);

-- Location: LCCOMB_X16_Y2_N2
\inst4|ram[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][2]~feeder_combout\ = \GateMDR|dataOut[2]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~68_combout\,
	combout => \inst4|ram[0][2]~feeder_combout\);

-- Location: LCCOMB_X16_Y2_N20
\inst4|ram[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][2]~feeder_combout\ = \GateMDR|dataOut[2]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~68_combout\,
	combout => \inst4|ram[1][2]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N12
\inst4|ram[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][1]~feeder_combout\ = \GateMDR|dataOut[1]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~70_combout\,
	combout => \inst4|ram[1][1]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N2
\inst4|ram[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][1]~feeder_combout\ = \GateMDR|dataOut[1]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~70_combout\,
	combout => \inst4|ram[0][1]~feeder_combout\);

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
	datain => \GateMDR|dataOut[15]~86_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[14]~87_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[13]~88_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[12]~89_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[11]~90_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[10]~75_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[9]~76_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[8]~48_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[7]~77_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[6]~78_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[5]~79_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[4]~61_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[3]~80_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[2]~81_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[1]~82_combout\,
	oe => GND,
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
	datain => \GateMDR|dataOut[0]~83_combout\,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Data(0),
	combout => \Data~15\);

-- Location: LCCOMB_X22_Y4_N26
\Control|Next_state.LoadMDR_2_383\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadMDR_2_383~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|State.LoadMDR~regout\)) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Next_state.LoadMDR_2_383~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.LoadMDR~regout\,
	datac => \Control|Next_state.LoadMDR_2_383~combout\,
	datad => \Control|WideNor0~clkctrl_outclk\,
	combout => \Control|Next_state.LoadMDR_2_383~combout\);

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

-- Location: LCFF_X22_Y4_N27
\Control|State.LoadMDR_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.LoadMDR_2_383~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadMDR_2~regout\);

-- Location: LCCOMB_X22_Y4_N18
\Control|Next_state.LoadIR_375\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadIR_375~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|State.LoadMDR_2~regout\)) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Next_state.LoadIR_375~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.LoadMDR_2~regout\,
	datac => \Control|Next_state.LoadIR_375~combout\,
	datad => \Control|WideNor0~clkctrl_outclk\,
	combout => \Control|Next_state.LoadIR_375~combout\);

-- Location: LCFF_X22_Y4_N19
\Control|State.LoadIR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.LoadIR_375~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadIR~regout\);

-- Location: LCCOMB_X18_Y3_N30
\GateMDR|dataOut[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~18_combout\ = (\Control|WideOr11~combout\) # (((\Control|State.LoadIR~regout\) # (\Control|State.PCtoMAR~regout\)) # (!\Control|Mem_OE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \Control|Mem_OE~0_combout\,
	datac => \Control|State.LoadIR~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[15]~18_combout\);

-- Location: LCFF_X19_Y3_N17
\MDR|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[15]~regout\);

-- Location: LCCOMB_X20_Y1_N2
\PC|regOp:ram[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[1]~1_combout\ = (\PC|regOp:ram[0]~regout\ & (\PC|regOp:ram[1]~regout\ $ (VCC))) # (!\PC|regOp:ram[0]~regout\ & (\PC|regOp:ram[1]~regout\ & VCC))
-- \PC|regOp:ram[1]~2\ = CARRY((\PC|regOp:ram[0]~regout\ & \PC|regOp:ram[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[0]~regout\,
	datab => \PC|regOp:ram[1]~regout\,
	datad => VCC,
	combout => \PC|regOp:ram[1]~1_combout\,
	cout => \PC|regOp:ram[1]~2\);

-- Location: LCFF_X20_Y1_N3
\PC|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[1]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[1]~regout\);

-- Location: LCCOMB_X20_Y1_N4
\PC|regOp:ram[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[2]~1_combout\ = (\PC|regOp:ram[2]~regout\ & (!\PC|regOp:ram[1]~2\)) # (!\PC|regOp:ram[2]~regout\ & ((\PC|regOp:ram[1]~2\) # (GND)))
-- \PC|regOp:ram[2]~2\ = CARRY((!\PC|regOp:ram[1]~2\) # (!\PC|regOp:ram[2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[2]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[1]~2\,
	combout => \PC|regOp:ram[2]~1_combout\,
	cout => \PC|regOp:ram[2]~2\);

-- Location: LCFF_X20_Y1_N5
\PC|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[2]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[2]~regout\);

-- Location: LCCOMB_X20_Y1_N8
\PC|regOp:ram[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[4]~1_combout\ = (\PC|regOp:ram[4]~regout\ & (!\PC|regOp:ram[3]~2\)) # (!\PC|regOp:ram[4]~regout\ & ((\PC|regOp:ram[3]~2\) # (GND)))
-- \PC|regOp:ram[4]~2\ = CARRY((!\PC|regOp:ram[3]~2\) # (!\PC|regOp:ram[4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[4]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[3]~2\,
	combout => \PC|regOp:ram[4]~1_combout\,
	cout => \PC|regOp:ram[4]~2\);

-- Location: LCFF_X20_Y1_N9
\PC|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[4]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[4]~regout\);

-- Location: LCCOMB_X20_Y1_N12
\PC|regOp:ram[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[6]~1_combout\ = (\PC|regOp:ram[6]~regout\ & (!\PC|regOp:ram[5]~2\)) # (!\PC|regOp:ram[6]~regout\ & ((\PC|regOp:ram[5]~2\) # (GND)))
-- \PC|regOp:ram[6]~2\ = CARRY((!\PC|regOp:ram[5]~2\) # (!\PC|regOp:ram[6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[6]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[5]~2\,
	combout => \PC|regOp:ram[6]~1_combout\,
	cout => \PC|regOp:ram[6]~2\);

-- Location: LCCOMB_X20_Y1_N14
\PC|regOp:ram[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[7]~1_combout\ = (\PC|regOp:ram[7]~regout\ & (\PC|regOp:ram[6]~2\ $ (GND))) # (!\PC|regOp:ram[7]~regout\ & (!\PC|regOp:ram[6]~2\ & VCC))
-- \PC|regOp:ram[7]~2\ = CARRY((\PC|regOp:ram[7]~regout\ & !\PC|regOp:ram[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[7]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[6]~2\,
	combout => \PC|regOp:ram[7]~1_combout\,
	cout => \PC|regOp:ram[7]~2\);

-- Location: LCFF_X20_Y1_N15
\PC|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[7]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[7]~regout\);

-- Location: LCCOMB_X20_Y1_N16
\PC|regOp:ram[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[8]~1_combout\ = (\PC|regOp:ram[8]~regout\ & (!\PC|regOp:ram[7]~2\)) # (!\PC|regOp:ram[8]~regout\ & ((\PC|regOp:ram[7]~2\) # (GND)))
-- \PC|regOp:ram[8]~2\ = CARRY((!\PC|regOp:ram[7]~2\) # (!\PC|regOp:ram[8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[8]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[7]~2\,
	combout => \PC|regOp:ram[8]~1_combout\,
	cout => \PC|regOp:ram[8]~2\);

-- Location: LCCOMB_X20_Y1_N18
\PC|regOp:ram[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[9]~1_combout\ = (\PC|regOp:ram[9]~regout\ & (\PC|regOp:ram[8]~2\ $ (GND))) # (!\PC|regOp:ram[9]~regout\ & (!\PC|regOp:ram[8]~2\ & VCC))
-- \PC|regOp:ram[9]~2\ = CARRY((\PC|regOp:ram[9]~regout\ & !\PC|regOp:ram[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[9]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[8]~2\,
	combout => \PC|regOp:ram[9]~1_combout\,
	cout => \PC|regOp:ram[9]~2\);

-- Location: LCFF_X20_Y1_N19
\PC|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[9]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[9]~regout\);

-- Location: LCCOMB_X20_Y1_N20
\PC|regOp:ram[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[10]~1_combout\ = (\PC|regOp:ram[10]~regout\ & (!\PC|regOp:ram[9]~2\)) # (!\PC|regOp:ram[10]~regout\ & ((\PC|regOp:ram[9]~2\) # (GND)))
-- \PC|regOp:ram[10]~2\ = CARRY((!\PC|regOp:ram[9]~2\) # (!\PC|regOp:ram[10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[10]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[9]~2\,
	combout => \PC|regOp:ram[10]~1_combout\,
	cout => \PC|regOp:ram[10]~2\);

-- Location: LCCOMB_X20_Y1_N22
\PC|regOp:ram[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[11]~1_combout\ = (\PC|regOp:ram[11]~regout\ & (\PC|regOp:ram[10]~2\ $ (GND))) # (!\PC|regOp:ram[11]~regout\ & (!\PC|regOp:ram[10]~2\ & VCC))
-- \PC|regOp:ram[11]~2\ = CARRY((\PC|regOp:ram[11]~regout\ & !\PC|regOp:ram[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[11]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[10]~2\,
	combout => \PC|regOp:ram[11]~1_combout\,
	cout => \PC|regOp:ram[11]~2\);

-- Location: LCFF_X20_Y1_N23
\PC|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[11]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[11]~regout\);

-- Location: LCCOMB_X20_Y1_N24
\PC|regOp:ram[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[12]~1_combout\ = (\PC|regOp:ram[12]~regout\ & (!\PC|regOp:ram[11]~2\)) # (!\PC|regOp:ram[12]~regout\ & ((\PC|regOp:ram[11]~2\) # (GND)))
-- \PC|regOp:ram[12]~2\ = CARRY((!\PC|regOp:ram[11]~2\) # (!\PC|regOp:ram[12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[12]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[11]~2\,
	combout => \PC|regOp:ram[12]~1_combout\,
	cout => \PC|regOp:ram[12]~2\);

-- Location: LCCOMB_X20_Y1_N26
\PC|regOp:ram[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[13]~1_combout\ = (\PC|regOp:ram[13]~regout\ & (\PC|regOp:ram[12]~2\ $ (GND))) # (!\PC|regOp:ram[13]~regout\ & (!\PC|regOp:ram[12]~2\ & VCC))
-- \PC|regOp:ram[13]~2\ = CARRY((\PC|regOp:ram[13]~regout\ & !\PC|regOp:ram[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[13]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[12]~2\,
	combout => \PC|regOp:ram[13]~1_combout\,
	cout => \PC|regOp:ram[13]~2\);

-- Location: LCFF_X20_Y1_N27
\PC|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[13]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[13]~regout\);

-- Location: LCCOMB_X20_Y1_N28
\PC|regOp:ram[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[14]~1_combout\ = (\PC|regOp:ram[14]~regout\ & (!\PC|regOp:ram[13]~2\)) # (!\PC|regOp:ram[14]~regout\ & ((\PC|regOp:ram[13]~2\) # (GND)))
-- \PC|regOp:ram[14]~2\ = CARRY((!\PC|regOp:ram[13]~2\) # (!\PC|regOp:ram[14]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|regOp:ram[14]~regout\,
	datad => VCC,
	cin => \PC|regOp:ram[13]~2\,
	combout => \PC|regOp:ram[14]~1_combout\,
	cout => \PC|regOp:ram[14]~2\);

-- Location: LCFF_X20_Y1_N29
\PC|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[14]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[14]~regout\);

-- Location: LCCOMB_X20_Y1_N30
\PC|regOp:ram[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|regOp:ram[15]~1_combout\ = \PC|regOp:ram[14]~2\ $ (!\PC|regOp:ram[15]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|regOp:ram[15]~regout\,
	cin => \PC|regOp:ram[14]~2\,
	combout => \PC|regOp:ram[15]~1_combout\);

-- Location: LCFF_X20_Y1_N31
\PC|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[15]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[15]~regout\);

-- Location: LCCOMB_X18_Y3_N18
\GateMDR|dataOut[15]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~14_combout\ = (\Control|State.PCtoMAR~regout\ & (\PC|regOp:ram[15]~regout\ & ((\MDR|regOp:ram[15]~regout\) # (!\Control|State.LoadIR~regout\)))) # (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[15]~regout\) # 
-- ((!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \MDR|regOp:ram[15]~regout\,
	datac => \Control|State.LoadIR~regout\,
	datad => \PC|regOp:ram[15]~regout\,
	combout => \GateMDR|dataOut[15]~14_combout\);

-- Location: LCCOMB_X18_Y3_N16
\GateMDR|dataOut[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~17_combout\ = (\GateMDR|dataOut[15]~14_combout\ & ((\GateMDR|dataOut[15]~16_combout\) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[15]~14_combout\,
	datad => \GateMDR|dataOut[15]~16_combout\,
	combout => \GateMDR|dataOut[15]~17_combout\);

-- Location: LCCOMB_X19_Y3_N16
\GateMDR|dataOut[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~19_combout\ = ((\inst2|Data_CPU[15]~0_combout\ & \GateMDR|dataOut[15]~17_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[15]~0_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[15]~17_combout\,
	combout => \GateMDR|dataOut[15]~19_combout\);

-- Location: LCFF_X19_Y4_N9
\instruction_register|internal[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(15));

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

-- Location: LCCOMB_X18_Y1_N4
\inst2|Data_CPU[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[5]~10_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(5)))) # (!\inst2|Equal0~4_combout\ & (\Data~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \Data~10\,
	datac => \Switches~combout\(5),
	datad => \Control|Mem_OE~0_combout\,
	combout => \inst2|Data_CPU[5]~10_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Control|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector9~0_combout\ = (\instruction_register|internal\(14) & (!\instruction_register|internal\(15) & \Control|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(14),
	datac => \instruction_register|internal\(15),
	datad => \Control|Selector0~0_combout\,
	combout => \Control|Selector9~0_combout\);

-- Location: LCCOMB_X16_Y4_N30
\Control|Next_state.and0_351\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.and0_351~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Selector9~0_combout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.and0_351~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.and0_351~combout\,
	datac => \Control|WideNor0~clkctrl_outclk\,
	datad => \Control|Selector9~0_combout\,
	combout => \Control|Next_state.and0_351~combout\);

-- Location: LCFF_X17_Y4_N23
\Control|State.and0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	sdata => \Control|Next_state.and0_351~combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.and0~regout\);

-- Location: LCCOMB_X19_Y4_N2
\Control|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideOr11~combout\ = (\Control|State.not0~regout\) # ((\Control|State.add0~regout\) # (\Control|State.and0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.not0~regout\,
	datab => \Control|State.add0~regout\,
	datad => \Control|State.and0~regout\,
	combout => \Control|WideOr11~combout\);

-- Location: LCCOMB_X21_Y5_N2
\inst2|Data_CPU[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[4]~11_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(4))) # (!\inst2|Equal0~4_combout\ & ((\Data~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(4),
	datab => \Data~11\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[4]~11_combout\);

-- Location: CLKCTRL_G13
\Control|WideOr11~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Control|WideOr11~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Control|WideOr11~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y4_N0
\Control|ALUK[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK\(0) = (GLOBAL(\Control|WideOr11~clkctrl_outclk\) & ((\Control|State.and0~regout\))) # (!GLOBAL(\Control|WideOr11~clkctrl_outclk\) & (\Control|ALUK\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(0),
	datac => \Control|WideOr11~clkctrl_outclk\,
	datad => \Control|State.and0~regout\,
	combout => \Control|ALUK\(0));

-- Location: LCCOMB_X17_Y2_N18
\inst2|Data_CPU[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[6]~9_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(6))) # (!\inst2|Equal0~4_combout\ & ((\Data~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(6),
	datab => \Data~9\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[6]~9_combout\);

-- Location: LCFF_X17_Y2_N21
\MDR|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[6]~regout\);

-- Location: LCFF_X20_Y1_N13
\PC|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[6]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[6]~regout\);

-- Location: LCCOMB_X17_Y2_N20
\GateMDR|dataOut[6]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~53_combout\ = (\Control|State.PCtoMAR~regout\ & (\PC|regOp:ram[6]~regout\ & ((\MDR|regOp:ram[6]~regout\) # (!\Control|State.LoadIR~regout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[6]~regout\)) # 
-- (!\Control|State.LoadIR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[6]~regout\,
	datad => \PC|regOp:ram[6]~regout\,
	combout => \GateMDR|dataOut[6]~53_combout\);

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

-- Location: LCCOMB_X21_Y5_N28
\inst2|Data_CPU[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[7]~8_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(7)))) # (!\inst2|Equal0~4_combout\ & (\Data~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~8\,
	datab => \Switches~combout\(7),
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[7]~8_combout\);

-- Location: LCFF_X17_Y4_N1
\instruction_register|internal[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(5));

-- Location: LCCOMB_X17_Y4_N0
\Control|SR2MUX~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|SR2MUX~1_combout\ = (\instruction_register|internal\(5) & ((\Control|State.and0~regout\) # (\Control|State.add0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.and0~regout\,
	datac => \instruction_register|internal\(5),
	datad => \Control|State.add0~regout\,
	combout => \Control|SR2MUX~1_combout\);

-- Location: LCCOMB_X17_Y4_N18
\SR2Mux|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector8~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(7))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(7),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y5_N8
\inst3|dataOut[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[7]~4_combout\ = (\inst4|SR1out\(7) & (\Control|ALUK\(0) & ((\SR2Mux|Selector8~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(7),
	datab => \SR2Mux|Selector8~0_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[7]~4_combout\);

-- Location: LCFF_X20_Y1_N17
\PC|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[8]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[8]~regout\);

-- Location: LCFF_X18_Y1_N23
\MDR|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[8]~regout\);

-- Location: LCCOMB_X18_Y1_N22
\GateMDR|dataOut[8]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~46_combout\ = (\Control|State.PCtoMAR~regout\ & (\PC|regOp:ram[8]~regout\ & ((\MDR|regOp:ram[8]~regout\) # (!\Control|State.LoadIR~regout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[8]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \PC|regOp:ram[8]~regout\,
	datac => \MDR|regOp:ram[8]~regout\,
	datad => \Control|State.LoadIR~regout\,
	combout => \GateMDR|dataOut[8]~46_combout\);

-- Location: LCCOMB_X19_Y1_N30
\inst4|ram[1][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][8]~feeder_combout\ = \GateMDR|dataOut[8]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[8]~49_combout\,
	combout => \inst4|ram[1][8]~feeder_combout\);

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

-- Location: LCCOMB_X20_Y4_N24
\inst2|Data_CPU[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[11]~4_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(11))) # (!\inst2|Equal0~4_combout\ & ((\Data~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Mem_OE~0_combout\,
	datab => \Switches~combout\(11),
	datac => \inst2|Equal0~4_combout\,
	datad => \Data~4\,
	combout => \inst2|Data_CPU[11]~4_combout\);

-- Location: LCFF_X21_Y4_N21
\MDR|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[11]~regout\);

-- Location: LCCOMB_X21_Y4_N20
\GateMDR|dataOut[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~35_combout\ = (\PC|regOp:ram[11]~regout\ & (((\MDR|regOp:ram[11]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[11]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[11]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[11]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[11]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[11]~35_combout\);

-- Location: LCFF_X18_Y1_N15
\MDR|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[9]~regout\);

-- Location: LCCOMB_X18_Y1_N14
\GateMDR|dataOut[9]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~43_combout\ = (\Control|State.PCtoMAR~regout\ & (\PC|regOp:ram[9]~regout\ & ((\MDR|regOp:ram[9]~regout\) # (!\Control|State.LoadIR~regout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[9]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \PC|regOp:ram[9]~regout\,
	datac => \MDR|regOp:ram[9]~regout\,
	datad => \Control|State.LoadIR~regout\,
	combout => \GateMDR|dataOut[9]~43_combout\);

-- Location: LCCOMB_X20_Y2_N30
\inst4|ram[3][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[3][9]~feeder_combout\ = \GateMDR|dataOut[9]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[9]~45_combout\,
	combout => \inst4|ram[3][9]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N6
\inst4|Decoder0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~7_combout\ = (\instruction_register|internal\(10) & (!\instruction_register|internal\(11) & (\Control|WideOr11~combout\ & \instruction_register|internal\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \instruction_register|internal\(11),
	datac => \Control|WideOr11~combout\,
	datad => \instruction_register|internal\(9),
	combout => \inst4|Decoder0~7_combout\);

-- Location: LCFF_X20_Y2_N31
\inst4|ram[3][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[3][9]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][9]~regout\);

-- Location: LCFF_X19_Y5_N1
\MDR|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[1]~regout\);

-- Location: LCCOMB_X19_Y5_N0
\GateMDR|dataOut[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~69_combout\ = (\PC|regOp:ram[1]~regout\ & (((\MDR|regOp:ram[1]~regout\)) # (!\Control|State.LoadIR~regout\))) # (!\PC|regOp:ram[1]~regout\ & (!\Control|State.PCtoMAR~regout\ & ((\MDR|regOp:ram[1]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|regOp:ram[1]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \MDR|regOp:ram[1]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[1]~69_combout\);

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

-- Location: LCCOMB_X20_Y4_N14
\inst2|Data_CPU[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[10]~5_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(10))) # (!\inst2|Equal0~4_combout\ & ((\Data~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Mem_OE~0_combout\,
	datab => \Switches~combout\(10),
	datac => \inst2|Equal0~4_combout\,
	datad => \Data~5\,
	combout => \inst2|Data_CPU[10]~5_combout\);

-- Location: LCFF_X20_Y1_N21
\PC|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[10]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[10]~regout\);

-- Location: LCCOMB_X20_Y4_N8
\GateMDR|dataOut[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~40_combout\ = (\MDR|regOp:ram[10]~regout\ & (((\PC|regOp:ram[10]~regout\) # (!\Control|State.PCtoMAR~regout\)))) # (!\MDR|regOp:ram[10]~regout\ & (!\Control|State.LoadIR~regout\ & ((\PC|regOp:ram[10]~regout\) # 
-- (!\Control|State.PCtoMAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MDR|regOp:ram[10]~regout\,
	datab => \Control|State.LoadIR~regout\,
	datac => \PC|regOp:ram[10]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[10]~40_combout\);

-- Location: LCCOMB_X20_Y2_N26
\inst4|ram[3][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[3][10]~feeder_combout\ = \GateMDR|dataOut[10]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~42_combout\,
	combout => \inst4|ram[3][10]~feeder_combout\);

-- Location: LCFF_X20_Y2_N27
\inst4|ram[3][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[3][10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][10]~regout\);

-- Location: LCCOMB_X20_Y2_N8
\inst4|ram[2][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][10]~feeder_combout\ = \GateMDR|dataOut[10]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~42_combout\,
	combout => \inst4|ram[2][10]~feeder_combout\);

-- Location: LCCOMB_X16_Y3_N16
\inst4|Decoder0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~4_combout\ = (\instruction_register|internal\(10) & (!\instruction_register|internal\(11) & (\Control|WideOr11~combout\ & !\instruction_register|internal\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \instruction_register|internal\(11),
	datac => \Control|WideOr11~combout\,
	datad => \instruction_register|internal\(9),
	combout => \inst4|Decoder0~4_combout\);

-- Location: LCFF_X20_Y2_N9
\inst4|ram[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][10]~regout\);

-- Location: LCFF_X20_Y4_N7
\inst4|ram[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][10]~regout\);

-- Location: LCCOMB_X20_Y4_N2
\inst4|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~2_combout\ = (\instruction_register|internal\(6) & (((\inst4|ram[1][10]~regout\) # (\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & (\inst4|ram[0][10]~regout\ & ((!\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][10]~regout\,
	datab => \inst4|ram[1][10]~regout\,
	datac => \instruction_register|internal\(6),
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux5~2_combout\);

-- Location: LCCOMB_X20_Y4_N16
\inst4|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux5~2_combout\ & (\inst4|ram[3][10]~regout\)) # (!\inst4|Mux5~2_combout\ & ((\inst4|ram[2][10]~regout\))))) # (!\instruction_register|internal\(7) & (((\inst4|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|ram[3][10]~regout\,
	datac => \inst4|ram[2][10]~regout\,
	datad => \inst4|Mux5~2_combout\,
	combout => \inst4|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y3_N10
\inst4|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~3_combout\ = (\instruction_register|internal\(10) & (\instruction_register|internal\(11) & (\Control|WideOr11~combout\ & \instruction_register|internal\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \instruction_register|internal\(11),
	datac => \Control|WideOr11~combout\,
	datad => \instruction_register|internal\(9),
	combout => \inst4|Decoder0~3_combout\);

-- Location: LCFF_X20_Y3_N3
\inst4|ram[7][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][10]~regout\);

-- Location: LCFF_X19_Y2_N21
\inst4|ram[6][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][10]~regout\);

-- Location: LCCOMB_X19_Y2_N20
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\instruction_register|internal\(7) & (((\inst4|ram[6][10]~regout\) # (\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & (\inst4|ram[4][10]~regout\ & ((!\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[4][10]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[6][10]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y3_N2
\inst4|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux5~0_combout\ & ((\inst4|ram[7][10]~regout\))) # (!\inst4|Mux5~0_combout\ & (\inst4|ram[5][10]~regout\)))) # (!\instruction_register|internal\(6) & (((\inst4|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][10]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[7][10]~regout\,
	datad => \inst4|Mux5~0_combout\,
	combout => \inst4|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y4_N10
\inst4|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux5~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux5~3_combout\,
	datac => \instruction_register|internal\(8),
	datad => \inst4|Mux5~1_combout\,
	combout => \inst4|Mux5~4_combout\);

-- Location: LCFF_X21_Y4_N11
\inst4|SR1out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(10));

-- Location: LCCOMB_X17_Y4_N16
\SR2Mux|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector7~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(8))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(8),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector7~0_combout\);

-- Location: LCFF_X17_Y1_N29
\inst4|ram[7][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][5]~regout\);

-- Location: LCCOMB_X19_Y4_N20
\inst4|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~2_combout\ = (\instruction_register|internal\(11) & (\Control|WideOr11~combout\ & (!\instruction_register|internal\(10) & !\instruction_register|internal\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(11),
	datab => \Control|WideOr11~combout\,
	datac => \instruction_register|internal\(10),
	datad => \instruction_register|internal\(9),
	combout => \inst4|Decoder0~2_combout\);

-- Location: LCFF_X17_Y5_N7
\inst4|ram[4][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][5]~regout\);

-- Location: LCCOMB_X17_Y5_N6
\inst4|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][5]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][5]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[4][5]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y5_N22
\inst4|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux10~1_combout\ = (\inst4|Mux10~0_combout\ & (((\inst4|ram[7][5]~regout\) # (!\instruction_register|internal\(6))))) # (!\inst4|Mux10~0_combout\ & (\inst4|ram[5][5]~regout\ & ((\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][5]~regout\,
	datab => \inst4|ram[7][5]~regout\,
	datac => \inst4|Mux10~0_combout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux10~1_combout\);

-- Location: LCFF_X17_Y3_N31
\inst4|ram[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][5]~regout\);

-- Location: LCFF_X17_Y3_N1
\inst4|ram[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[5]~58_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][5]~regout\);

-- Location: LCCOMB_X17_Y3_N30
\inst4|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux10~3_combout\ = (\inst4|Mux10~2_combout\ & (((\inst4|ram[3][5]~regout\)) # (!\instruction_register|internal\(7)))) # (!\inst4|Mux10~2_combout\ & (\instruction_register|internal\(7) & ((\inst4|ram[2][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux10~2_combout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][5]~regout\,
	datad => \inst4|ram[2][5]~regout\,
	combout => \inst4|Mux10~3_combout\);

-- Location: LCCOMB_X17_Y1_N10
\inst4|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux10~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux10~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux10~1_combout\,
	datac => \inst4|Mux10~3_combout\,
	datad => \instruction_register|internal\(8),
	combout => \inst4|Mux10~4_combout\);

-- Location: LCFF_X17_Y1_N11
\inst4|SR1out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(5));

-- Location: LCCOMB_X17_Y4_N24
\SR2Mux|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector11~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(4))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(4),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector11~0_combout\);

-- Location: LCCOMB_X17_Y2_N24
\inst2|Data_CPU[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[0]~15_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(0))) # (!\inst2|Equal0~4_combout\ & ((\Data~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(0),
	datab => \Data~15\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[0]~15_combout\);

-- Location: LCFF_X17_Y3_N3
\inst4|ram[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][0]~regout\);

-- Location: LCFF_X18_Y5_N19
\inst4|ram[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][0]~regout\);

-- Location: LCCOMB_X20_Y5_N0
\inst4|ram[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][0]~feeder_combout\ = \GateMDR|dataOut[0]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~73_combout\,
	combout => \inst4|ram[0][0]~feeder_combout\);

-- Location: LCCOMB_X20_Y5_N10
\inst4|Decoder0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~6_combout\ = (!\instruction_register|internal\(9) & (!\instruction_register|internal\(11) & (!\instruction_register|internal\(10) & \Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(9),
	datab => \instruction_register|internal\(11),
	datac => \instruction_register|internal\(10),
	datad => \Control|WideOr11~combout\,
	combout => \inst4|Decoder0~6_combout\);

-- Location: LCFF_X20_Y5_N1
\inst4|ram[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][0]~regout\);

-- Location: LCCOMB_X20_Y5_N28
\inst4|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux15~2_combout\ = (\instruction_register|internal\(7) & (\instruction_register|internal\(6))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][0]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[1][0]~regout\,
	datad => \inst4|ram[0][0]~regout\,
	combout => \inst4|Mux15~2_combout\);

-- Location: LCCOMB_X17_Y3_N2
\inst4|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux15~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux15~2_combout\ & ((\inst4|ram[3][0]~regout\))) # (!\inst4|Mux15~2_combout\ & (\inst4|ram[2][0]~regout\)))) # (!\instruction_register|internal\(7) & (((\inst4|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][0]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][0]~regout\,
	datad => \inst4|Mux15~2_combout\,
	combout => \inst4|Mux15~3_combout\);

-- Location: LCCOMB_X16_Y6_N20
\inst4|ram[5][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][0]~feeder_combout\ = \GateMDR|dataOut[0]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~73_combout\,
	combout => \inst4|ram[5][0]~feeder_combout\);

-- Location: LCFF_X16_Y6_N21
\inst4|ram[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][0]~regout\);

-- Location: LCCOMB_X16_Y6_N18
\inst4|ram[7][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][0]~feeder_combout\ = \GateMDR|dataOut[0]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[0]~73_combout\,
	combout => \inst4|ram[7][0]~feeder_combout\);

-- Location: LCFF_X16_Y6_N19
\inst4|ram[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][0]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][0]~regout\);

-- Location: LCCOMB_X19_Y6_N2
\inst4|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux15~1_combout\ = (\inst4|Mux15~0_combout\ & (((\inst4|ram[7][0]~regout\)) # (!\instruction_register|internal\(6)))) # (!\inst4|Mux15~0_combout\ & (\instruction_register|internal\(6) & (\inst4|ram[5][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux15~0_combout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[5][0]~regout\,
	datad => \inst4|ram[7][0]~regout\,
	combout => \inst4|Mux15~1_combout\);

-- Location: LCCOMB_X19_Y6_N24
\inst4|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux15~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux15~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(8),
	datac => \inst4|Mux15~3_combout\,
	datad => \inst4|Mux15~1_combout\,
	combout => \inst4|Mux15~4_combout\);

-- Location: LCFF_X19_Y6_N25
\inst4|SR1out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(0));

-- Location: LCCOMB_X18_Y6_N24
\inst3|dataOut[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[0]~17_combout\ = (\inst4|SR1out\(0) & (\Control|ALUK\(0) & ((\SR2Mux|Selector15~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector15~0_combout\,
	datab => \inst4|SR1out\(0),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[0]~17_combout\);

-- Location: LCCOMB_X18_Y4_N0
\ALU|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = (\SR2Mux|Selector15~0_combout\ & (\inst4|SR1out\(0) $ (VCC))) # (!\SR2Mux|Selector15~0_combout\ & (\inst4|SR1out\(0) & VCC))
-- \ALU|Add0~1\ = CARRY((\SR2Mux|Selector15~0_combout\ & \inst4|SR1out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector15~0_combout\,
	datab => \inst4|SR1out\(0),
	datad => VCC,
	combout => \ALU|Add0~0_combout\,
	cout => \ALU|Add0~1\);

-- Location: LCCOMB_X18_Y6_N26
\inst3|dataOut[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[0]~18_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(0))) # (!\Control|ALUK\(1) & ((\ALU|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(0),
	datab => \ALU|Add0~0_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[0]~18_combout\);

-- Location: LCCOMB_X18_Y6_N12
\GateMDR|dataOut[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~72_combout\ = (\GateMDR|dataOut[0]~71_combout\ & (((\inst3|dataOut[0]~17_combout\) # (\inst3|dataOut[0]~18_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[0]~71_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[0]~17_combout\,
	datad => \inst3|dataOut[0]~18_combout\,
	combout => \GateMDR|dataOut[0]~72_combout\);

-- Location: LCCOMB_X18_Y6_N14
\GateMDR|dataOut[0]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~73_combout\ = ((\inst2|Data_CPU[0]~15_combout\ & \GateMDR|dataOut[0]~72_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~18_combout\,
	datac => \inst2|Data_CPU[0]~15_combout\,
	datad => \GateMDR|dataOut[0]~72_combout\,
	combout => \GateMDR|dataOut[0]~73_combout\);

-- Location: LCFF_X17_Y4_N31
\instruction_register|internal[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(0));

-- Location: LCCOMB_X19_Y5_N8
\inst3|dataOut[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[3]~10_combout\ = (\inst4|SR1out\(3) & (\Control|ALUK\(0) & ((\SR2Mux|Selector12~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(3),
	datab => \Control|ALUK\(0),
	datac => \SR2Mux|Selector12~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[3]~10_combout\);

-- Location: LCFF_X17_Y3_N11
\inst4|ram[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][2]~regout\);

-- Location: LCFF_X17_Y3_N29
\inst4|ram[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][2]~regout\);

-- Location: LCCOMB_X16_Y3_N30
\inst4|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux29~3_combout\ = (\inst4|Mux29~2_combout\ & (((\inst4|ram[3][2]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst4|Mux29~2_combout\ & (\instruction_register|internal\(1) & ((\inst4|ram[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux29~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[3][2]~regout\,
	datad => \inst4|ram[2][2]~regout\,
	combout => \inst4|Mux29~3_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst4|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux29~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux29~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux29~1_combout\,
	datab => \instruction_register|internal\(2),
	datad => \inst4|Mux29~3_combout\,
	combout => \inst4|Mux29~4_combout\);

-- Location: LCFF_X16_Y4_N5
\inst4|SR2out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux29~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(2));

-- Location: LCCOMB_X17_Y4_N6
\SR2Mux|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector13~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(2))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR2out\(2),
	datac => \instruction_register|internal\(2),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector13~0_combout\);

-- Location: LCCOMB_X18_Y4_N2
\ALU|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\SR2Mux|Selector14~0_combout\ & ((\inst4|SR1out\(1) & (\ALU|Add0~1\ & VCC)) # (!\inst4|SR1out\(1) & (!\ALU|Add0~1\)))) # (!\SR2Mux|Selector14~0_combout\ & ((\inst4|SR1out\(1) & (!\ALU|Add0~1\)) # (!\inst4|SR1out\(1) & 
-- ((\ALU|Add0~1\) # (GND)))))
-- \ALU|Add0~3\ = CARRY((\SR2Mux|Selector14~0_combout\ & (!\inst4|SR1out\(1) & !\ALU|Add0~1\)) # (!\SR2Mux|Selector14~0_combout\ & ((!\ALU|Add0~1\) # (!\inst4|SR1out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector14~0_combout\,
	datab => \inst4|SR1out\(1),
	datad => VCC,
	cin => \ALU|Add0~1\,
	combout => \ALU|Add0~2_combout\,
	cout => \ALU|Add0~3\);

-- Location: LCCOMB_X18_Y4_N6
\ALU|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = (\inst4|SR1out\(3) & ((\SR2Mux|Selector12~0_combout\ & (\ALU|Add0~5\ & VCC)) # (!\SR2Mux|Selector12~0_combout\ & (!\ALU|Add0~5\)))) # (!\inst4|SR1out\(3) & ((\SR2Mux|Selector12~0_combout\ & (!\ALU|Add0~5\)) # 
-- (!\SR2Mux|Selector12~0_combout\ & ((\ALU|Add0~5\) # (GND)))))
-- \ALU|Add0~7\ = CARRY((\inst4|SR1out\(3) & (!\SR2Mux|Selector12~0_combout\ & !\ALU|Add0~5\)) # (!\inst4|SR1out\(3) & ((!\ALU|Add0~5\) # (!\SR2Mux|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(3),
	datab => \SR2Mux|Selector12~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X19_Y5_N30
\inst3|dataOut[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[3]~11_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(3))) # (!\Control|ALUK\(1) & ((\ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(3),
	datab => \Control|ALUK\(0),
	datac => \ALU|Add0~6_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[3]~11_combout\);

-- Location: LCCOMB_X19_Y5_N28
\GateMDR|dataOut[3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~64_combout\ = (\GateMDR|dataOut[3]~63_combout\ & (((\inst3|dataOut[3]~10_combout\) # (\inst3|dataOut[3]~11_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[3]~63_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[3]~10_combout\,
	datad => \inst3|dataOut[3]~11_combout\,
	combout => \GateMDR|dataOut[3]~64_combout\);

-- Location: LCCOMB_X16_Y5_N18
\GateMDR|dataOut[3]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~65_combout\ = ((\inst2|Data_CPU[3]~12_combout\ & \GateMDR|dataOut[3]~64_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[3]~12_combout\,
	datab => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[3]~64_combout\,
	combout => \GateMDR|dataOut[3]~65_combout\);

-- Location: LCFF_X16_Y5_N5
\inst4|ram[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][3]~regout\);

-- Location: LCCOMB_X17_Y1_N16
\inst4|ram[7][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][3]~feeder_combout\ = \GateMDR|dataOut[3]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[3]~65_combout\,
	combout => \inst4|ram[7][3]~feeder_combout\);

-- Location: LCFF_X17_Y1_N17
\inst4|ram[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][3]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][3]~regout\);

-- Location: LCCOMB_X16_Y5_N4
\inst4|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux28~1_combout\ = (\inst4|Mux28~0_combout\ & (((\inst4|ram[7][3]~regout\)) # (!\instruction_register|internal\(0)))) # (!\inst4|Mux28~0_combout\ & (\instruction_register|internal\(0) & (\inst4|ram[5][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux28~0_combout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[5][3]~regout\,
	datad => \inst4|ram[7][3]~regout\,
	combout => \inst4|Mux28~1_combout\);

-- Location: LCFF_X17_Y3_N27
\inst4|ram[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][3]~regout\);

-- Location: LCFF_X17_Y3_N17
\inst4|ram[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][3]~regout\);

-- Location: LCCOMB_X20_Y5_N4
\inst4|ram[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][3]~feeder_combout\ = \GateMDR|dataOut[3]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[3]~65_combout\,
	combout => \inst4|ram[1][3]~feeder_combout\);

-- Location: LCFF_X20_Y5_N5
\inst4|ram[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][3]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][3]~regout\);

-- Location: LCCOMB_X20_Y5_N26
\inst4|ram[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][3]~feeder_combout\ = \GateMDR|dataOut[3]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[3]~65_combout\,
	combout => \inst4|ram[0][3]~feeder_combout\);

-- Location: LCFF_X20_Y5_N27
\inst4|ram[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][3]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][3]~regout\);

-- Location: LCCOMB_X20_Y5_N20
\inst4|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux28~2_combout\ = (\instruction_register|internal\(0) & ((\instruction_register|internal\(1)) # ((\inst4|ram[1][3]~regout\)))) # (!\instruction_register|internal\(0) & (!\instruction_register|internal\(1) & ((\inst4|ram[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[1][3]~regout\,
	datad => \inst4|ram[0][3]~regout\,
	combout => \inst4|Mux28~2_combout\);

-- Location: LCCOMB_X17_Y3_N16
\inst4|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux28~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux28~2_combout\ & (\inst4|ram[3][3]~regout\)) # (!\inst4|Mux28~2_combout\ & ((\inst4|ram[2][3]~regout\))))) # (!\instruction_register|internal\(1) & (((\inst4|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[3][3]~regout\,
	datac => \inst4|ram[2][3]~regout\,
	datad => \inst4|Mux28~2_combout\,
	combout => \inst4|Mux28~3_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst4|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux28~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux28~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux28~1_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux28~3_combout\,
	combout => \inst4|Mux28~4_combout\);

-- Location: LCFF_X16_Y4_N19
\inst4|SR2out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux28~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(3));

-- Location: LCFF_X16_Y5_N25
\instruction_register|internal[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[3]~65_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(3));

-- Location: LCCOMB_X17_Y4_N28
\SR2Mux|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector12~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(3))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR2out\(3),
	datac => \instruction_register|internal\(3),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector12~0_combout\);

-- Location: LCCOMB_X18_Y4_N10
\ALU|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\SR2Mux|Selector10~0_combout\ & ((\inst4|SR1out\(5) & (\ALU|Add0~9\ & VCC)) # (!\inst4|SR1out\(5) & (!\ALU|Add0~9\)))) # (!\SR2Mux|Selector10~0_combout\ & ((\inst4|SR1out\(5) & (!\ALU|Add0~9\)) # (!\inst4|SR1out\(5) & 
-- ((\ALU|Add0~9\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\SR2Mux|Selector10~0_combout\ & (!\inst4|SR1out\(5) & !\ALU|Add0~9\)) # (!\SR2Mux|Selector10~0_combout\ & ((!\ALU|Add0~9\) # (!\inst4|SR1out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector10~0_combout\,
	datab => \inst4|SR1out\(5),
	datad => VCC,
	cin => \ALU|Add0~9\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: LCCOMB_X18_Y4_N12
\ALU|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\inst4|SR1out\(6) $ (\SR2Mux|Selector9~0_combout\ $ (!\ALU|Add0~11\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\inst4|SR1out\(6) & ((\SR2Mux|Selector9~0_combout\) # (!\ALU|Add0~11\))) # (!\inst4|SR1out\(6) & (\SR2Mux|Selector9~0_combout\ & !\ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(6),
	datab => \SR2Mux|Selector9~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: LCCOMB_X18_Y4_N16
\ALU|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~16_combout\ = ((\inst4|SR1out\(8) $ (\SR2Mux|Selector7~0_combout\ $ (!\ALU|Add0~15\)))) # (GND)
-- \ALU|Add0~17\ = CARRY((\inst4|SR1out\(8) & ((\SR2Mux|Selector7~0_combout\) # (!\ALU|Add0~15\))) # (!\inst4|SR1out\(8) & (\SR2Mux|Selector7~0_combout\ & !\ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(8),
	datab => \SR2Mux|Selector7~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~15\,
	combout => \ALU|Add0~16_combout\,
	cout => \ALU|Add0~17\);

-- Location: LCCOMB_X18_Y4_N20
\ALU|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~20_combout\ = ((\SR2Mux|Selector5~0_combout\ $ (\inst4|SR1out\(10) $ (!\ALU|Add0~19\)))) # (GND)
-- \ALU|Add0~21\ = CARRY((\SR2Mux|Selector5~0_combout\ & ((\inst4|SR1out\(10)) # (!\ALU|Add0~19\))) # (!\SR2Mux|Selector5~0_combout\ & (\inst4|SR1out\(10) & !\ALU|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector5~0_combout\,
	datab => \inst4|SR1out\(10),
	datad => VCC,
	cin => \ALU|Add0~19\,
	combout => \ALU|Add0~20_combout\,
	cout => \ALU|Add0~21\);

-- Location: LCCOMB_X19_Y4_N30
\inst3|dataOut[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[10]~1_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(10))) # (!\Control|ALUK\(1) & ((\ALU|Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(10),
	datab => \Control|ALUK\(0),
	datac => \ALU|Add0~20_combout\,
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[10]~1_combout\);

-- Location: LCCOMB_X20_Y4_N20
\inst4|ram[0][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[0][10]~feeder_combout\ = \GateMDR|dataOut[10]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~42_combout\,
	combout => \inst4|ram[0][10]~feeder_combout\);

-- Location: LCFF_X20_Y4_N21
\inst4|ram[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[0][10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][10]~regout\);

-- Location: LCCOMB_X20_Y4_N22
\inst4|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux21~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & (\inst4|ram[1][10]~regout\)) # (!\instruction_register|internal\(0) & 
-- ((\inst4|ram[0][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[1][10]~regout\,
	datac => \inst4|ram[0][10]~regout\,
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux21~2_combout\);

-- Location: LCCOMB_X20_Y4_N4
\inst4|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux21~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux21~2_combout\ & (\inst4|ram[3][10]~regout\)) # (!\inst4|Mux21~2_combout\ & ((\inst4|ram[2][10]~regout\))))) # (!\instruction_register|internal\(1) & (((\inst4|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[3][10]~regout\,
	datac => \inst4|ram[2][10]~regout\,
	datad => \inst4|Mux21~2_combout\,
	combout => \inst4|Mux21~3_combout\);

-- Location: LCCOMB_X16_Y4_N20
\inst4|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux21~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux21~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux21~1_combout\,
	datab => \inst4|Mux21~3_combout\,
	datad => \instruction_register|internal\(2),
	combout => \inst4|Mux21~4_combout\);

-- Location: LCFF_X16_Y4_N21
\inst4|SR2out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(10));

-- Location: LCCOMB_X17_Y4_N10
\SR2Mux|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector5~0_combout\ = (\Control|SR2MUX~1_combout\ & ((\inst4|SR2out\(10)))) # (!\Control|SR2MUX~1_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(4),
	datac => \inst4|SR2out\(10),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector5~0_combout\);

-- Location: LCCOMB_X20_Y4_N26
\inst3|dataOut[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[10]~0_combout\ = (\inst4|SR1out\(10) & (\Control|ALUK\(0) & ((\SR2Mux|Selector5~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(10),
	datab => \SR2Mux|Selector5~0_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[10]~0_combout\);

-- Location: LCCOMB_X20_Y4_N12
\GateMDR|dataOut[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~41_combout\ = (\GateMDR|dataOut[10]~40_combout\ & (((\inst3|dataOut[10]~1_combout\) # (\inst3|dataOut[10]~0_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[10]~40_combout\,
	datac => \inst3|dataOut[10]~1_combout\,
	datad => \inst3|dataOut[10]~0_combout\,
	combout => \GateMDR|dataOut[10]~41_combout\);

-- Location: LCCOMB_X20_Y4_N6
\GateMDR|dataOut[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~42_combout\ = ((\inst2|Data_CPU[10]~5_combout\ & \GateMDR|dataOut[10]~41_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[10]~5_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[10]~41_combout\,
	combout => \GateMDR|dataOut[10]~42_combout\);

-- Location: LCFF_X19_Y4_N21
\instruction_register|internal[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[10]~42_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(10));

-- Location: LCCOMB_X20_Y5_N22
\inst4|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~1_combout\ = (!\instruction_register|internal\(9) & (\instruction_register|internal\(11) & (\instruction_register|internal\(10) & \Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(9),
	datab => \instruction_register|internal\(11),
	datac => \instruction_register|internal\(10),
	datad => \Control|WideOr11~combout\,
	combout => \inst4|Decoder0~1_combout\);

-- Location: LCFF_X18_Y6_N5
\inst4|ram[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][1]~regout\);

-- Location: LCFF_X18_Y6_N19
\inst4|ram[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][1]~regout\);

-- Location: LCCOMB_X18_Y6_N18
\inst4|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux14~0_combout\ = (\instruction_register|internal\(7) & ((\inst4|ram[6][1]~regout\) # ((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & (((\inst4|ram[4][1]~regout\ & !\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|ram[6][1]~regout\,
	datac => \inst4|ram[4][1]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux14~0_combout\);

-- Location: LCCOMB_X16_Y6_N8
\inst4|ram[7][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][1]~feeder_combout\ = \GateMDR|dataOut[1]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~70_combout\,
	combout => \inst4|ram[7][1]~feeder_combout\);

-- Location: LCFF_X16_Y6_N9
\inst4|ram[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][1]~regout\);

-- Location: LCCOMB_X16_Y6_N14
\inst4|ram[5][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][1]~feeder_combout\ = \GateMDR|dataOut[1]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~70_combout\,
	combout => \inst4|ram[5][1]~feeder_combout\);

-- Location: LCFF_X16_Y6_N15
\inst4|ram[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][1]~regout\);

-- Location: LCCOMB_X17_Y6_N26
\inst4|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux14~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux14~0_combout\ & (\inst4|ram[7][1]~regout\)) # (!\inst4|Mux14~0_combout\ & ((\inst4|ram[5][1]~regout\))))) # (!\instruction_register|internal\(6) & (\inst4|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|Mux14~0_combout\,
	datac => \inst4|ram[7][1]~regout\,
	datad => \inst4|ram[5][1]~regout\,
	combout => \inst4|Mux14~1_combout\);

-- Location: LCFF_X17_Y3_N25
\inst4|ram[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][1]~regout\);

-- Location: LCFF_X18_Y3_N25
\inst4|ram[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][1]~regout\);

-- Location: LCCOMB_X17_Y3_N24
\inst4|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux14~3_combout\ = (\inst4|Mux14~2_combout\ & (((\inst4|ram[3][1]~regout\)) # (!\instruction_register|internal\(7)))) # (!\inst4|Mux14~2_combout\ & (\instruction_register|internal\(7) & ((\inst4|ram[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux14~2_combout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][1]~regout\,
	datad => \inst4|ram[2][1]~regout\,
	combout => \inst4|Mux14~3_combout\);

-- Location: LCCOMB_X17_Y6_N8
\inst4|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux14~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux14~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(8),
	datab => \inst4|Mux14~1_combout\,
	datad => \inst4|Mux14~3_combout\,
	combout => \inst4|Mux14~4_combout\);

-- Location: LCFF_X17_Y6_N9
\inst4|SR1out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(1));

-- Location: LCCOMB_X19_Y5_N24
\inst3|dataOut[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~15_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(1))) # (!\Control|ALUK\(1) & ((\ALU|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(1),
	datab => \Control|ALUK\(0),
	datac => \Control|ALUK\(1),
	datad => \ALU|Add0~2_combout\,
	combout => \inst3|dataOut[1]~15_combout\);

-- Location: LCCOMB_X19_Y5_N18
\inst3|dataOut[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~14_combout\ = (\inst4|SR1out\(1) & (\Control|ALUK\(0) & ((\SR2Mux|Selector14~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector14~0_combout\,
	datab => \inst4|SR1out\(1),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[1]~14_combout\);

-- Location: LCCOMB_X19_Y5_N26
\inst3|dataOut[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[1]~16_combout\ = ((\inst3|dataOut[1]~15_combout\) # (\inst3|dataOut[1]~14_combout\)) # (!\Control|WideOr11~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[1]~15_combout\,
	datad => \inst3|dataOut[1]~14_combout\,
	combout => \inst3|dataOut[1]~16_combout\);

-- Location: LCCOMB_X19_Y5_N22
\GateMDR|dataOut[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~70_combout\ = ((\inst2|Data_CPU[1]~14_combout\ & (\GateMDR|dataOut[1]~69_combout\ & \inst3|dataOut[1]~16_combout\))) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[1]~14_combout\,
	datab => \GateMDR|dataOut[1]~69_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \inst3|dataOut[1]~16_combout\,
	combout => \GateMDR|dataOut[1]~70_combout\);

-- Location: LCFF_X19_Y5_N17
\instruction_register|internal[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[1]~70_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(1));

-- Location: LCCOMB_X20_Y2_N24
\inst4|ram[2][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][9]~feeder_combout\ = \GateMDR|dataOut[9]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[9]~45_combout\,
	combout => \inst4|ram[2][9]~feeder_combout\);

-- Location: LCFF_X20_Y2_N25
\inst4|ram[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][9]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][9]~regout\);

-- Location: LCCOMB_X19_Y2_N30
\inst4|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux22~3_combout\ = (\inst4|Mux22~2_combout\ & ((\inst4|ram[3][9]~regout\) # ((!\instruction_register|internal\(1))))) # (!\inst4|Mux22~2_combout\ & (((\instruction_register|internal\(1) & \inst4|ram[2][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux22~2_combout\,
	datab => \inst4|ram[3][9]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \inst4|ram[2][9]~regout\,
	combout => \inst4|Mux22~3_combout\);

-- Location: LCFF_X20_Y3_N11
\inst4|ram[7][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][9]~regout\);

-- Location: LCFF_X19_Y2_N25
\inst4|ram[4][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][9]~regout\);

-- Location: LCCOMB_X18_Y2_N14
\inst4|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux22~0_combout\ = (\instruction_register|internal\(1) & ((\inst4|ram[6][9]~regout\) # ((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & (((\inst4|ram[4][9]~regout\ & !\instruction_register|internal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][9]~regout\,
	datab => \inst4|ram[4][9]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux22~0_combout\);

-- Location: LCCOMB_X20_Y3_N10
\inst4|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux22~1_combout\ = (\instruction_register|internal\(0) & ((\inst4|Mux22~0_combout\ & ((\inst4|ram[7][9]~regout\))) # (!\inst4|Mux22~0_combout\ & (\inst4|ram[5][9]~regout\)))) # (!\instruction_register|internal\(0) & (((\inst4|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][9]~regout\,
	datab => \instruction_register|internal\(0),
	datac => \inst4|ram[7][9]~regout\,
	datad => \inst4|Mux22~0_combout\,
	combout => \inst4|Mux22~1_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst4|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux22~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux22~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(2),
	datab => \inst4|Mux22~3_combout\,
	datac => \inst4|Mux22~1_combout\,
	combout => \inst4|Mux22~4_combout\);

-- Location: LCFF_X16_Y4_N7
\inst4|SR2out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(9));

-- Location: LCCOMB_X17_Y4_N20
\SR2Mux|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector6~0_combout\ = (\Control|SR2MUX~1_combout\ & ((\inst4|SR2out\(9)))) # (!\Control|SR2MUX~1_combout\ & (\instruction_register|internal\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(4),
	datac => \inst4|SR2out\(9),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector6~0_combout\);

-- Location: LCCOMB_X19_Y2_N12
\inst3|dataOut[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[9]~2_combout\ = (\inst4|SR1out\(9) & (\Control|ALUK\(0) & ((\SR2Mux|Selector6~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(9),
	datab => \SR2Mux|Selector6~0_combout\,
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[9]~2_combout\);

-- Location: LCFF_X20_Y3_N17
\inst4|ram[5][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][9]~regout\);

-- Location: LCCOMB_X19_Y2_N24
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\instruction_register|internal\(7) & ((\inst4|ram[6][9]~regout\) # ((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & (((\inst4|ram[4][9]~regout\ & !\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][9]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[4][9]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y3_N16
\inst4|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux6~0_combout\ & (\inst4|ram[7][9]~regout\)) # (!\inst4|Mux6~0_combout\ & ((\inst4|ram[5][9]~regout\))))) # (!\instruction_register|internal\(6) & (((\inst4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][9]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[5][9]~regout\,
	datad => \inst4|Mux6~0_combout\,
	combout => \inst4|Mux6~1_combout\);

-- Location: LCFF_X18_Y2_N27
\inst4|ram[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[0][9]~regout\);

-- Location: LCCOMB_X18_Y2_N26
\inst4|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & (\inst4|ram[1][9]~regout\)) # (!\instruction_register|internal\(6) & 
-- ((\inst4|ram[0][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[1][9]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[0][9]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y2_N4
\inst4|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux6~2_combout\ & (\inst4|ram[3][9]~regout\)) # (!\inst4|Mux6~2_combout\ & ((\inst4|ram[2][9]~regout\))))) # (!\instruction_register|internal\(7) & (((\inst4|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|ram[3][9]~regout\,
	datac => \inst4|ram[2][9]~regout\,
	datad => \inst4|Mux6~2_combout\,
	combout => \inst4|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst4|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux6~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(8),
	datac => \inst4|Mux6~1_combout\,
	datad => \inst4|Mux6~3_combout\,
	combout => \inst4|Mux6~4_combout\);

-- Location: LCFF_X19_Y6_N27
\inst4|SR1out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(9));

-- Location: LCCOMB_X19_Y2_N6
\inst3|dataOut[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[9]~3_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst4|SR1out\(9)))) # (!\Control|ALUK\(1) & (\ALU|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~18_combout\,
	datab => \inst4|SR1out\(9),
	datac => \Control|ALUK\(1),
	datad => \Control|ALUK\(0),
	combout => \inst3|dataOut[9]~3_combout\);

-- Location: LCCOMB_X19_Y2_N28
\GateMDR|dataOut[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~44_combout\ = (\GateMDR|dataOut[9]~43_combout\ & (((\inst3|dataOut[9]~2_combout\) # (\inst3|dataOut[9]~3_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[9]~43_combout\,
	datac => \inst3|dataOut[9]~2_combout\,
	datad => \inst3|dataOut[9]~3_combout\,
	combout => \GateMDR|dataOut[9]~44_combout\);

-- Location: LCCOMB_X19_Y2_N14
\GateMDR|dataOut[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~45_combout\ = ((\inst2|Data_CPU[9]~6_combout\ & \GateMDR|dataOut[9]~44_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[9]~6_combout\,
	datab => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[9]~44_combout\,
	combout => \GateMDR|dataOut[9]~45_combout\);

-- Location: LCFF_X19_Y4_N23
\instruction_register|internal[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(9));

-- Location: LCCOMB_X16_Y3_N28
\inst4|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~0_combout\ = (!\instruction_register|internal\(10) & (\instruction_register|internal\(11) & (\Control|WideOr11~combout\ & \instruction_register|internal\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(10),
	datab => \instruction_register|internal\(11),
	datac => \Control|WideOr11~combout\,
	datad => \instruction_register|internal\(9),
	combout => \inst4|Decoder0~0_combout\);

-- Location: LCFF_X18_Y4_N25
\inst4|ram[5][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][11]~regout\);

-- Location: LCFF_X20_Y3_N25
\inst4|ram[7][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][11]~regout\);

-- Location: LCCOMB_X20_Y3_N24
\inst4|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~1_combout\ = (\inst4|Mux4~0_combout\ & (((\inst4|ram[7][11]~regout\) # (!\instruction_register|internal\(6))))) # (!\inst4|Mux4~0_combout\ & (\inst4|ram[5][11]~regout\ & ((\instruction_register|internal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux4~0_combout\,
	datab => \inst4|ram[5][11]~regout\,
	datac => \inst4|ram[7][11]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y4_N4
\inst4|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux4~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux4~3_combout\,
	datac => \instruction_register|internal\(8),
	datad => \inst4|Mux4~1_combout\,
	combout => \inst4|Mux4~4_combout\);

-- Location: LCFF_X21_Y4_N5
\inst4|SR1out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(11));

-- Location: LCCOMB_X18_Y4_N22
\ALU|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~22_combout\ = (\SR2Mux|Selector4~0_combout\ & ((\inst4|SR1out\(11) & (\ALU|Add0~21\ & VCC)) # (!\inst4|SR1out\(11) & (!\ALU|Add0~21\)))) # (!\SR2Mux|Selector4~0_combout\ & ((\inst4|SR1out\(11) & (!\ALU|Add0~21\)) # (!\inst4|SR1out\(11) & 
-- ((\ALU|Add0~21\) # (GND)))))
-- \ALU|Add0~23\ = CARRY((\SR2Mux|Selector4~0_combout\ & (!\inst4|SR1out\(11) & !\ALU|Add0~21\)) # (!\SR2Mux|Selector4~0_combout\ & ((!\ALU|Add0~21\) # (!\inst4|SR1out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector4~0_combout\,
	datab => \inst4|SR1out\(11),
	datad => VCC,
	cin => \ALU|Add0~21\,
	combout => \ALU|Add0~22_combout\,
	cout => \ALU|Add0~23\);

-- Location: LCCOMB_X20_Y2_N0
\inst4|ram[2][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][11]~feeder_combout\ = \GateMDR|dataOut[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[11]~39_combout\,
	combout => \inst4|ram[2][11]~feeder_combout\);

-- Location: LCFF_X20_Y2_N1
\inst4|ram[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][11]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][11]~regout\);

-- Location: LCCOMB_X20_Y4_N0
\inst4|ram[1][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[1][11]~feeder_combout\ = \GateMDR|dataOut[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[11]~39_combout\,
	combout => \inst4|ram[1][11]~feeder_combout\);

-- Location: LCFF_X20_Y4_N1
\inst4|ram[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][11]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][11]~regout\);

-- Location: LCCOMB_X20_Y4_N28
\inst4|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux20~2_combout\ = (\instruction_register|internal\(1) & (((\instruction_register|internal\(0))))) # (!\instruction_register|internal\(1) & ((\instruction_register|internal\(0) & ((\inst4|ram[1][11]~regout\))) # (!\instruction_register|internal\(0) 
-- & (\inst4|ram[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][11]~regout\,
	datab => \inst4|ram[1][11]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \instruction_register|internal\(0),
	combout => \inst4|Mux20~2_combout\);

-- Location: LCCOMB_X20_Y2_N22
\inst4|ram[3][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[3][11]~feeder_combout\ = \GateMDR|dataOut[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[11]~39_combout\,
	combout => \inst4|ram[3][11]~feeder_combout\);

-- Location: LCFF_X20_Y2_N23
\inst4|ram[3][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[3][11]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][11]~regout\);

-- Location: LCCOMB_X20_Y2_N28
\inst4|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux20~3_combout\ = (\instruction_register|internal\(1) & ((\inst4|Mux20~2_combout\ & ((\inst4|ram[3][11]~regout\))) # (!\inst4|Mux20~2_combout\ & (\inst4|ram[2][11]~regout\)))) # (!\instruction_register|internal\(1) & (((\inst4|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(1),
	datab => \inst4|ram[2][11]~regout\,
	datac => \inst4|Mux20~2_combout\,
	datad => \inst4|ram[3][11]~regout\,
	combout => \inst4|Mux20~3_combout\);

-- Location: LCFF_X19_Y2_N27
\inst4|ram[4][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][11]~regout\);

-- Location: LCFF_X19_Y2_N17
\inst4|ram[6][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][11]~regout\);

-- Location: LCCOMB_X20_Y2_N10
\inst4|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux20~0_combout\ = (\instruction_register|internal\(0) & (((\instruction_register|internal\(1))))) # (!\instruction_register|internal\(0) & ((\instruction_register|internal\(1) & ((\inst4|ram[6][11]~regout\))) # (!\instruction_register|internal\(1) 
-- & (\inst4|ram[4][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(0),
	datab => \inst4|ram[4][11]~regout\,
	datac => \instruction_register|internal\(1),
	datad => \inst4|ram[6][11]~regout\,
	combout => \inst4|Mux20~0_combout\);

-- Location: LCCOMB_X20_Y3_N26
\inst4|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux20~1_combout\ = (\inst4|Mux20~0_combout\ & ((\inst4|ram[7][11]~regout\) # ((!\instruction_register|internal\(0))))) # (!\inst4|Mux20~0_combout\ & (((\instruction_register|internal\(0) & \inst4|ram[5][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][11]~regout\,
	datab => \inst4|Mux20~0_combout\,
	datac => \instruction_register|internal\(0),
	datad => \inst4|ram[5][11]~regout\,
	combout => \inst4|Mux20~1_combout\);

-- Location: LCCOMB_X16_Y4_N22
\inst4|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux20~4_combout\ = (\instruction_register|internal\(2) & ((\inst4|Mux20~1_combout\))) # (!\instruction_register|internal\(2) & (\inst4|Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux20~3_combout\,
	datac => \instruction_register|internal\(2),
	datad => \inst4|Mux20~1_combout\,
	combout => \inst4|Mux20~4_combout\);

-- Location: LCFF_X16_Y4_N23
\inst4|SR2out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(11));

-- Location: LCCOMB_X17_Y4_N2
\SR2Mux|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector4~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(11))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR2out\(11),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y4_N10
\GateMDR|dataOut[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~36_combout\ = (\inst4|SR1out\(11) & ((\SR2Mux|Selector4~0_combout\) # (\Control|ALUK\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR1out\(11),
	datac => \SR2Mux|Selector4~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[11]~36_combout\);

-- Location: LCCOMB_X19_Y4_N12
\GateMDR|dataOut[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~37_combout\ = (\Control|ALUK\(0) & (((\GateMDR|dataOut[11]~36_combout\)))) # (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\GateMDR|dataOut[11]~36_combout\))) # (!\Control|ALUK\(1) & (\ALU|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(0),
	datab => \ALU|Add0~22_combout\,
	datac => \Control|ALUK\(1),
	datad => \GateMDR|dataOut[11]~36_combout\,
	combout => \GateMDR|dataOut[11]~37_combout\);

-- Location: LCCOMB_X19_Y4_N18
\GateMDR|dataOut[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~38_combout\ = (\GateMDR|dataOut[11]~35_combout\ & ((\GateMDR|dataOut[11]~37_combout\) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GateMDR|dataOut[11]~35_combout\,
	datac => \Control|WideOr11~combout\,
	datad => \GateMDR|dataOut[11]~37_combout\,
	combout => \GateMDR|dataOut[11]~38_combout\);

-- Location: LCCOMB_X19_Y4_N16
\GateMDR|dataOut[11]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~39_combout\ = ((\inst2|Data_CPU[11]~4_combout\ & \GateMDR|dataOut[11]~38_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~18_combout\,
	datab => \inst2|Data_CPU[11]~4_combout\,
	datad => \GateMDR|dataOut[11]~38_combout\,
	combout => \GateMDR|dataOut[11]~39_combout\);

-- Location: LCFF_X19_Y4_N17
\instruction_register|internal[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[11]~39_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(11));

-- Location: LCCOMB_X20_Y5_N16
\inst4|Decoder0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Decoder0~5_combout\ = (\instruction_register|internal\(9) & (!\instruction_register|internal\(11) & (!\instruction_register|internal\(10) & \Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(9),
	datab => \instruction_register|internal\(11),
	datac => \instruction_register|internal\(10),
	datad => \Control|WideOr11~combout\,
	combout => \inst4|Decoder0~5_combout\);

-- Location: LCFF_X19_Y1_N31
\inst4|ram[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[1][8]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][8]~regout\);

-- Location: LCCOMB_X18_Y2_N18
\inst4|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux7~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & ((\inst4|ram[1][8]~regout\))) # (!\instruction_register|internal\(6) & 
-- (\inst4|ram[0][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][8]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[1][8]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux7~2_combout\);

-- Location: LCFF_X18_Y3_N13
\inst4|ram[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][8]~regout\);

-- Location: LCFF_X18_Y3_N3
\inst4|ram[3][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][8]~regout\);

-- Location: LCCOMB_X20_Y2_N16
\inst4|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux7~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux7~2_combout\ & ((\inst4|ram[3][8]~regout\))) # (!\inst4|Mux7~2_combout\ & (\inst4|ram[2][8]~regout\)))) # (!\instruction_register|internal\(7) & (\inst4|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(7),
	datab => \inst4|Mux7~2_combout\,
	datac => \inst4|ram[2][8]~regout\,
	datad => \inst4|ram[3][8]~regout\,
	combout => \inst4|Mux7~3_combout\);

-- Location: LCCOMB_X17_Y1_N20
\inst4|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux7~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux7~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux7~1_combout\,
	datac => \inst4|Mux7~3_combout\,
	datad => \instruction_register|internal\(8),
	combout => \inst4|Mux7~4_combout\);

-- Location: LCFF_X17_Y1_N21
\inst4|SR1out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(8));

-- Location: LCCOMB_X18_Y1_N8
\GateMDR|dataOut[8]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~47_combout\ = (\inst4|SR1out\(8) & (\Control|ALUK\(0) & ((\SR2Mux|Selector7~0_combout\) # (\Control|ALUK\(1))))) # (!\inst4|SR1out\(8) & (((!\Control|ALUK\(0) & \Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector7~0_combout\,
	datab => \inst4|SR1out\(8),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[8]~47_combout\);

-- Location: LCCOMB_X18_Y1_N10
\GateMDR|dataOut[8]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~84_combout\ = (\Control|WideOr11~combout\ & (((\Control|ALUK\(0)) # (\Control|ALUK\(1))) # (!\ALU|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \ALU|Add0~16_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[8]~84_combout\);

-- Location: LCCOMB_X18_Y1_N6
\GateMDR|dataOut[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~48_combout\ = (\inst2|Data_CPU[8]~7_combout\ & (\GateMDR|dataOut[8]~46_combout\ & ((\GateMDR|dataOut[8]~47_combout\) # (!\GateMDR|dataOut[8]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[8]~7_combout\,
	datab => \GateMDR|dataOut[8]~46_combout\,
	datac => \GateMDR|dataOut[8]~47_combout\,
	datad => \GateMDR|dataOut[8]~84_combout\,
	combout => \GateMDR|dataOut[8]~48_combout\);

-- Location: LCCOMB_X18_Y1_N16
\GateMDR|dataOut[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[8]~49_combout\ = (\GateMDR|dataOut[8]~48_combout\) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[8]~48_combout\,
	combout => \GateMDR|dataOut[8]~49_combout\);

-- Location: LCCOMB_X16_Y5_N2
\instruction_register|internal[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register|internal[8]~feeder_combout\ = \GateMDR|dataOut[8]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[8]~49_combout\,
	combout => \instruction_register|internal[8]~feeder_combout\);

-- Location: LCFF_X16_Y5_N3
\instruction_register|internal[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instruction_register|internal[8]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(8));

-- Location: LCCOMB_X15_Y5_N28
\inst4|ram[3][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[3][7]~feeder_combout\ = \GateMDR|dataOut[7]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[7]~52_combout\,
	combout => \inst4|ram[3][7]~feeder_combout\);

-- Location: LCFF_X15_Y5_N29
\inst4|ram[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[3][7]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][7]~regout\);

-- Location: LCFF_X18_Y5_N27
\inst4|ram[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][7]~regout\);

-- Location: LCCOMB_X18_Y5_N4
\inst4|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux8~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & ((\inst4|ram[1][7]~regout\))) # (!\instruction_register|internal\(6) & 
-- (\inst4|ram[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][7]~regout\,
	datab => \inst4|ram[1][7]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux8~2_combout\);

-- Location: LCCOMB_X15_Y5_N20
\inst4|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux8~3_combout\ = (\inst4|Mux8~2_combout\ & (((\inst4|ram[3][7]~regout\) # (!\instruction_register|internal\(7))))) # (!\inst4|Mux8~2_combout\ & (\inst4|ram[2][7]~regout\ & ((\instruction_register|internal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][7]~regout\,
	datab => \inst4|ram[3][7]~regout\,
	datac => \inst4|Mux8~2_combout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux8~3_combout\);

-- Location: LCFF_X16_Y5_N9
\inst4|ram[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][7]~regout\);

-- Location: LCFF_X17_Y5_N23
\inst4|ram[4][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][7]~regout\);

-- Location: LCCOMB_X17_Y5_N22
\inst4|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux8~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][7]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][7]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[4][7]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux8~0_combout\);

-- Location: LCCOMB_X16_Y5_N8
\inst4|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux8~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux8~0_combout\ & (\inst4|ram[7][7]~regout\)) # (!\inst4|Mux8~0_combout\ & ((\inst4|ram[5][7]~regout\))))) # (!\instruction_register|internal\(6) & (((\inst4|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][7]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[5][7]~regout\,
	datad => \inst4|Mux8~0_combout\,
	combout => \inst4|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y1_N14
\inst4|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux8~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux8~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|internal\(8),
	datac => \inst4|Mux8~3_combout\,
	datad => \inst4|Mux8~1_combout\,
	combout => \inst4|Mux8~4_combout\);

-- Location: LCFF_X17_Y1_N15
\inst4|SR1out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(7));

-- Location: LCCOMB_X18_Y5_N2
\inst3|dataOut[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[7]~5_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst4|SR1out\(7)))) # (!\Control|ALUK\(1) & (\ALU|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~14_combout\,
	datab => \inst4|SR1out\(7),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[7]~5_combout\);

-- Location: LCCOMB_X18_Y5_N0
\GateMDR|dataOut[7]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~51_combout\ = (\GateMDR|dataOut[7]~50_combout\ & (((\inst3|dataOut[7]~4_combout\) # (\inst3|dataOut[7]~5_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[7]~50_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[7]~4_combout\,
	datad => \inst3|dataOut[7]~5_combout\,
	combout => \GateMDR|dataOut[7]~51_combout\);

-- Location: LCCOMB_X18_Y5_N26
\GateMDR|dataOut[7]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~52_combout\ = ((\inst2|Data_CPU[7]~8_combout\ & \GateMDR|dataOut[7]~51_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[7]~8_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[7]~51_combout\,
	combout => \GateMDR|dataOut[7]~52_combout\);

-- Location: LCCOMB_X19_Y5_N12
\instruction_register|internal[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instruction_register|internal[7]~feeder_combout\ = \GateMDR|dataOut[7]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[7]~52_combout\,
	combout => \instruction_register|internal[7]~feeder_combout\);

-- Location: LCFF_X19_Y5_N13
\instruction_register|internal[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \instruction_register|internal[7]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(7));

-- Location: LCCOMB_X17_Y3_N10
\inst4|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux13~3_combout\ = (\inst4|Mux13~2_combout\ & (((\inst4|ram[3][2]~regout\)) # (!\instruction_register|internal\(7)))) # (!\inst4|Mux13~2_combout\ & (\instruction_register|internal\(7) & ((\inst4|ram[2][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux13~2_combout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][2]~regout\,
	datad => \inst4|ram[2][2]~regout\,
	combout => \inst4|Mux13~3_combout\);

-- Location: LCCOMB_X16_Y6_N24
\inst4|ram[5][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][2]~feeder_combout\ = \GateMDR|dataOut[2]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~68_combout\,
	combout => \inst4|ram[5][2]~feeder_combout\);

-- Location: LCFF_X16_Y6_N25
\inst4|ram[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][2]~regout\);

-- Location: LCCOMB_X16_Y6_N6
\inst4|ram[7][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][2]~feeder_combout\ = \GateMDR|dataOut[2]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[2]~68_combout\,
	combout => \inst4|ram[7][2]~feeder_combout\);

-- Location: LCFF_X16_Y6_N7
\inst4|ram[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][2]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][2]~regout\);

-- Location: LCFF_X18_Y6_N1
\inst4|ram[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[6][2]~regout\);

-- Location: LCCOMB_X18_Y6_N30
\inst4|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux13~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & ((\inst4|ram[6][2]~regout\))) # (!\instruction_register|internal\(7) 
-- & (\inst4|ram[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[4][2]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[6][2]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y6_N12
\inst4|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux13~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux13~0_combout\ & ((\inst4|ram[7][2]~regout\))) # (!\inst4|Mux13~0_combout\ & (\inst4|ram[5][2]~regout\)))) # (!\instruction_register|internal\(6) & (((\inst4|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(6),
	datab => \inst4|ram[5][2]~regout\,
	datac => \inst4|ram[7][2]~regout\,
	datad => \inst4|Mux13~0_combout\,
	combout => \inst4|Mux13~1_combout\);

-- Location: LCCOMB_X17_Y6_N18
\inst4|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux13~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux13~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(8),
	datac => \inst4|Mux13~3_combout\,
	datad => \inst4|Mux13~1_combout\,
	combout => \inst4|Mux13~4_combout\);

-- Location: LCFF_X17_Y6_N19
\inst4|SR1out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(2));

-- Location: LCCOMB_X18_Y6_N20
\inst3|dataOut[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[2]~12_combout\ = (\inst4|SR1out\(2) & (\Control|ALUK\(0) & ((\SR2Mux|Selector13~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector13~0_combout\,
	datab => \inst4|SR1out\(2),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[2]~12_combout\);

-- Location: LCCOMB_X18_Y6_N6
\inst3|dataOut[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[2]~13_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\inst4|SR1out\(2)))) # (!\Control|ALUK\(1) & (\ALU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~4_combout\,
	datab => \inst4|SR1out\(2),
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[2]~13_combout\);

-- Location: LCCOMB_X18_Y6_N28
\GateMDR|dataOut[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~67_combout\ = (\GateMDR|dataOut[2]~66_combout\ & (((\inst3|dataOut[2]~12_combout\) # (\inst3|dataOut[2]~13_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[2]~66_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[2]~12_combout\,
	datad => \inst3|dataOut[2]~13_combout\,
	combout => \GateMDR|dataOut[2]~67_combout\);

-- Location: LCCOMB_X18_Y6_N10
\GateMDR|dataOut[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~68_combout\ = ((\inst2|Data_CPU[2]~13_combout\ & \GateMDR|dataOut[2]~67_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[2]~13_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[2]~67_combout\,
	combout => \GateMDR|dataOut[2]~68_combout\);

-- Location: LCFF_X17_Y4_N25
\instruction_register|internal[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(2));

-- Location: LCCOMB_X17_Y3_N8
\inst4|ram[2][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[2][6]~feeder_combout\ = \GateMDR|dataOut[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~55_combout\,
	combout => \inst4|ram[2][6]~feeder_combout\);

-- Location: LCFF_X17_Y3_N9
\inst4|ram[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[2][6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][6]~regout\);

-- Location: LCFF_X17_Y3_N23
\inst4|ram[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][6]~regout\);

-- Location: LCCOMB_X16_Y3_N18
\inst4|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux25~3_combout\ = (\inst4|Mux25~2_combout\ & (((\inst4|ram[3][6]~regout\)) # (!\instruction_register|internal\(1)))) # (!\inst4|Mux25~2_combout\ & (\instruction_register|internal\(1) & (\inst4|ram[2][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux25~2_combout\,
	datab => \instruction_register|internal\(1),
	datac => \inst4|ram[2][6]~regout\,
	datad => \inst4|ram[3][6]~regout\,
	combout => \inst4|Mux25~3_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst4|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux25~4_combout\ = (\instruction_register|internal\(2) & (\inst4|Mux25~1_combout\)) # (!\instruction_register|internal\(2) & ((\inst4|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux25~1_combout\,
	datab => \instruction_register|internal\(2),
	datad => \inst4|Mux25~3_combout\,
	combout => \inst4|Mux25~4_combout\);

-- Location: LCFF_X16_Y4_N29
\inst4|SR2out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux25~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR2out\(6));

-- Location: LCCOMB_X17_Y4_N4
\SR2Mux|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector9~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(6))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR2out\(6),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector9~0_combout\);

-- Location: LCCOMB_X17_Y5_N4
\inst3|dataOut[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[6]~6_combout\ = (\inst4|SR1out\(6) & (\Control|ALUK\(0) & ((\SR2Mux|Selector9~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(6),
	datab => \SR2Mux|Selector9~0_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[6]~6_combout\);

-- Location: LCCOMB_X17_Y5_N2
\inst3|dataOut[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[6]~7_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(6))) # (!\Control|ALUK\(1) & ((\ALU|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(6),
	datab => \ALU|Add0~12_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[6]~7_combout\);

-- Location: LCCOMB_X17_Y5_N28
\GateMDR|dataOut[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~54_combout\ = (\GateMDR|dataOut[6]~53_combout\ & (((\inst3|dataOut[6]~6_combout\) # (\inst3|dataOut[6]~7_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[6]~53_combout\,
	datac => \inst3|dataOut[6]~6_combout\,
	datad => \inst3|dataOut[6]~7_combout\,
	combout => \GateMDR|dataOut[6]~54_combout\);

-- Location: LCCOMB_X17_Y5_N26
\GateMDR|dataOut[6]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~55_combout\ = ((\inst2|Data_CPU[6]~9_combout\ & \GateMDR|dataOut[6]~54_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[6]~9_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[6]~54_combout\,
	combout => \GateMDR|dataOut[6]~55_combout\);

-- Location: LCFF_X16_Y5_N29
\instruction_register|internal[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[6]~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(6));

-- Location: LCFF_X17_Y5_N19
\inst4|ram[4][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][4]~regout\);

-- Location: LCCOMB_X17_Y5_N18
\inst4|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux11~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][4]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][4]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[4][4]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux11~0_combout\);

-- Location: LCFF_X16_Y5_N1
\inst4|ram[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][4]~regout\);

-- Location: LCCOMB_X16_Y5_N30
\inst4|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux11~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux11~0_combout\ & (\inst4|ram[7][4]~regout\)) # (!\inst4|Mux11~0_combout\ & ((\inst4|ram[5][4]~regout\))))) # (!\instruction_register|internal\(6) & (((\inst4|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[7][4]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|Mux11~0_combout\,
	datad => \inst4|ram[5][4]~regout\,
	combout => \inst4|Mux11~1_combout\);

-- Location: LCCOMB_X16_Y5_N24
\inst4|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux11~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux11~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux11~3_combout\,
	datab => \inst4|Mux11~1_combout\,
	datad => \instruction_register|internal\(8),
	combout => \inst4|Mux11~4_combout\);

-- Location: LCFF_X18_Y4_N1
\inst4|SR1out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst4|Mux11~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(4));

-- Location: LCCOMB_X19_Y5_N14
\GateMDR|dataOut[4]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~60_combout\ = (\Control|ALUK\(0) & (\inst4|SR1out\(4) & ((\SR2Mux|Selector11~0_combout\) # (\Control|ALUK\(1))))) # (!\Control|ALUK\(0) & (((!\inst4|SR1out\(4) & \Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector11~0_combout\,
	datab => \Control|ALUK\(0),
	datac => \inst4|SR1out\(4),
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[4]~60_combout\);

-- Location: LCCOMB_X19_Y5_N2
\GateMDR|dataOut[4]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~85_combout\ = (\Control|WideOr11~combout\ & (((\Control|ALUK\(0)) # (\Control|ALUK\(1))) # (!\ALU|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~8_combout\,
	datab => \Control|ALUK\(0),
	datac => \Control|WideOr11~combout\,
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[4]~85_combout\);

-- Location: LCCOMB_X19_Y5_N4
\GateMDR|dataOut[4]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~61_combout\ = (\GateMDR|dataOut[4]~59_combout\ & (\inst2|Data_CPU[4]~11_combout\ & ((\GateMDR|dataOut[4]~60_combout\) # (!\GateMDR|dataOut[4]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[4]~59_combout\,
	datab => \inst2|Data_CPU[4]~11_combout\,
	datac => \GateMDR|dataOut[4]~60_combout\,
	datad => \GateMDR|dataOut[4]~85_combout\,
	combout => \GateMDR|dataOut[4]~61_combout\);

-- Location: LCCOMB_X18_Y5_N16
\GateMDR|dataOut[4]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[4]~62_combout\ = (\GateMDR|dataOut[4]~61_combout\) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[4]~61_combout\,
	combout => \GateMDR|dataOut[4]~62_combout\);

-- Location: LCFF_X17_Y4_N5
\instruction_register|internal[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(4));

-- Location: LCCOMB_X17_Y4_N12
\SR2Mux|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector10~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(5))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(5),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector10~0_combout\);

-- Location: LCCOMB_X18_Y5_N20
\inst3|dataOut[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[5]~8_combout\ = (\inst4|SR1out\(5) & (\Control|ALUK\(0) & ((\SR2Mux|Selector10~0_combout\) # (\Control|ALUK\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(5),
	datab => \SR2Mux|Selector10~0_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[5]~8_combout\);

-- Location: LCCOMB_X18_Y5_N22
\inst3|dataOut[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|dataOut[5]~9_combout\ = (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\inst4|SR1out\(5))) # (!\Control|ALUK\(1) & ((\ALU|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(5),
	datab => \ALU|Add0~10_combout\,
	datac => \Control|ALUK\(0),
	datad => \Control|ALUK\(1),
	combout => \inst3|dataOut[5]~9_combout\);

-- Location: LCCOMB_X18_Y5_N12
\GateMDR|dataOut[5]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~57_combout\ = (\GateMDR|dataOut[5]~56_combout\ & (((\inst3|dataOut[5]~8_combout\) # (\inst3|dataOut[5]~9_combout\)) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[5]~56_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst3|dataOut[5]~8_combout\,
	datad => \inst3|dataOut[5]~9_combout\,
	combout => \GateMDR|dataOut[5]~57_combout\);

-- Location: LCCOMB_X18_Y5_N14
\GateMDR|dataOut[5]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~58_combout\ = ((\inst2|Data_CPU[5]~10_combout\ & \GateMDR|dataOut[5]~57_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[5]~10_combout\,
	datac => \GateMDR|dataOut[15]~18_combout\,
	datad => \GateMDR|dataOut[5]~57_combout\,
	combout => \GateMDR|dataOut[5]~58_combout\);

-- Location: LCCOMB_X18_Y1_N0
\inst12|regOp:ram[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[5]~feeder_combout\ = \GateMDR|dataOut[5]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[5]~58_combout\,
	combout => \inst12|regOp:ram[5]~feeder_combout\);

-- Location: LCFF_X18_Y1_N1
\inst12|regOp:ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[5]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[5]~regout\);

-- Location: LCFF_X18_Y1_N31
\inst12|regOp:ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[4]~62_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[4]~regout\);

-- Location: LCFF_X18_Y1_N27
\inst12|regOp:ram[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[7]~52_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[7]~regout\);

-- Location: LCCOMB_X18_Y1_N30
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst12|regOp:ram[6]~regout\ & (\inst12|regOp:ram[5]~regout\ & (\inst12|regOp:ram[4]~regout\ & \inst12|regOp:ram[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[6]~regout\,
	datab => \inst12|regOp:ram[5]~regout\,
	datac => \inst12|regOp:ram[4]~regout\,
	datad => \inst12|regOp:ram[7]~regout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y3_N28
\inst2|Data_CPU[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[14]~1_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(14))) # (!\inst2|Equal0~4_combout\ & ((\Data~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(14),
	datab => \Data~1\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[14]~1_combout\);

-- Location: LCFF_X19_Y3_N15
\MDR|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[14]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[14]~regout\);

-- Location: LCCOMB_X19_Y3_N14
\GateMDR|dataOut[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~20_combout\ = (\Control|State.LoadIR~regout\ & (\MDR|regOp:ram[14]~regout\ & ((\PC|regOp:ram[14]~regout\) # (!\Control|State.PCtoMAR~regout\)))) # (!\Control|State.LoadIR~regout\ & ((\PC|regOp:ram[14]~regout\) # 
-- ((!\Control|State.PCtoMAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LoadIR~regout\,
	datab => \PC|regOp:ram[14]~regout\,
	datac => \MDR|regOp:ram[14]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[14]~20_combout\);

-- Location: LCCOMB_X17_Y4_N22
\SR2Mux|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector1~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(14))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(14),
	datab => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y4_N26
\SR2Mux|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector2~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(13))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(13),
	datac => \instruction_register|internal\(4),
	datad => \Control|SR2MUX~1_combout\,
	combout => \SR2Mux|Selector2~0_combout\);

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

-- Location: LCCOMB_X15_Y3_N4
\inst2|Data_CPU[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[12]~3_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(12)))) # (!\inst2|Equal0~4_combout\ & (\Data~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~3\,
	datab => \Switches~combout\(12),
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[12]~3_combout\);

-- Location: LCCOMB_X18_Y4_N24
\ALU|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~24_combout\ = ((\SR2Mux|Selector3~0_combout\ $ (\inst4|SR1out\(12) $ (!\ALU|Add0~23\)))) # (GND)
-- \ALU|Add0~25\ = CARRY((\SR2Mux|Selector3~0_combout\ & ((\inst4|SR1out\(12)) # (!\ALU|Add0~23\))) # (!\SR2Mux|Selector3~0_combout\ & (\inst4|SR1out\(12) & !\ALU|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector3~0_combout\,
	datab => \inst4|SR1out\(12),
	datad => VCC,
	cin => \ALU|Add0~23\,
	combout => \ALU|Add0~24_combout\,
	cout => \ALU|Add0~25\);

-- Location: LCCOMB_X19_Y3_N4
\GateMDR|dataOut[12]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~31_combout\ = (\inst4|SR1out\(12) & ((\SR2Mux|Selector3~0_combout\) # (\Control|ALUK\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SR2Mux|Selector3~0_combout\,
	datab => \inst4|SR1out\(12),
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[12]~31_combout\);

-- Location: LCCOMB_X19_Y3_N28
\GateMDR|dataOut[12]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~32_combout\ = (\Control|ALUK\(0) & (((\GateMDR|dataOut[12]~31_combout\)))) # (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\GateMDR|dataOut[12]~31_combout\))) # (!\Control|ALUK\(1) & (\ALU|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \ALU|Add0~24_combout\,
	datac => \GateMDR|dataOut[12]~31_combout\,
	datad => \Control|ALUK\(0),
	combout => \GateMDR|dataOut[12]~32_combout\);

-- Location: LCCOMB_X19_Y3_N26
\GateMDR|dataOut[12]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~33_combout\ = (\GateMDR|dataOut[12]~30_combout\ & ((\GateMDR|dataOut[12]~32_combout\) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[12]~30_combout\,
	datac => \Control|WideOr11~combout\,
	datad => \GateMDR|dataOut[12]~32_combout\,
	combout => \GateMDR|dataOut[12]~33_combout\);

-- Location: LCCOMB_X19_Y3_N6
\GateMDR|dataOut[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~34_combout\ = ((\inst2|Data_CPU[12]~3_combout\ & \GateMDR|dataOut[12]~33_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~18_combout\,
	datac => \inst2|Data_CPU[12]~3_combout\,
	datad => \GateMDR|dataOut[12]~33_combout\,
	combout => \GateMDR|dataOut[12]~34_combout\);

-- Location: LCFF_X17_Y3_N19
\inst4|ram[3][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][12]~regout\);

-- Location: LCFF_X17_Y3_N13
\inst4|ram[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[2][12]~regout\);

-- Location: LCCOMB_X17_Y3_N18
\inst4|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~3_combout\ = (\inst4|Mux3~2_combout\ & (((\inst4|ram[3][12]~regout\)) # (!\instruction_register|internal\(7)))) # (!\inst4|Mux3~2_combout\ & (\instruction_register|internal\(7) & ((\inst4|ram[2][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux3~2_combout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[3][12]~regout\,
	datad => \inst4|ram[2][12]~regout\,
	combout => \inst4|Mux3~3_combout\);

-- Location: LCFF_X18_Y6_N3
\inst4|ram[4][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[4][12]~regout\);

-- Location: LCCOMB_X18_Y6_N2
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\instruction_register|internal\(6) & (((\instruction_register|internal\(7))))) # (!\instruction_register|internal\(6) & ((\instruction_register|internal\(7) & (\inst4|ram[6][12]~regout\)) # (!\instruction_register|internal\(7) & 
-- ((\inst4|ram[4][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[6][12]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[4][12]~regout\,
	datad => \instruction_register|internal\(7),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y3_N30
\inst4|ram[7][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][12]~feeder_combout\ = \GateMDR|dataOut[12]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[12]~34_combout\,
	combout => \inst4|ram[7][12]~feeder_combout\);

-- Location: LCFF_X20_Y3_N31
\inst4|ram[7][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][12]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][12]~regout\);

-- Location: LCCOMB_X19_Y6_N0
\inst4|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~1_combout\ = (\instruction_register|internal\(6) & ((\inst4|Mux3~0_combout\ & ((\inst4|ram[7][12]~regout\))) # (!\inst4|Mux3~0_combout\ & (\inst4|ram[5][12]~regout\)))) # (!\instruction_register|internal\(6) & (((\inst4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[5][12]~regout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|Mux3~0_combout\,
	datad => \inst4|ram[7][12]~regout\,
	combout => \inst4|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y6_N28
\inst4|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux3~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(8),
	datac => \inst4|Mux3~3_combout\,
	datad => \inst4|Mux3~1_combout\,
	combout => \inst4|Mux3~4_combout\);

-- Location: LCFF_X19_Y6_N29
\inst4|SR1out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(12));

-- Location: LCCOMB_X18_Y4_N26
\ALU|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~26_combout\ = (\inst4|SR1out\(13) & ((\SR2Mux|Selector2~0_combout\ & (\ALU|Add0~25\ & VCC)) # (!\SR2Mux|Selector2~0_combout\ & (!\ALU|Add0~25\)))) # (!\inst4|SR1out\(13) & ((\SR2Mux|Selector2~0_combout\ & (!\ALU|Add0~25\)) # 
-- (!\SR2Mux|Selector2~0_combout\ & ((\ALU|Add0~25\) # (GND)))))
-- \ALU|Add0~27\ = CARRY((\inst4|SR1out\(13) & (!\SR2Mux|Selector2~0_combout\ & !\ALU|Add0~25\)) # (!\inst4|SR1out\(13) & ((!\ALU|Add0~25\) # (!\SR2Mux|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(13),
	datab => \SR2Mux|Selector2~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~25\,
	combout => \ALU|Add0~26_combout\,
	cout => \ALU|Add0~27\);

-- Location: LCCOMB_X18_Y4_N28
\ALU|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~28_combout\ = ((\inst4|SR1out\(14) $ (\SR2Mux|Selector1~0_combout\ $ (!\ALU|Add0~27\)))) # (GND)
-- \ALU|Add0~29\ = CARRY((\inst4|SR1out\(14) & ((\SR2Mux|Selector1~0_combout\) # (!\ALU|Add0~27\))) # (!\inst4|SR1out\(14) & (\SR2Mux|Selector1~0_combout\ & !\ALU|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR1out\(14),
	datab => \SR2Mux|Selector1~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~27\,
	combout => \ALU|Add0~28_combout\,
	cout => \ALU|Add0~29\);

-- Location: LCCOMB_X18_Y3_N26
\GateMDR|dataOut[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~22_combout\ = (\Control|ALUK\(0) & (\GateMDR|dataOut[14]~21_combout\)) # (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\GateMDR|dataOut[14]~21_combout\)) # (!\Control|ALUK\(1) & ((\ALU|Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[14]~21_combout\,
	datab => \Control|ALUK\(1),
	datac => \ALU|Add0~28_combout\,
	datad => \Control|ALUK\(0),
	combout => \GateMDR|dataOut[14]~22_combout\);

-- Location: LCCOMB_X18_Y3_N28
\GateMDR|dataOut[14]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~23_combout\ = (\GateMDR|dataOut[14]~20_combout\ & ((\GateMDR|dataOut[14]~22_combout\) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[14]~20_combout\,
	datad => \GateMDR|dataOut[14]~22_combout\,
	combout => \GateMDR|dataOut[14]~23_combout\);

-- Location: LCCOMB_X18_Y3_N10
\GateMDR|dataOut[14]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~24_combout\ = ((\inst2|Data_CPU[14]~1_combout\ & \GateMDR|dataOut[14]~23_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GateMDR|dataOut[15]~18_combout\,
	datac => \inst2|Data_CPU[14]~1_combout\,
	datad => \GateMDR|dataOut[14]~23_combout\,
	combout => \GateMDR|dataOut[14]~24_combout\);

-- Location: LCCOMB_X19_Y3_N30
\inst12|regOp:ram[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[14]~feeder_combout\ = \GateMDR|dataOut[14]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[14]~24_combout\,
	combout => \inst12|regOp:ram[14]~feeder_combout\);

-- Location: LCFF_X19_Y3_N31
\inst12|regOp:ram[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[14]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[14]~regout\);

-- Location: LCFF_X19_Y3_N21
\inst12|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[13]~regout\);

-- Location: LCFF_X19_Y3_N7
\inst12|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[12]~regout\);

-- Location: LCCOMB_X19_Y3_N20
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst12|regOp:ram[15]~regout\ & (\inst12|regOp:ram[14]~regout\ & (\inst12|regOp:ram[13]~regout\ & \inst12|regOp:ram[12]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[15]~regout\,
	datab => \inst12|regOp:ram[14]~regout\,
	datac => \inst12|regOp:ram[13]~regout\,
	datad => \inst12|regOp:ram[12]~regout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y1_N28
\inst12|regOp:ram[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[11]~feeder_combout\ = \GateMDR|dataOut[11]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[11]~39_combout\,
	combout => \inst12|regOp:ram[11]~feeder_combout\);

-- Location: LCFF_X18_Y1_N29
\inst12|regOp:ram[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[11]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[11]~regout\);

-- Location: LCFF_X18_Y1_N19
\inst12|regOp:ram[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[9]~45_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[9]~regout\);

-- Location: LCCOMB_X17_Y2_N0
\inst12|regOp:ram[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[10]~feeder_combout\ = \GateMDR|dataOut[10]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[10]~42_combout\,
	combout => \inst12|regOp:ram[10]~feeder_combout\);

-- Location: LCFF_X17_Y2_N1
\inst12|regOp:ram[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[10]~regout\);

-- Location: LCCOMB_X18_Y1_N18
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst12|regOp:ram[8]~regout\ & (\inst12|regOp:ram[11]~regout\ & (\inst12|regOp:ram[9]~regout\ & \inst12|regOp:ram[10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|regOp:ram[8]~regout\,
	datab => \inst12|regOp:ram[11]~regout\,
	datac => \inst12|regOp:ram[9]~regout\,
	datad => \inst12|regOp:ram[10]~regout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y1_N12
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~2_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y3_N10
\inst2|Data_CPU[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[13]~2_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(13))) # (!\inst2|Equal0~4_combout\ & ((\Data~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(13),
	datab => \Data~2\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[13]~2_combout\);

-- Location: LCFF_X19_Y3_N25
\MDR|regOp:ram[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[13]~regout\);

-- Location: LCCOMB_X19_Y3_N2
\GateMDR|dataOut[13]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~25_combout\ = (\Control|State.PCtoMAR~regout\ & (\PC|regOp:ram[13]~regout\ & ((\MDR|regOp:ram[13]~regout\) # (!\Control|State.LoadIR~regout\)))) # (!\Control|State.PCtoMAR~regout\ & (((\MDR|regOp:ram[13]~regout\) # 
-- (!\Control|State.LoadIR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.PCtoMAR~regout\,
	datab => \PC|regOp:ram[13]~regout\,
	datac => \MDR|regOp:ram[13]~regout\,
	datad => \Control|State.LoadIR~regout\,
	combout => \GateMDR|dataOut[13]~25_combout\);

-- Location: LCFF_X20_Y3_N7
\inst4|ram[7][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][13]~regout\);

-- Location: LCFF_X20_Y3_N29
\inst4|ram[5][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][13]~regout\);

-- Location: LCCOMB_X20_Y3_N6
\inst4|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~1_combout\ = (\inst4|Mux2~0_combout\ & (((\inst4|ram[7][13]~regout\)) # (!\instruction_register|internal\(6)))) # (!\inst4|Mux2~0_combout\ & (\instruction_register|internal\(6) & ((\inst4|ram[5][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux2~0_combout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[7][13]~regout\,
	datad => \inst4|ram[5][13]~regout\,
	combout => \inst4|Mux2~1_combout\);

-- Location: LCFF_X18_Y3_N29
\inst4|ram[3][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[3][13]~regout\);

-- Location: LCFF_X18_Y2_N1
\inst4|ram[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst4|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[1][13]~regout\);

-- Location: LCCOMB_X18_Y2_N0
\inst4|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~2_combout\ = (\instruction_register|internal\(7) & (((\instruction_register|internal\(6))))) # (!\instruction_register|internal\(7) & ((\instruction_register|internal\(6) & ((\inst4|ram[1][13]~regout\))) # (!\instruction_register|internal\(6) 
-- & (\inst4|ram[0][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[0][13]~regout\,
	datab => \instruction_register|internal\(7),
	datac => \inst4|ram[1][13]~regout\,
	datad => \instruction_register|internal\(6),
	combout => \inst4|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y3_N14
\inst4|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~3_combout\ = (\instruction_register|internal\(7) & ((\inst4|Mux2~2_combout\ & ((\inst4|ram[3][13]~regout\))) # (!\inst4|Mux2~2_combout\ & (\inst4|ram[2][13]~regout\)))) # (!\instruction_register|internal\(7) & (((\inst4|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|ram[2][13]~regout\,
	datab => \inst4|ram[3][13]~regout\,
	datac => \instruction_register|internal\(7),
	datad => \inst4|Mux2~2_combout\,
	combout => \inst4|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y3_N0
\inst4|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~4_combout\ = (\instruction_register|internal\(8) & (\inst4|Mux2~1_combout\)) # (!\instruction_register|internal\(8) & ((\inst4|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mux2~1_combout\,
	datac => \instruction_register|internal\(8),
	datad => \inst4|Mux2~3_combout\,
	combout => \inst4|Mux2~4_combout\);

-- Location: LCFF_X21_Y3_N1
\inst4|SR1out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(13));

-- Location: LCCOMB_X19_Y3_N0
\GateMDR|dataOut[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~26_combout\ = (\inst4|SR1out\(13) & ((\SR2Mux|Selector2~0_combout\) # (\Control|ALUK\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR1out\(13),
	datac => \SR2Mux|Selector2~0_combout\,
	datad => \Control|ALUK\(1),
	combout => \GateMDR|dataOut[13]~26_combout\);

-- Location: LCCOMB_X19_Y3_N10
\GateMDR|dataOut[13]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~27_combout\ = (\Control|ALUK\(0) & (((\GateMDR|dataOut[13]~26_combout\)))) # (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & ((!\GateMDR|dataOut[13]~26_combout\))) # (!\Control|ALUK\(1) & (\ALU|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|ALUK\(1),
	datab => \Control|ALUK\(0),
	datac => \ALU|Add0~26_combout\,
	datad => \GateMDR|dataOut[13]~26_combout\,
	combout => \GateMDR|dataOut[13]~27_combout\);

-- Location: LCCOMB_X19_Y3_N12
\GateMDR|dataOut[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~28_combout\ = (\GateMDR|dataOut[13]~25_combout\ & ((\GateMDR|dataOut[13]~27_combout\) # (!\Control|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|WideOr11~combout\,
	datac => \GateMDR|dataOut[13]~25_combout\,
	datad => \GateMDR|dataOut[13]~27_combout\,
	combout => \GateMDR|dataOut[13]~28_combout\);

-- Location: LCCOMB_X19_Y3_N24
\GateMDR|dataOut[13]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~29_combout\ = ((\inst2|Data_CPU[13]~2_combout\ & \GateMDR|dataOut[13]~28_combout\)) # (!\GateMDR|dataOut[15]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~18_combout\,
	datab => \inst2|Data_CPU[13]~2_combout\,
	datad => \GateMDR|dataOut[13]~28_combout\,
	combout => \GateMDR|dataOut[13]~29_combout\);

-- Location: LCFF_X19_Y4_N5
\instruction_register|internal[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[13]~29_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(13));

-- Location: LCFF_X19_Y4_N3
\instruction_register|internal[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadIR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|internal\(12));

-- Location: LCCOMB_X19_Y4_N28
\Control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector0~0_combout\ = (\Control|State.Decode~regout\ & (!\instruction_register|internal\(13) & \instruction_register|internal\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.Decode~regout\,
	datac => \instruction_register|internal\(13),
	datad => \instruction_register|internal\(12),
	combout => \Control|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Control|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector10~0_combout\ = (!\instruction_register|internal\(14) & (!\instruction_register|internal\(15) & \Control|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(14),
	datab => \instruction_register|internal\(15),
	datad => \Control|Selector0~0_combout\,
	combout => \Control|Selector10~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Control|Next_state.add0_359\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.add0_359~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Selector10~0_combout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.add0_359~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.add0_359~combout\,
	datac => \Control|Selector10~0_combout\,
	datad => \Control|WideNor0~clkctrl_outclk\,
	combout => \Control|Next_state.add0_359~combout\);

-- Location: LCFF_X19_Y4_N27
\Control|State.add0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.add0_359~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.add0~regout\);

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

-- Location: LCCOMB_X22_Y4_N14
\GateMDR|dataOut[15]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~74_combout\ = (!\Control|State.PCtoMAR~regout\ & !\Control|State.LoadIR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|State.PCtoMAR~regout\,
	datad => \Control|State.LoadIR~regout\,
	combout => \GateMDR|dataOut[15]~74_combout\);

-- Location: LCCOMB_X22_Y4_N22
\Control|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector25~1_combout\ = (\Control|Selector25~0_combout\ & (\Run~combout\ & (\GateMDR|dataOut[15]~74_combout\ & \Control|Mem_OE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Selector25~0_combout\,
	datab => \Run~combout\,
	datac => \GateMDR|dataOut[15]~74_combout\,
	datad => \Control|Mem_OE~0_combout\,
	combout => \Control|Selector25~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\Control|Next_state.Halted_423\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.Halted_423~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Selector25~1_combout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.Halted_423~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.Halted_423~combout\,
	datac => \Control|WideNor0~clkctrl_outclk\,
	datad => \Control|Selector25~1_combout\,
	combout => \Control|Next_state.Halted_423~combout\);

-- Location: LCCOMB_X22_Y4_N16
\Control|State.Halted~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|State.Halted~0_combout\ = !\Control|Next_state.Halted_423~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Control|Next_state.Halted_423~combout\,
	combout => \Control|State.Halted~0_combout\);

-- Location: LCFF_X22_Y4_N17
\Control|State.Halted\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|State.Halted~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.Halted~regout\);

-- Location: LCCOMB_X22_Y4_N8
\Control|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector19~0_combout\ = (!\Run~combout\ & !\Control|State.Halted~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~combout\,
	datac => \Control|State.Halted~regout\,
	combout => \Control|Selector19~0_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Control|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Mux0~0_combout\ = (\instruction_register|internal\(14) & ((\instruction_register|internal\(15)) # ((!\instruction_register|internal\(12) & !\instruction_register|internal\(13))))) # (!\instruction_register|internal\(14) & 
-- ((\instruction_register|internal\(13)) # ((!\instruction_register|internal\(12) & \instruction_register|internal\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(14),
	datab => \instruction_register|internal\(12),
	datac => \instruction_register|internal\(15),
	datad => \instruction_register|internal\(13),
	combout => \Control|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\Control|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector19~1_combout\ = (\Control|State.add0~regout\) # ((\Control|Selector19~0_combout\) # ((\Control|State.Decode~regout\ & \Control|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.Decode~regout\,
	datab => \Control|State.add0~regout\,
	datac => \Control|Selector19~0_combout\,
	datad => \Control|Mux0~0_combout\,
	combout => \Control|Selector19~1_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Control|Next_state.PCtoMAR_399\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.PCtoMAR_399~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Selector19~1_combout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.PCtoMAR_399~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.PCtoMAR_399~combout\,
	datac => \Control|WideNor0~clkctrl_outclk\,
	datad => \Control|Selector19~1_combout\,
	combout => \Control|Next_state.PCtoMAR_399~combout\);

-- Location: LCFF_X22_Y4_N21
\Control|State.PCtoMAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.PCtoMAR_399~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.PCtoMAR~regout\);

-- Location: LCCOMB_X22_Y4_N4
\Control|Next_state.LoadMDR_391\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.LoadMDR_391~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|State.PCtoMAR~regout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.LoadMDR_391~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|Next_state.LoadMDR_391~combout\,
	datac => \Control|State.PCtoMAR~regout\,
	datad => \Control|WideNor0~clkctrl_outclk\,
	combout => \Control|Next_state.LoadMDR_391~combout\);

-- Location: LCFF_X22_Y4_N5
\Control|State.LoadMDR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.LoadMDR_391~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.LoadMDR~regout\);

-- Location: LCCOMB_X22_Y4_N28
\Control|Mem_OE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Mem_OE~0_combout\ = (!\Control|State.LoadMDR~regout\ & !\Control|State.LoadMDR_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control|State.LoadMDR~regout\,
	datad => \Control|State.LoadMDR_2~regout\,
	combout => \Control|Mem_OE~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Control|Next_state.Decode_367\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.Decode_367~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|State.LoadIR~regout\)) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Next_state.Decode_367~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.LoadIR~regout\,
	datac => \Control|WideNor0~clkctrl_outclk\,
	datad => \Control|Next_state.Decode_367~combout\,
	combout => \Control|Next_state.Decode_367~combout\);

-- Location: LCFF_X22_Y4_N25
\Control|State.Decode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Control|Next_state.Decode_367~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.Decode~regout\);

-- Location: LCCOMB_X22_Y4_N12
\Control|Next_state.PauseIR1_415\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.PauseIR1_415~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|State.PauseIR1~regout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.PauseIR1_415~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.PauseIR1_415~combout\,
	datac => \Control|State.PauseIR1~regout\,
	datad => \Control|WideNor0~clkctrl_outclk\,
	combout => \Control|Next_state.PauseIR1_415~combout\);

-- Location: LCFF_X22_Y4_N13
\Control|State.PauseIR1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.PauseIR1_415~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.PauseIR1~regout\);

-- Location: LCCOMB_X22_Y4_N10
\Control|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector25~0_combout\ = (!\Control|State.add0~regout\ & (!\Control|State.Decode~regout\ & !\Control|State.PauseIR1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|State.add0~regout\,
	datac => \Control|State.Decode~regout\,
	datad => \Control|State.PauseIR1~regout\,
	combout => \Control|Selector25~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Control|WideNor0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|WideNor0~combout\ = (((!\Control|Selector25~0_combout\) # (!\GateMDR|dataOut[15]~74_combout\)) # (!\Control|Mem_OE~0_combout\)) # (!\Control|State.Halted~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.Halted~regout\,
	datab => \Control|Mem_OE~0_combout\,
	datac => \GateMDR|dataOut[15]~74_combout\,
	datad => \Control|Selector25~0_combout\,
	combout => \Control|WideNor0~combout\);

-- Location: CLKCTRL_G15
\Control|WideNor0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Control|WideNor0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Control|WideNor0~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y4_N22
\Control|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Selector0~1_combout\ = (!\instruction_register|internal\(14) & (\instruction_register|internal\(15) & \Control|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|internal\(14),
	datab => \instruction_register|internal\(15),
	datad => \Control|Selector0~0_combout\,
	combout => \Control|Selector0~1_combout\);

-- Location: LCCOMB_X19_Y1_N4
\Control|Next_state.not0_343\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|Next_state.not0_343~combout\ = (GLOBAL(\Control|WideNor0~clkctrl_outclk\) & ((\Control|Selector0~1_combout\))) # (!GLOBAL(\Control|WideNor0~clkctrl_outclk\) & (\Control|Next_state.not0_343~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control|Next_state.not0_343~combout\,
	datac => \Control|WideNor0~clkctrl_outclk\,
	datad => \Control|Selector0~1_combout\,
	combout => \Control|Next_state.not0_343~combout\);

-- Location: LCFF_X19_Y1_N5
\Control|State.not0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \Control|Next_state.not0_343~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Control|State.not0~regout\);

-- Location: LCCOMB_X18_Y3_N2
\Control|ALUK[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Control|ALUK\(1) = (GLOBAL(\Control|WideOr11~clkctrl_outclk\) & ((\Control|State.not0~regout\))) # (!GLOBAL(\Control|WideOr11~clkctrl_outclk\) & (\Control|ALUK\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~clkctrl_outclk\,
	datab => \Control|ALUK\(1),
	datad => \Control|State.not0~regout\,
	combout => \Control|ALUK\(1));

-- Location: LCCOMB_X20_Y3_N8
\inst4|ram[5][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[5][15]~feeder_combout\ = \GateMDR|dataOut[15]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~19_combout\,
	combout => \inst4|ram[5][15]~feeder_combout\);

-- Location: LCFF_X20_Y3_N9
\inst4|ram[5][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[5][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[5][15]~regout\);

-- Location: LCCOMB_X20_Y3_N18
\inst4|ram[7][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ram[7][15]~feeder_combout\ = \GateMDR|dataOut[15]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[15]~19_combout\,
	combout => \inst4|ram[7][15]~feeder_combout\);

-- Location: LCFF_X20_Y3_N19
\inst4|ram[7][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|ram[7][15]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst4|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ram[7][15]~regout\);

-- Location: LCCOMB_X20_Y3_N14
\inst4|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (\inst4|Mux0~0_combout\ & (((\inst4|ram[7][15]~regout\)) # (!\instruction_register|internal\(6)))) # (!\inst4|Mux0~0_combout\ & (\instruction_register|internal\(6) & (\inst4|ram[5][15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux0~0_combout\,
	datab => \instruction_register|internal\(6),
	datac => \inst4|ram[5][15]~regout\,
	datad => \inst4|ram[7][15]~regout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y3_N4
\inst4|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~4_combout\ = (\instruction_register|internal\(8) & ((\inst4|Mux0~1_combout\))) # (!\instruction_register|internal\(8) & (\inst4|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mux0~3_combout\,
	datac => \instruction_register|internal\(8),
	datad => \inst4|Mux0~1_combout\,
	combout => \inst4|Mux0~4_combout\);

-- Location: LCFF_X21_Y3_N5
\inst4|SR1out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|SR1out\(15));

-- Location: LCCOMB_X19_Y4_N24
\SR2Mux|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR2Mux|Selector0~0_combout\ = (\Control|SR2MUX~1_combout\ & (\inst4|SR2out\(15))) # (!\Control|SR2MUX~1_combout\ & ((\instruction_register|internal\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|SR2out\(15),
	datab => \Control|SR2MUX~1_combout\,
	datad => \instruction_register|internal\(4),
	combout => \SR2Mux|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y4_N30
\ALU|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALU|Add0~30_combout\ = \inst4|SR1out\(15) $ (\ALU|Add0~29\ $ (\SR2Mux|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|SR1out\(15),
	datad => \SR2Mux|Selector0~0_combout\,
	cin => \ALU|Add0~29\,
	combout => \ALU|Add0~30_combout\);

-- Location: LCCOMB_X18_Y3_N6
\GateMDR|dataOut[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~16_combout\ = (\Control|ALUK\(0) & (\GateMDR|dataOut[15]~15_combout\)) # (!\Control|ALUK\(0) & ((\Control|ALUK\(1) & (!\GateMDR|dataOut[15]~15_combout\)) # (!\Control|ALUK\(1) & ((\ALU|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~15_combout\,
	datab => \Control|ALUK\(1),
	datac => \ALU|Add0~30_combout\,
	datad => \Control|ALUK\(0),
	combout => \GateMDR|dataOut[15]~16_combout\);

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

-- Location: LCCOMB_X18_Y3_N8
\inst2|Data_CPU[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[15]~0_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(15)))) # (!\inst2|Equal0~4_combout\ & (\Data~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~0\,
	datab => \Control|Mem_OE~0_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \Switches~combout\(15),
	combout => \inst2|Data_CPU[15]~0_combout\);

-- Location: LCCOMB_X18_Y3_N4
\GateMDR|dataOut[15]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[15]~86_combout\ = (\inst2|Data_CPU[15]~0_combout\ & (\GateMDR|dataOut[15]~14_combout\ & ((\GateMDR|dataOut[15]~16_combout\) # (!\Control|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GateMDR|dataOut[15]~16_combout\,
	datab => \Control|WideOr11~combout\,
	datac => \inst2|Data_CPU[15]~0_combout\,
	datad => \GateMDR|dataOut[15]~14_combout\,
	combout => \GateMDR|dataOut[15]~86_combout\);

-- Location: LCCOMB_X18_Y3_N14
\GateMDR|dataOut[14]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[14]~87_combout\ = (\GateMDR|dataOut[14]~20_combout\ & (\inst2|Data_CPU[14]~1_combout\ & ((\GateMDR|dataOut[14]~22_combout\) # (!\Control|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[14]~20_combout\,
	datac => \inst2|Data_CPU[14]~1_combout\,
	datad => \GateMDR|dataOut[14]~22_combout\,
	combout => \GateMDR|dataOut[14]~87_combout\);

-- Location: LCCOMB_X19_Y3_N8
\GateMDR|dataOut[13]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[13]~88_combout\ = (\inst2|Data_CPU[13]~2_combout\ & (\GateMDR|dataOut[13]~25_combout\ & ((\GateMDR|dataOut[13]~27_combout\) # (!\Control|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \inst2|Data_CPU[13]~2_combout\,
	datac => \GateMDR|dataOut[13]~25_combout\,
	datad => \GateMDR|dataOut[13]~27_combout\,
	combout => \GateMDR|dataOut[13]~88_combout\);

-- Location: LCFF_X20_Y1_N25
\PC|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|regOp:ram[12]~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|regOp:ram[12]~regout\);

-- Location: LCFF_X19_Y3_N23
\MDR|regOp:ram[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[12]~34_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.LoadMDR_2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MDR|regOp:ram[12]~regout\);

-- Location: LCCOMB_X19_Y3_N22
\GateMDR|dataOut[12]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~30_combout\ = (\Control|State.LoadIR~regout\ & (\MDR|regOp:ram[12]~regout\ & ((\PC|regOp:ram[12]~regout\) # (!\Control|State.PCtoMAR~regout\)))) # (!\Control|State.LoadIR~regout\ & ((\PC|regOp:ram[12]~regout\) # 
-- ((!\Control|State.PCtoMAR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|State.LoadIR~regout\,
	datab => \PC|regOp:ram[12]~regout\,
	datac => \MDR|regOp:ram[12]~regout\,
	datad => \Control|State.PCtoMAR~regout\,
	combout => \GateMDR|dataOut[12]~30_combout\);

-- Location: LCCOMB_X19_Y3_N18
\GateMDR|dataOut[12]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[12]~89_combout\ = (\GateMDR|dataOut[12]~30_combout\ & (\inst2|Data_CPU[12]~3_combout\ & ((\GateMDR|dataOut[12]~32_combout\) # (!\Control|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \GateMDR|dataOut[12]~30_combout\,
	datac => \inst2|Data_CPU[12]~3_combout\,
	datad => \GateMDR|dataOut[12]~32_combout\,
	combout => \GateMDR|dataOut[12]~89_combout\);

-- Location: LCCOMB_X19_Y4_N14
\GateMDR|dataOut[11]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[11]~90_combout\ = (\inst2|Data_CPU[11]~4_combout\ & (\GateMDR|dataOut[11]~35_combout\ & ((\GateMDR|dataOut[11]~37_combout\) # (!\Control|WideOr11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control|WideOr11~combout\,
	datab => \inst2|Data_CPU[11]~4_combout\,
	datac => \GateMDR|dataOut[11]~37_combout\,
	datad => \GateMDR|dataOut[11]~35_combout\,
	combout => \GateMDR|dataOut[11]~90_combout\);

-- Location: LCCOMB_X20_Y4_N10
\GateMDR|dataOut[10]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[10]~75_combout\ = (\inst2|Data_CPU[10]~5_combout\ & \GateMDR|dataOut[10]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Data_CPU[10]~5_combout\,
	datad => \GateMDR|dataOut[10]~41_combout\,
	combout => \GateMDR|dataOut[10]~75_combout\);

-- Location: LCCOMB_X20_Y2_N12
\inst2|Data_CPU[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[9]~6_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(9))) # (!\inst2|Equal0~4_combout\ & ((\Data~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(9),
	datab => \Data~6\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[9]~6_combout\);

-- Location: LCCOMB_X19_Y2_N16
\GateMDR|dataOut[9]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[9]~76_combout\ = (\inst2|Data_CPU[9]~6_combout\ & \GateMDR|dataOut[9]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[9]~6_combout\,
	datad => \GateMDR|dataOut[9]~44_combout\,
	combout => \GateMDR|dataOut[9]~76_combout\);

-- Location: LCCOMB_X18_Y5_N18
\GateMDR|dataOut[7]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[7]~77_combout\ = (\inst2|Data_CPU[7]~8_combout\ & \GateMDR|dataOut[7]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[7]~8_combout\,
	datad => \GateMDR|dataOut[7]~51_combout\,
	combout => \GateMDR|dataOut[7]~77_combout\);

-- Location: LCCOMB_X17_Y2_N6
\GateMDR|dataOut[6]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[6]~78_combout\ = (\GateMDR|dataOut[6]~54_combout\ & \inst2|Data_CPU[6]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GateMDR|dataOut[6]~54_combout\,
	datad => \inst2|Data_CPU[6]~9_combout\,
	combout => \GateMDR|dataOut[6]~78_combout\);

-- Location: LCCOMB_X18_Y5_N6
\GateMDR|dataOut[5]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[5]~79_combout\ = (\inst2|Data_CPU[5]~10_combout\ & \GateMDR|dataOut[5]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[5]~10_combout\,
	datad => \GateMDR|dataOut[5]~57_combout\,
	combout => \GateMDR|dataOut[5]~79_combout\);

-- Location: LCCOMB_X17_Y2_N2
\inst2|Data_CPU[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[3]~12_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(3))) # (!\inst2|Equal0~4_combout\ & ((\Data~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(3),
	datab => \Data~12\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[3]~12_combout\);

-- Location: LCCOMB_X16_Y5_N14
\GateMDR|dataOut[3]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[3]~80_combout\ = (\GateMDR|dataOut[3]~64_combout\ & \inst2|Data_CPU[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GateMDR|dataOut[3]~64_combout\,
	datad => \inst2|Data_CPU[3]~12_combout\,
	combout => \GateMDR|dataOut[3]~80_combout\);

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

-- Location: LCCOMB_X17_Y6_N14
\inst2|Data_CPU[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[2]~13_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & ((\Switches~combout\(2)))) # (!\inst2|Equal0~4_combout\ & (\Data~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data~13\,
	datab => \Switches~combout\(2),
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[2]~13_combout\);

-- Location: LCCOMB_X17_Y6_N0
\GateMDR|dataOut[2]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[2]~81_combout\ = (\inst2|Data_CPU[2]~13_combout\ & \GateMDR|dataOut[2]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Data_CPU[2]~13_combout\,
	datad => \GateMDR|dataOut[2]~67_combout\,
	combout => \GateMDR|dataOut[2]~81_combout\);

-- Location: LCCOMB_X21_Y5_N24
\inst2|Data_CPU[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Data_CPU[1]~14_combout\ = (\Control|Mem_OE~0_combout\) # ((\inst2|Equal0~4_combout\ & (\Switches~combout\(1))) # (!\inst2|Equal0~4_combout\ & ((\Data~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Switches~combout\(1),
	datab => \Data~14\,
	datac => \Control|Mem_OE~0_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Data_CPU[1]~14_combout\);

-- Location: LCCOMB_X19_Y5_N16
\GateMDR|dataOut[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[1]~82_combout\ = (\inst2|Data_CPU[1]~14_combout\ & (\inst3|dataOut[1]~16_combout\ & \GateMDR|dataOut[1]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Data_CPU[1]~14_combout\,
	datab => \inst3|dataOut[1]~16_combout\,
	datad => \GateMDR|dataOut[1]~69_combout\,
	combout => \GateMDR|dataOut[1]~82_combout\);

-- Location: LCCOMB_X17_Y2_N8
\GateMDR|dataOut[0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \GateMDR|dataOut[0]~83_combout\ = (\inst2|Data_CPU[0]~15_combout\ & \GateMDR|dataOut[0]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Data_CPU[0]~15_combout\,
	datad => \GateMDR|dataOut[0]~72_combout\,
	combout => \GateMDR|dataOut[0]~83_combout\);

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

-- Location: LCFF_X19_Y3_N5
\inst12|regOp:ram[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[15]~19_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[15]~regout\);

-- Location: LCFF_X18_Y1_N21
\inst12|regOp:ram[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[8]~49_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[8]~regout\);

-- Location: LCCOMB_X17_Y2_N30
\inst12|regOp:ram[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[6]~feeder_combout\ = \GateMDR|dataOut[6]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[6]~55_combout\,
	combout => \inst12|regOp:ram[6]~feeder_combout\);

-- Location: LCFF_X17_Y2_N31
\inst12|regOp:ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[6]~regout\);

-- Location: LCCOMB_X17_Y2_N16
\inst12|regOp:ram[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[3]~feeder_combout\ = \GateMDR|dataOut[3]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[3]~65_combout\,
	combout => \inst12|regOp:ram[3]~feeder_combout\);

-- Location: LCFF_X17_Y2_N17
\inst12|regOp:ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[3]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[3]~regout\);

-- Location: LCFF_X17_Y2_N27
\inst12|regOp:ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[2]~68_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[2]~regout\);

-- Location: LCCOMB_X17_Y2_N4
\inst12|regOp:ram[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|regOp:ram[1]~feeder_combout\ = \GateMDR|dataOut[1]~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GateMDR|dataOut[1]~70_combout\,
	combout => \inst12|regOp:ram[1]~feeder_combout\);

-- Location: LCFF_X17_Y2_N5
\inst12|regOp:ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst12|regOp:ram[1]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[1]~regout\);

-- Location: LCFF_X17_Y2_N15
\inst12|regOp:ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \GateMDR|dataOut[0]~73_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \Control|State.PCtoMAR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|regOp:ram[0]~regout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Control|Mem_OE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OE);

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(0));
END structure;


