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

-- DATE "04/17/2014 07:56:31"

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

ENTITY 	\2048\ IS
    PORT (
	newMove : OUT std_logic;
	psData : IN std_logic;
	ps2clk : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	VGA_clk : OUT std_logic;
	sync : OUT std_logic;
	blank : OUT std_logic;
	vs : OUT std_logic;
	hs : OUT std_logic;
	Blue : OUT std_logic_vector(9 DOWNTO 0);
	dir : OUT std_logic_vector(1 DOWNTO 0);
	freeTiles : OUT std_logic_vector(15 DOWNTO 0);
	Green : OUT std_logic_vector(9 DOWNTO 0);
	keyPressH : OUT std_logic_vector(6 DOWNTO 0);
	keyPressL : OUT std_logic_vector(6 DOWNTO 0);
	Red : OUT std_logic_vector(9 DOWNTO 0);
	moveAck : IN std_logic
	);
END \2048\;

-- Design Ports Information
-- newMove	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_clk	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sync	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- blank	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vs	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hs	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Blue[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dir[1]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dir[0]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- freeTiles[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Green[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressH[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyPressL[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Red[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- moveAck	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ps2clk	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- psData	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF \2048\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_newMove : std_logic;
SIGNAL ww_psData : std_logic;
SIGNAL ww_ps2clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_VGA_clk : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_blank : std_logic;
SIGNAL ww_vs : std_logic;
SIGNAL ww_hs : std_logic;
SIGNAL ww_Blue : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dir : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_freeTiles : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Green : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_keyPressH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_keyPressL : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Red : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_moveAck : std_logic;
SIGNAL \inst|inst2|fall_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst|inst|count[0]~8_combout\ : std_logic;
SIGNAL \inst|inst|count[0]~9\ : std_logic;
SIGNAL \inst|inst|count[1]~10_combout\ : std_logic;
SIGNAL \inst|inst|count[1]~11\ : std_logic;
SIGNAL \inst|inst|count[2]~12_combout\ : std_logic;
SIGNAL \inst|inst|count[2]~13\ : std_logic;
SIGNAL \inst|inst|count[3]~14_combout\ : std_logic;
SIGNAL \inst|inst|count[3]~15\ : std_logic;
SIGNAL \inst|inst|count[4]~16_combout\ : std_logic;
SIGNAL \inst|inst|count[4]~17\ : std_logic;
SIGNAL \inst|inst|count[5]~18_combout\ : std_logic;
SIGNAL \inst|inst|count[5]~19\ : std_logic;
SIGNAL \inst|inst|count[6]~20_combout\ : std_logic;
SIGNAL \inst|inst|count[6]~21\ : std_logic;
SIGNAL \inst|inst|count[7]~22_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~1_combout\ : std_logic;
SIGNAL \inst|inst2|reg2|Q~regout\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~regout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~combout\ : std_logic;
SIGNAL \inst|inst|temp~regout\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|temp~0_combout\ : std_logic;
SIGNAL \ps2clk~combout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~11\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~13\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~15\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal1~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~3_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~1\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~3\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vert_count~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~5\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~7\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~9\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~17\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|horiz_count~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|blank_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|blank_proc~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|Equal2~2_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|vs~regout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hsync_proc~1_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|hs~regout\ : std_logic;
SIGNAL \psData~combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|count[2]~3_combout\ : std_logic;
SIGNAL \inst|ins3t|count~2_combout\ : std_logic;
SIGNAL \inst|ins3t|count~0_combout\ : std_logic;
SIGNAL \inst|ins3t|count~1_combout\ : std_logic;
SIGNAL \inst|ins3t|Equal0~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[7]~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ins3t|keyData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|horiz_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|vgaSync_instance|vert_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\ : std_logic;

BEGIN

newMove <= ww_newMove;
ww_psData <= psData;
ww_ps2clk <= ps2clk;
ww_clk <= clk;
ww_reset <= reset;
VGA_clk <= ww_VGA_clk;
sync <= ww_sync;
blank <= ww_blank;
vs <= ww_vs;
hs <= ww_hs;
Blue <= ww_Blue;
dir <= ww_dir;
freeTiles <= ww_freeTiles;
Green <= ww_Green;
keyPressH <= ww_keyPressH;
keyPressL <= ww_keyPressL;
Red <= ww_Red;
ww_moveAck <= moveAck;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst2|fall_edge~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst2|fall_edge~combout\);

\inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst6|vgaSync_instance|clkdiv~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\ <= NOT \inst6|vgaSync_instance|blank_proc~1_combout\;

-- Location: LCCOMB_X41_Y17_N10
\inst6|vgaSync_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~0_combout\ = \inst6|vgaSync_instance|vert_count\(0) $ (VCC)
-- \inst6|vgaSync_instance|Add1~1\ = CARRY(\inst6|vgaSync_instance|vert_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datad => VCC,
	combout => \inst6|vgaSync_instance|Add1~0_combout\,
	cout => \inst6|vgaSync_instance|Add1~1\);

-- Location: LCCOMB_X41_Y17_N16
\inst6|vgaSync_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~6_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|Add1~5\)) # (!\inst6|vgaSync_instance|vert_count\(3) & ((\inst6|vgaSync_instance|Add1~5\) # (GND)))
-- \inst6|vgaSync_instance|Add1~7\ = CARRY((!\inst6|vgaSync_instance|Add1~5\) # (!\inst6|vgaSync_instance|vert_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~5\,
	combout => \inst6|vgaSync_instance|Add1~6_combout\,
	cout => \inst6|vgaSync_instance|Add1~7\);

-- Location: LCFF_X64_Y19_N7
\inst|inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[0]~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(0));

-- Location: LCFF_X64_Y19_N9
\inst|inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[1]~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(1));

-- Location: LCFF_X64_Y19_N11
\inst|inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[2]~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(2));

-- Location: LCFF_X64_Y19_N13
\inst|inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[3]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(3));

-- Location: LCFF_X64_Y19_N15
\inst|inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[4]~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(4));

-- Location: LCFF_X64_Y19_N17
\inst|inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[5]~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(5));

-- Location: LCFF_X64_Y19_N19
\inst|inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[6]~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(6));

-- Location: LCFF_X64_Y19_N21
\inst|inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[7]~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(7));

-- Location: LCCOMB_X64_Y19_N6
\inst|inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[0]~8_combout\ = \inst|inst|count\(0) $ (VCC)
-- \inst|inst|count[0]~9\ = CARRY(\inst|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(0),
	datad => VCC,
	combout => \inst|inst|count[0]~8_combout\,
	cout => \inst|inst|count[0]~9\);

-- Location: LCCOMB_X64_Y19_N8
\inst|inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[1]~10_combout\ = (\inst|inst|count\(1) & (!\inst|inst|count[0]~9\)) # (!\inst|inst|count\(1) & ((\inst|inst|count[0]~9\) # (GND)))
-- \inst|inst|count[1]~11\ = CARRY((!\inst|inst|count[0]~9\) # (!\inst|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(1),
	datad => VCC,
	cin => \inst|inst|count[0]~9\,
	combout => \inst|inst|count[1]~10_combout\,
	cout => \inst|inst|count[1]~11\);

-- Location: LCCOMB_X64_Y19_N10
\inst|inst|count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[2]~12_combout\ = (\inst|inst|count\(2) & (\inst|inst|count[1]~11\ $ (GND))) # (!\inst|inst|count\(2) & (!\inst|inst|count[1]~11\ & VCC))
-- \inst|inst|count[2]~13\ = CARRY((\inst|inst|count\(2) & !\inst|inst|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(2),
	datad => VCC,
	cin => \inst|inst|count[1]~11\,
	combout => \inst|inst|count[2]~12_combout\,
	cout => \inst|inst|count[2]~13\);

-- Location: LCCOMB_X64_Y19_N12
\inst|inst|count[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[3]~14_combout\ = (\inst|inst|count\(3) & (!\inst|inst|count[2]~13\)) # (!\inst|inst|count\(3) & ((\inst|inst|count[2]~13\) # (GND)))
-- \inst|inst|count[3]~15\ = CARRY((!\inst|inst|count[2]~13\) # (!\inst|inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(3),
	datad => VCC,
	cin => \inst|inst|count[2]~13\,
	combout => \inst|inst|count[3]~14_combout\,
	cout => \inst|inst|count[3]~15\);

-- Location: LCCOMB_X64_Y19_N14
\inst|inst|count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[4]~16_combout\ = (\inst|inst|count\(4) & (\inst|inst|count[3]~15\ $ (GND))) # (!\inst|inst|count\(4) & (!\inst|inst|count[3]~15\ & VCC))
-- \inst|inst|count[4]~17\ = CARRY((\inst|inst|count\(4) & !\inst|inst|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(4),
	datad => VCC,
	cin => \inst|inst|count[3]~15\,
	combout => \inst|inst|count[4]~16_combout\,
	cout => \inst|inst|count[4]~17\);

-- Location: LCCOMB_X64_Y19_N16
\inst|inst|count[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[5]~18_combout\ = (\inst|inst|count\(5) & (!\inst|inst|count[4]~17\)) # (!\inst|inst|count\(5) & ((\inst|inst|count[4]~17\) # (GND)))
-- \inst|inst|count[5]~19\ = CARRY((!\inst|inst|count[4]~17\) # (!\inst|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(5),
	datad => VCC,
	cin => \inst|inst|count[4]~17\,
	combout => \inst|inst|count[5]~18_combout\,
	cout => \inst|inst|count[5]~19\);

-- Location: LCCOMB_X64_Y19_N18
\inst|inst|count[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[6]~20_combout\ = (\inst|inst|count\(6) & (\inst|inst|count[5]~19\ $ (GND))) # (!\inst|inst|count\(6) & (!\inst|inst|count[5]~19\ & VCC))
-- \inst|inst|count[6]~21\ = CARRY((\inst|inst|count\(6) & !\inst|inst|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(6),
	datad => VCC,
	cin => \inst|inst|count[5]~19\,
	combout => \inst|inst|count[6]~20_combout\,
	cout => \inst|inst|count[6]~21\);

-- Location: LCCOMB_X64_Y19_N20
\inst|inst|count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[7]~22_combout\ = \inst|inst|count\(7) $ (\inst|inst|count[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(7),
	cin => \inst|inst|count[6]~21\,
	combout => \inst|inst|count[7]~22_combout\);

-- Location: LCFF_X41_Y17_N27
\inst6|vgaSync_instance|vert_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~16_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(8));

-- Location: LCFF_X40_Y17_N31
\inst6|vgaSync_instance|vert_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~1_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(3));

-- Location: LCCOMB_X40_Y17_N30
\inst6|vgaSync_instance|vert_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~1_combout\ = (\inst6|vgaSync_instance|Add1~6_combout\ & !\inst6|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Add1~6_combout\,
	datad => \inst6|vgaSync_instance|Equal1~2_combout\,
	combout => \inst6|vgaSync_instance|vert_count~1_combout\);

-- Location: LCFF_X64_Y19_N31
\inst|inst2|reg2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	sdata => \inst|inst2|reg1|Q~regout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg2|Q~regout\);

-- Location: LCFF_X64_Y19_N27
\inst|inst2|reg1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~regout\,
	datain => \inst|inst2|reg1|Q~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg1|Q~regout\);

-- Location: LCCOMB_X64_Y19_N30
\inst|inst2|fall_edge\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|fall_edge~combout\ = LCELL((\inst|inst2|reg2|Q~regout\ & !\inst|inst2|reg1|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|reg2|Q~regout\,
	datad => \inst|inst2|reg1|Q~regout\,
	combout => \inst|inst2|fall_edge~combout\);

-- Location: LCFF_X64_Y19_N23
\inst|inst|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|temp~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|temp~regout\);

-- Location: LCCOMB_X64_Y19_N28
\inst|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|count\(2) & (\inst|inst|count\(0) & (\inst|inst|count\(1) & \inst|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(2),
	datab => \inst|inst|count\(0),
	datac => \inst|inst|count\(1),
	datad => \inst|inst|count\(3),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y19_N0
\inst|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (\inst|inst|count\(5) & (\inst|inst|count\(4) & (\inst|inst|count\(7) & \inst|inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(5),
	datab => \inst|inst|count\(4),
	datac => \inst|inst|count\(7),
	datad => \inst|inst|count\(6),
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y19_N22
\inst|inst|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|temp~0_combout\ = \inst|inst|temp~regout\ $ (((\inst|inst|Equal0~1_combout\ & \inst|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~1_combout\,
	datac => \inst|inst|temp~regout\,
	datad => \inst|inst|Equal0~0_combout\,
	combout => \inst|inst|temp~0_combout\);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ps2clk~I\ : cycloneii_io
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
	padio => ww_ps2clk,
	combout => \ps2clk~combout\);

-- Location: CLKCTRL_G5
\inst|inst2|fall_edge~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst2|fall_edge~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst2|fall_edge~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y19_N26
\inst|inst2|reg1|Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|reg1|Q~feeder_combout\ = \ps2clk~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2clk~combout\,
	combout => \inst|inst2|reg1|Q~feeder_combout\);

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

-- Location: LCCOMB_X64_Y19_N24
\inst6|vgaSync_instance|clkdiv~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|clkdiv~0_combout\ = !\inst6|vgaSync_instance|clkdiv~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|clkdiv~regout\,
	combout => \inst6|vgaSync_instance|clkdiv~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X64_Y19_N25
\inst6|vgaSync_instance|clkdiv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|clkdiv~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|clkdiv~regout\);

-- Location: LCCOMB_X41_Y17_N20
\inst6|vgaSync_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~10_combout\ = (\inst6|vgaSync_instance|vert_count\(5) & (!\inst6|vgaSync_instance|Add1~9\)) # (!\inst6|vgaSync_instance|vert_count\(5) & ((\inst6|vgaSync_instance|Add1~9\) # (GND)))
-- \inst6|vgaSync_instance|Add1~11\ = CARRY((!\inst6|vgaSync_instance|Add1~9\) # (!\inst6|vgaSync_instance|vert_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~9\,
	combout => \inst6|vgaSync_instance|Add1~10_combout\,
	cout => \inst6|vgaSync_instance|Add1~11\);

-- Location: LCCOMB_X41_Y17_N22
\inst6|vgaSync_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~12_combout\ = (\inst6|vgaSync_instance|vert_count\(6) & (\inst6|vgaSync_instance|Add1~11\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(6) & (!\inst6|vgaSync_instance|Add1~11\ & VCC))
-- \inst6|vgaSync_instance|Add1~13\ = CARRY((\inst6|vgaSync_instance|vert_count\(6) & !\inst6|vgaSync_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(6),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~11\,
	combout => \inst6|vgaSync_instance|Add1~12_combout\,
	cout => \inst6|vgaSync_instance|Add1~13\);

-- Location: LCCOMB_X41_Y17_N24
\inst6|vgaSync_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~14_combout\ = (\inst6|vgaSync_instance|vert_count\(7) & (!\inst6|vgaSync_instance|Add1~13\)) # (!\inst6|vgaSync_instance|vert_count\(7) & ((\inst6|vgaSync_instance|Add1~13\) # (GND)))
-- \inst6|vgaSync_instance|Add1~15\ = CARRY((!\inst6|vgaSync_instance|Add1~13\) # (!\inst6|vgaSync_instance|vert_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~13\,
	combout => \inst6|vgaSync_instance|Add1~14_combout\,
	cout => \inst6|vgaSync_instance|Add1~15\);

-- Location: LCCOMB_X42_Y17_N0
\inst6|vgaSync_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~0_combout\ = \inst6|vgaSync_instance|horiz_count\(0) $ (VCC)
-- \inst6|vgaSync_instance|Add0~1\ = CARRY(\inst6|vgaSync_instance|horiz_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(0),
	datad => VCC,
	combout => \inst6|vgaSync_instance|Add0~0_combout\,
	cout => \inst6|vgaSync_instance|Add0~1\);

-- Location: LCFF_X42_Y17_N1
\inst6|vgaSync_instance|horiz_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(0));

-- Location: LCCOMB_X42_Y17_N2
\inst6|vgaSync_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (!\inst6|vgaSync_instance|Add0~1\)) # (!\inst6|vgaSync_instance|horiz_count\(1) & ((\inst6|vgaSync_instance|Add0~1\) # (GND)))
-- \inst6|vgaSync_instance|Add0~3\ = CARRY((!\inst6|vgaSync_instance|Add0~1\) # (!\inst6|vgaSync_instance|horiz_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~1\,
	combout => \inst6|vgaSync_instance|Add0~2_combout\,
	cout => \inst6|vgaSync_instance|Add0~3\);

-- Location: LCFF_X42_Y17_N3
\inst6|vgaSync_instance|horiz_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(1));

-- Location: LCCOMB_X42_Y17_N4
\inst6|vgaSync_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~4_combout\ = (\inst6|vgaSync_instance|horiz_count\(2) & (\inst6|vgaSync_instance|Add0~3\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(2) & (!\inst6|vgaSync_instance|Add0~3\ & VCC))
-- \inst6|vgaSync_instance|Add0~5\ = CARRY((\inst6|vgaSync_instance|horiz_count\(2) & !\inst6|vgaSync_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(2),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~3\,
	combout => \inst6|vgaSync_instance|Add0~4_combout\,
	cout => \inst6|vgaSync_instance|Add0~5\);

-- Location: LCFF_X42_Y17_N5
\inst6|vgaSync_instance|horiz_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~4_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(2));

-- Location: LCCOMB_X42_Y17_N6
\inst6|vgaSync_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~6_combout\ = (\inst6|vgaSync_instance|horiz_count\(3) & (!\inst6|vgaSync_instance|Add0~5\)) # (!\inst6|vgaSync_instance|horiz_count\(3) & ((\inst6|vgaSync_instance|Add0~5\) # (GND)))
-- \inst6|vgaSync_instance|Add0~7\ = CARRY((!\inst6|vgaSync_instance|Add0~5\) # (!\inst6|vgaSync_instance|horiz_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(3),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~5\,
	combout => \inst6|vgaSync_instance|Add0~6_combout\,
	cout => \inst6|vgaSync_instance|Add0~7\);

-- Location: LCCOMB_X42_Y17_N8
\inst6|vgaSync_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~8_combout\ = (\inst6|vgaSync_instance|horiz_count\(4) & (\inst6|vgaSync_instance|Add0~7\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(4) & (!\inst6|vgaSync_instance|Add0~7\ & VCC))
-- \inst6|vgaSync_instance|Add0~9\ = CARRY((\inst6|vgaSync_instance|horiz_count\(4) & !\inst6|vgaSync_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(4),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~7\,
	combout => \inst6|vgaSync_instance|Add0~8_combout\,
	cout => \inst6|vgaSync_instance|Add0~9\);

-- Location: LCFF_X42_Y17_N25
\inst6|vgaSync_instance|horiz_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~8_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(4));

-- Location: LCCOMB_X42_Y17_N10
\inst6|vgaSync_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~10_combout\ = (\inst6|vgaSync_instance|horiz_count\(5) & (!\inst6|vgaSync_instance|Add0~9\)) # (!\inst6|vgaSync_instance|horiz_count\(5) & ((\inst6|vgaSync_instance|Add0~9\) # (GND)))
-- \inst6|vgaSync_instance|Add0~11\ = CARRY((!\inst6|vgaSync_instance|Add0~9\) # (!\inst6|vgaSync_instance|horiz_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(5),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~9\,
	combout => \inst6|vgaSync_instance|Add0~10_combout\,
	cout => \inst6|vgaSync_instance|Add0~11\);

-- Location: LCCOMB_X42_Y17_N26
\inst6|vgaSync_instance|horiz_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~2_combout\ = (!\inst6|vgaSync_instance|Equal0~2_combout\ & \inst6|vgaSync_instance|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Equal0~2_combout\,
	datad => \inst6|vgaSync_instance|Add0~10_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~2_combout\);

-- Location: LCFF_X42_Y17_N27
\inst6|vgaSync_instance|horiz_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(5));

-- Location: LCCOMB_X42_Y17_N12
\inst6|vgaSync_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~12_combout\ = (\inst6|vgaSync_instance|horiz_count\(6) & (\inst6|vgaSync_instance|Add0~11\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(6) & (!\inst6|vgaSync_instance|Add0~11\ & VCC))
-- \inst6|vgaSync_instance|Add0~13\ = CARRY((\inst6|vgaSync_instance|horiz_count\(6) & !\inst6|vgaSync_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(6),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~11\,
	combout => \inst6|vgaSync_instance|Add0~12_combout\,
	cout => \inst6|vgaSync_instance|Add0~13\);

-- Location: LCFF_X42_Y17_N31
\inst6|vgaSync_instance|horiz_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add0~12_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(6));

-- Location: LCCOMB_X42_Y17_N14
\inst6|vgaSync_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~14_combout\ = (\inst6|vgaSync_instance|horiz_count\(7) & (!\inst6|vgaSync_instance|Add0~13\)) # (!\inst6|vgaSync_instance|horiz_count\(7) & ((\inst6|vgaSync_instance|Add0~13\) # (GND)))
-- \inst6|vgaSync_instance|Add0~15\ = CARRY((!\inst6|vgaSync_instance|Add0~13\) # (!\inst6|vgaSync_instance|horiz_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~13\,
	combout => \inst6|vgaSync_instance|Add0~14_combout\,
	cout => \inst6|vgaSync_instance|Add0~15\);

-- Location: LCFF_X42_Y17_N15
\inst6|vgaSync_instance|horiz_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~14_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(7));

-- Location: LCCOMB_X42_Y17_N16
\inst6|vgaSync_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~16_combout\ = (\inst6|vgaSync_instance|horiz_count\(8) & (\inst6|vgaSync_instance|Add0~15\ $ (GND))) # (!\inst6|vgaSync_instance|horiz_count\(8) & (!\inst6|vgaSync_instance|Add0~15\ & VCC))
-- \inst6|vgaSync_instance|Add0~17\ = CARRY((\inst6|vgaSync_instance|horiz_count\(8) & !\inst6|vgaSync_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add0~15\,
	combout => \inst6|vgaSync_instance|Add0~16_combout\,
	cout => \inst6|vgaSync_instance|Add0~17\);

-- Location: LCCOMB_X42_Y17_N22
\inst6|vgaSync_instance|horiz_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~1_combout\ = (!\inst6|vgaSync_instance|Equal0~2_combout\ & \inst6|vgaSync_instance|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Equal0~2_combout\,
	datad => \inst6|vgaSync_instance|Add0~16_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~1_combout\);

-- Location: LCFF_X42_Y17_N23
\inst6|vgaSync_instance|horiz_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(8));

-- Location: LCCOMB_X42_Y17_N30
\inst6|vgaSync_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~0_combout\ = (\inst6|vgaSync_instance|horiz_count\(9) & (!\inst6|vgaSync_instance|horiz_count\(7) & (!\inst6|vgaSync_instance|horiz_count\(6) & \inst6|vgaSync_instance|horiz_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(9),
	datab => \inst6|vgaSync_instance|horiz_count\(7),
	datac => \inst6|vgaSync_instance|horiz_count\(6),
	datad => \inst6|vgaSync_instance|horiz_count\(8),
	combout => \inst6|vgaSync_instance|Equal0~0_combout\);

-- Location: LCFF_X42_Y17_N7
\inst6|vgaSync_instance|horiz_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add0~6_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(3));

-- Location: LCCOMB_X43_Y17_N18
\inst6|vgaSync_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~1_combout\ = (!\inst6|vgaSync_instance|horiz_count\(5) & (\inst6|vgaSync_instance|horiz_count\(3) & (\inst6|vgaSync_instance|horiz_count\(2) & \inst6|vgaSync_instance|horiz_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(5),
	datab => \inst6|vgaSync_instance|horiz_count\(3),
	datac => \inst6|vgaSync_instance|horiz_count\(2),
	datad => \inst6|vgaSync_instance|horiz_count\(4),
	combout => \inst6|vgaSync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y17_N30
\inst6|vgaSync_instance|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal0~2_combout\ = (\inst6|vgaSync_instance|horiz_count\(1) & (\inst6|vgaSync_instance|Equal0~0_combout\ & (\inst6|vgaSync_instance|horiz_count\(0) & \inst6|vgaSync_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(1),
	datab => \inst6|vgaSync_instance|Equal0~0_combout\,
	datac => \inst6|vgaSync_instance|horiz_count\(0),
	datad => \inst6|vgaSync_instance|Equal0~1_combout\,
	combout => \inst6|vgaSync_instance|Equal0~2_combout\);

-- Location: LCFF_X41_Y17_N25
\inst6|vgaSync_instance|vert_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~14_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(7));

-- Location: LCCOMB_X41_Y17_N26
\inst6|vgaSync_instance|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~16_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|Add1~15\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(8) & (!\inst6|vgaSync_instance|Add1~15\ & VCC))
-- \inst6|vgaSync_instance|Add1~17\ = CARRY((\inst6|vgaSync_instance|vert_count\(8) & !\inst6|vgaSync_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~15\,
	combout => \inst6|vgaSync_instance|Add1~16_combout\,
	cout => \inst6|vgaSync_instance|Add1~17\);

-- Location: LCCOMB_X41_Y17_N28
\inst6|vgaSync_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~18_combout\ = \inst6|vgaSync_instance|Add1~17\ $ (\inst6|vgaSync_instance|vert_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|vgaSync_instance|vert_count\(9),
	cin => \inst6|vgaSync_instance|Add1~17\,
	combout => \inst6|vgaSync_instance|Add1~18_combout\);

-- Location: LCCOMB_X40_Y17_N18
\inst6|vgaSync_instance|vert_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~0_combout\ = (!\inst6|vgaSync_instance|Equal1~2_combout\ & \inst6|vgaSync_instance|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|Equal1~2_combout\,
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|vert_count~0_combout\);

-- Location: LCFF_X40_Y17_N19
\inst6|vgaSync_instance|vert_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~0_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(9));

-- Location: LCFF_X41_Y17_N1
\inst6|vgaSync_instance|vert_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add1~12_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(6));

-- Location: LCCOMB_X40_Y17_N24
\inst6|vgaSync_instance|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~0_combout\ = (!\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|vert_count\(9) & (!\inst6|vgaSync_instance|vert_count\(6) & !\inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|vgaSync_instance|vert_count\(9),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|vgaSync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y17_N22
\inst6|vgaSync_instance|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~1_combout\ = (\inst6|vgaSync_instance|vert_count\(3) & (!\inst6|vgaSync_instance|vert_count\(4) & (\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|vert_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(3),
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datac => \inst6|vgaSync_instance|vert_count\(2),
	datad => \inst6|vgaSync_instance|vert_count\(5),
	combout => \inst6|vgaSync_instance|Equal1~1_combout\);

-- Location: LCCOMB_X40_Y17_N28
\inst6|vgaSync_instance|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal1~2_combout\ = (!\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|vert_count\(0) & (\inst6|vgaSync_instance|Equal1~0_combout\ & \inst6|vgaSync_instance|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(1),
	datab => \inst6|vgaSync_instance|vert_count\(0),
	datac => \inst6|vgaSync_instance|Equal1~0_combout\,
	datad => \inst6|vgaSync_instance|Equal1~1_combout\,
	combout => \inst6|vgaSync_instance|Equal1~2_combout\);

-- Location: LCCOMB_X41_Y17_N4
\inst6|vgaSync_instance|vert_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~3_combout\ = (\inst6|vgaSync_instance|Add1~0_combout\ & !\inst6|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~0_combout\,
	datad => \inst6|vgaSync_instance|Equal1~2_combout\,
	combout => \inst6|vgaSync_instance|vert_count~3_combout\);

-- Location: LCFF_X41_Y17_N5
\inst6|vgaSync_instance|vert_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~3_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(0));

-- Location: LCCOMB_X41_Y17_N12
\inst6|vgaSync_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~2_combout\ = (\inst6|vgaSync_instance|vert_count\(1) & (!\inst6|vgaSync_instance|Add1~1\)) # (!\inst6|vgaSync_instance|vert_count\(1) & ((\inst6|vgaSync_instance|Add1~1\) # (GND)))
-- \inst6|vgaSync_instance|Add1~3\ = CARRY((!\inst6|vgaSync_instance|Add1~1\) # (!\inst6|vgaSync_instance|vert_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(1),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~1\,
	combout => \inst6|vgaSync_instance|Add1~2_combout\,
	cout => \inst6|vgaSync_instance|Add1~3\);

-- Location: LCFF_X41_Y17_N3
\inst6|vgaSync_instance|vert_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst6|vgaSync_instance|Add1~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(1));

-- Location: LCCOMB_X41_Y17_N14
\inst6|vgaSync_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~4_combout\ = (\inst6|vgaSync_instance|vert_count\(2) & (\inst6|vgaSync_instance|Add1~3\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(2) & (!\inst6|vgaSync_instance|Add1~3\ & VCC))
-- \inst6|vgaSync_instance|Add1~5\ = CARRY((\inst6|vgaSync_instance|vert_count\(2) & !\inst6|vgaSync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(2),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~3\,
	combout => \inst6|vgaSync_instance|Add1~4_combout\,
	cout => \inst6|vgaSync_instance|Add1~5\);

-- Location: LCCOMB_X41_Y17_N8
\inst6|vgaSync_instance|vert_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|vert_count~2_combout\ = (\inst6|vgaSync_instance|Add1~4_combout\ & !\inst6|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Add1~4_combout\,
	datad => \inst6|vgaSync_instance|Equal1~2_combout\,
	combout => \inst6|vgaSync_instance|vert_count~2_combout\);

-- Location: LCFF_X41_Y17_N9
\inst6|vgaSync_instance|vert_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|vert_count~2_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(2));

-- Location: LCCOMB_X41_Y17_N18
\inst6|vgaSync_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add1~8_combout\ = (\inst6|vgaSync_instance|vert_count\(4) & (\inst6|vgaSync_instance|Add1~7\ $ (GND))) # (!\inst6|vgaSync_instance|vert_count\(4) & (!\inst6|vgaSync_instance|Add1~7\ & VCC))
-- \inst6|vgaSync_instance|Add1~9\ = CARRY((\inst6|vgaSync_instance|vert_count\(4) & !\inst6|vgaSync_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|vert_count\(4),
	datad => VCC,
	cin => \inst6|vgaSync_instance|Add1~7\,
	combout => \inst6|vgaSync_instance|Add1~8_combout\,
	cout => \inst6|vgaSync_instance|Add1~9\);

-- Location: LCFF_X41_Y17_N19
\inst6|vgaSync_instance|vert_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~8_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(4));

-- Location: LCFF_X41_Y17_N21
\inst6|vgaSync_instance|vert_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Add1~10_combout\,
	aclr => \reset~combout\,
	ena => \inst6|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vert_count\(5));

-- Location: LCCOMB_X40_Y17_N16
\inst6|vgaSync_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|LessThan3~0_combout\ = (\inst6|vgaSync_instance|vert_count\(8) & (\inst6|vgaSync_instance|vert_count\(5) & (\inst6|vgaSync_instance|vert_count\(6) & \inst6|vgaSync_instance|vert_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|vert_count\(8),
	datab => \inst6|vgaSync_instance|vert_count\(5),
	datac => \inst6|vgaSync_instance|vert_count\(6),
	datad => \inst6|vgaSync_instance|vert_count\(7),
	combout => \inst6|vgaSync_instance|LessThan3~0_combout\);

-- Location: LCCOMB_X42_Y17_N18
\inst6|vgaSync_instance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Add0~18_combout\ = \inst6|vgaSync_instance|Add0~17\ $ (\inst6|vgaSync_instance|horiz_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|vgaSync_instance|horiz_count\(9),
	cin => \inst6|vgaSync_instance|Add0~17\,
	combout => \inst6|vgaSync_instance|Add0~18_combout\);

-- Location: LCCOMB_X42_Y17_N28
\inst6|vgaSync_instance|horiz_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|horiz_count~0_combout\ = (!\inst6|vgaSync_instance|Equal0~2_combout\ & \inst6|vgaSync_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|Equal0~2_combout\,
	datad => \inst6|vgaSync_instance|Add0~18_combout\,
	combout => \inst6|vgaSync_instance|horiz_count~0_combout\);

-- Location: LCFF_X42_Y17_N29
\inst6|vgaSync_instance|horiz_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|horiz_count~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|horiz_count\(9));

-- Location: LCCOMB_X43_Y17_N28
\inst6|vgaSync_instance|blank_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|blank_proc~0_combout\ = (\inst6|vgaSync_instance|vert_count\(9)) # ((\inst6|vgaSync_instance|horiz_count\(9) & ((\inst6|vgaSync_instance|horiz_count\(7)) # (\inst6|vgaSync_instance|horiz_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|horiz_count\(7),
	datab => \inst6|vgaSync_instance|horiz_count\(8),
	datac => \inst6|vgaSync_instance|vert_count\(9),
	datad => \inst6|vgaSync_instance|horiz_count\(9),
	combout => \inst6|vgaSync_instance|blank_proc~0_combout\);

-- Location: LCCOMB_X40_Y17_N20
\inst6|vgaSync_instance|blank_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|blank_proc~1_combout\ = (\inst6|vgaSync_instance|LessThan3~0_combout\) # (\inst6|vgaSync_instance|blank_proc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|vgaSync_instance|LessThan3~0_combout\,
	datad => \inst6|vgaSync_instance|blank_proc~0_combout\,
	combout => \inst6|vgaSync_instance|blank_proc~1_combout\);

-- Location: CLKCTRL_G4
\inst6|vgaSync_instance|clkdiv~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y17_N2
\inst6|vgaSync_instance|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~1_combout\ = (\inst6|vgaSync_instance|Add1~6_combout\ & (!\inst6|vgaSync_instance|Add1~4_combout\ & (\inst6|vgaSync_instance|Add1~2_combout\ & \inst6|vgaSync_instance|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~6_combout\,
	datab => \inst6|vgaSync_instance|Add1~4_combout\,
	datac => \inst6|vgaSync_instance|Add1~2_combout\,
	datad => \inst6|vgaSync_instance|Add1~10_combout\,
	combout => \inst6|vgaSync_instance|Equal2~1_combout\);

-- Location: LCCOMB_X41_Y17_N0
\inst6|vgaSync_instance|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~0_combout\ = (\inst6|vgaSync_instance|Add1~14_combout\ & (\inst6|vgaSync_instance|Add1~16_combout\ & (\inst6|vgaSync_instance|Add1~12_combout\ & !\inst6|vgaSync_instance|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add1~14_combout\,
	datab => \inst6|vgaSync_instance|Add1~16_combout\,
	datac => \inst6|vgaSync_instance|Add1~12_combout\,
	datad => \inst6|vgaSync_instance|Add1~18_combout\,
	combout => \inst6|vgaSync_instance|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y17_N6
\inst6|vgaSync_instance|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|Equal2~2_combout\ = (\inst6|vgaSync_instance|Add1~8_combout\) # ((!\inst6|vgaSync_instance|Equal2~0_combout\) # (!\inst6|vgaSync_instance|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|vgaSync_instance|Add1~8_combout\,
	datac => \inst6|vgaSync_instance|Equal2~1_combout\,
	datad => \inst6|vgaSync_instance|Equal2~0_combout\,
	combout => \inst6|vgaSync_instance|Equal2~2_combout\);

-- Location: LCFF_X41_Y17_N7
\inst6|vgaSync_instance|vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|Equal2~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|vs~regout\);

-- Location: LCCOMB_X42_Y17_N24
\inst6|vgaSync_instance|hsync_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~0_combout\ = (\inst6|vgaSync_instance|Add0~10_combout\ & (\inst6|vgaSync_instance|Add0~8_combout\ & \inst6|vgaSync_instance|Add0~12_combout\)) # (!\inst6|vgaSync_instance|Add0~10_combout\ & 
-- (!\inst6|vgaSync_instance|Add0~8_combout\ & !\inst6|vgaSync_instance|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~10_combout\,
	datac => \inst6|vgaSync_instance|Add0~8_combout\,
	datad => \inst6|vgaSync_instance|Add0~12_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~0_combout\);

-- Location: LCCOMB_X42_Y17_N20
\inst6|vgaSync_instance|hsync_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|vgaSync_instance|hsync_proc~1_combout\ = (\inst6|vgaSync_instance|Add0~16_combout\) # (((\inst6|vgaSync_instance|hsync_proc~0_combout\) # (!\inst6|vgaSync_instance|Add0~14_combout\)) # (!\inst6|vgaSync_instance|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|vgaSync_instance|Add0~16_combout\,
	datab => \inst6|vgaSync_instance|Add0~18_combout\,
	datac => \inst6|vgaSync_instance|hsync_proc~0_combout\,
	datad => \inst6|vgaSync_instance|Add0~14_combout\,
	combout => \inst6|vgaSync_instance|hsync_proc~1_combout\);

-- Location: LCFF_X42_Y17_N21
\inst6|vgaSync_instance|hs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst6|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst6|vgaSync_instance|hsync_proc~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|vgaSync_instance|hs~regout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\psData~I\ : cycloneii_io
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
	padio => ww_psData,
	combout => \psData~combout\);

-- Location: LCFF_X58_Y5_N19
\inst|ins3t|dataIn[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \psData~combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(10));

-- Location: LCCOMB_X58_Y5_N24
\inst|ins3t|dataIn[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[9]~feeder_combout\ = \inst|ins3t|dataIn\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(10),
	combout => \inst|ins3t|dataIn[9]~feeder_combout\);

-- Location: LCFF_X58_Y5_N25
\inst|ins3t|dataIn[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[9]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(9));

-- Location: LCFF_X58_Y5_N3
\inst|ins3t|dataIn[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(9),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(8));

-- Location: LCCOMB_X58_Y5_N4
\inst|ins3t|dataIn[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[7]~feeder_combout\ = \inst|ins3t|dataIn\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(8),
	combout => \inst|ins3t|dataIn[7]~feeder_combout\);

-- Location: LCFF_X58_Y5_N5
\inst|ins3t|dataIn[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[7]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(7));

-- Location: LCFF_X58_Y5_N1
\inst|ins3t|dataIn[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(7),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(6));

-- Location: LCCOMB_X58_Y5_N30
\inst|ins3t|count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count[2]~3_combout\ = \inst|ins3t|count\(2) $ (((\inst|ins3t|count\(0) & (\reset~combout\ & \inst|ins3t|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(0),
	datab => \reset~combout\,
	datac => \inst|ins3t|count\(2),
	datad => \inst|ins3t|count\(1),
	combout => \inst|ins3t|count[2]~3_combout\);

-- Location: LCFF_X58_Y5_N31
\inst|ins3t|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(2));

-- Location: LCCOMB_X57_Y5_N16
\inst|ins3t|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~2_combout\ = (!\inst|ins3t|count\(0) & (((\inst|ins3t|count\(2)) # (!\inst|ins3t|count\(3))) # (!\inst|ins3t|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(3),
	datac => \inst|ins3t|count\(0),
	datad => \inst|ins3t|count\(2),
	combout => \inst|ins3t|count~2_combout\);

-- Location: LCFF_X57_Y5_N17
\inst|ins3t|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~2_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(0));

-- Location: LCCOMB_X57_Y5_N20
\inst|ins3t|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~0_combout\ = (\inst|ins3t|count\(1) & ((\inst|ins3t|count\(0) & (\inst|ins3t|count\(3) $ (\inst|ins3t|count\(2)))) # (!\inst|ins3t|count\(0) & (\inst|ins3t|count\(3) & \inst|ins3t|count\(2))))) # (!\inst|ins3t|count\(1) & 
-- (((\inst|ins3t|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(0),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(2),
	combout => \inst|ins3t|count~0_combout\);

-- Location: LCFF_X57_Y5_N21
\inst|ins3t|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(3));

-- Location: LCCOMB_X57_Y5_N22
\inst|ins3t|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~1_combout\ = (\inst|ins3t|count\(1) & (!\inst|ins3t|count\(0) & ((\inst|ins3t|count\(2)) # (!\inst|ins3t|count\(3))))) # (!\inst|ins3t|count\(1) & (((\inst|ins3t|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(2),
	datab => \inst|ins3t|count\(3),
	datac => \inst|ins3t|count\(1),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|count~1_combout\);

-- Location: LCFF_X57_Y5_N23
\inst|ins3t|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~1_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(1));

-- Location: LCCOMB_X57_Y5_N30
\inst|ins3t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|Equal0~0_combout\ = (!\inst|ins3t|count\(0) & (\inst|ins3t|count\(1) & (\inst|ins3t|count\(3) & !\inst|ins3t|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(0),
	datab => \inst|ins3t|count\(1),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(2),
	combout => \inst|ins3t|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y5_N8
\inst|ins3t|keyData[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[7]~0_combout\ = (\reset~combout\ & \inst|ins3t|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \inst|ins3t|Equal0~0_combout\,
	combout => \inst|ins3t|keyData[7]~0_combout\);

-- Location: LCFF_X57_Y5_N9
\inst|ins3t|keyData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(6),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(4));

-- Location: LCCOMB_X57_Y5_N26
\inst|ins3t|keyData[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[5]~feeder_combout\ = \inst|ins3t|dataIn\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(7),
	combout => \inst|ins3t|keyData[5]~feeder_combout\);

-- Location: LCFF_X57_Y5_N27
\inst|ins3t|keyData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[5]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(5));

-- Location: LCCOMB_X57_Y5_N24
\inst|ins3t|keyData[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[6]~feeder_combout\ = \inst|ins3t|dataIn\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(8),
	combout => \inst|ins3t|keyData[6]~feeder_combout\);

-- Location: LCFF_X57_Y5_N25
\inst|ins3t|keyData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[6]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(6));

-- Location: LCCOMB_X57_Y5_N2
\inst|ins3t|keyData[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[7]~feeder_combout\ = \inst|ins3t|dataIn\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(9),
	combout => \inst|ins3t|keyData[7]~feeder_combout\);

-- Location: LCFF_X57_Y5_N3
\inst|ins3t|keyData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[7]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(7));

-- Location: LCCOMB_X64_Y5_N0
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(7)) # (\inst|ins3t|keyData\(5) $ (\inst|ins3t|keyData\(6))))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5)) # (\inst|ins3t|keyData\(6) $ (\inst|ins3t|keyData\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y5_N30
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(7) $ (((\inst|ins3t|keyData\(5)) # (!\inst|ins3t|keyData\(6)))))) # (!\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(6) & !\inst|ins3t|keyData\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y5_N12
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) & ((!\inst|ins3t|keyData\(7))))) # (!\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(6) & ((!\inst|ins3t|keyData\(7)))) # (!\inst|ins3t|keyData\(6) & 
-- (\inst|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y5_N26
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(6)))) # (!\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(4) $ (\inst|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y5_N16
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(7) & ((\inst|ins3t|keyData\(5)) # (!\inst|ins3t|keyData\(4))))) # (!\inst|ins3t|keyData\(6) & (!\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(5) & !\inst|ins3t|keyData\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y5_N6
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(6) & (\inst|ins3t|keyData\(5) $ (!\inst|ins3t|keyData\(7))))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5) & ((\inst|ins3t|keyData\(6)) # (\inst|ins3t|keyData\(7)))) # 
-- (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(6) & \inst|ins3t|keyData\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y5_N4
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(6) $ (!\inst|ins3t|keyData\(7))))) # (!\inst|ins3t|keyData\(4) & ((\inst|ins3t|keyData\(5) & (!\inst|ins3t|keyData\(6) & \inst|ins3t|keyData\(7))) # 
-- (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(6) & !\inst|ins3t|keyData\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(4),
	datab => \inst|ins3t|keyData\(5),
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|ins3t|keyData\(7),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y5_N16
\inst|ins3t|dataIn[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[5]~feeder_combout\ = \inst|ins3t|dataIn\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(6),
	combout => \inst|ins3t|dataIn[5]~feeder_combout\);

-- Location: LCFF_X58_Y5_N17
\inst|ins3t|dataIn[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[5]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(5));

-- Location: LCFF_X58_Y5_N15
\inst|ins3t|dataIn[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(5),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(4));

-- Location: LCFF_X58_Y5_N9
\inst|ins3t|dataIn[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(4),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(3));

-- Location: LCFF_X57_Y5_N7
\inst|ins3t|keyData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(1));

-- Location: LCFF_X57_Y5_N15
\inst|ins3t|keyData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(5),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(3));

-- Location: LCFF_X57_Y5_N5
\inst|ins3t|keyData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(4),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(2));

-- Location: LCFF_X58_Y5_N7
\inst|ins3t|dataIn[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(2));

-- Location: LCCOMB_X57_Y5_N28
\inst|ins3t|keyData[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyData[0]~feeder_combout\ = \inst|ins3t|dataIn\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(2),
	combout => \inst|ins3t|keyData[0]~feeder_combout\);

-- Location: LCFF_X57_Y5_N29
\inst|ins3t|keyData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|keyData[0]~feeder_combout\,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(0));

-- Location: LCCOMB_X57_Y5_N4
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(3)) # (\inst|ins3t|keyData\(1) $ (\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(1)) # (\inst|ins3t|keyData\(3) $ (\inst|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y5_N14
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(0)) # (!\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(1) & (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(2) $ (!\inst|ins3t|keyData\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y5_N12
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst|ins3t|keyData\(1) & (((!\inst|ins3t|keyData\(3) & \inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(3))) # (!\inst|ins3t|keyData\(2) & 
-- ((\inst|ins3t|keyData\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y5_N6
\inst4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst|ins3t|keyData\(1) & (\inst|ins3t|keyData\(0) & ((\inst|ins3t|keyData\(2))))) # (!\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(0) $ (\inst|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(0),
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(2),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y5_N18
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) & ((\inst|ins3t|keyData\(1)) # (!\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(3) & !\inst|ins3t|keyData\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y5_N0
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & ((\inst|ins3t|keyData\(3)) # (!\inst|ins3t|keyData\(0)))) # (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) & !\inst|ins3t|keyData\(0))))) # (!\inst|ins3t|keyData\(1) & 
-- (\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) $ (\inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y5_N10
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) & !\inst|ins3t|keyData\(0)))) # (!\inst|ins3t|keyData\(1) & ((\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(3) $ (!\inst|ins3t|keyData\(0)))) # 
-- (!\inst|ins3t|keyData\(2) & (!\inst|ins3t|keyData\(3) & \inst|ins3t|keyData\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(2),
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\newMove~I\ : cycloneii_io
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
	padio => ww_newMove);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_clk~I\ : cycloneii_io
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
	datain => \inst6|vgaSync_instance|clkdiv~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_clk);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sync~I\ : cycloneii_io
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
	padio => ww_sync);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\blank~I\ : cycloneii_io
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
	datain => \inst6|vgaSync_instance|ALT_INV_blank_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_blank);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vs~I\ : cycloneii_io
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
	datain => \inst6|vgaSync_instance|vs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vs);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hs~I\ : cycloneii_io
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
	datain => \inst6|vgaSync_instance|hs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hs);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[9]~I\ : cycloneii_io
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
	padio => ww_Blue(9));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[8]~I\ : cycloneii_io
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
	padio => ww_Blue(8));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[7]~I\ : cycloneii_io
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
	padio => ww_Blue(7));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[6]~I\ : cycloneii_io
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
	padio => ww_Blue(6));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[5]~I\ : cycloneii_io
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
	padio => ww_Blue(5));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[4]~I\ : cycloneii_io
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
	padio => ww_Blue(4));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[3]~I\ : cycloneii_io
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
	padio => ww_Blue(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[2]~I\ : cycloneii_io
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
	padio => ww_Blue(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[1]~I\ : cycloneii_io
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
	padio => ww_Blue(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Blue[0]~I\ : cycloneii_io
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
	padio => ww_Blue(0));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dir[1]~I\ : cycloneii_io
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
	padio => ww_dir(1));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dir[0]~I\ : cycloneii_io
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
	padio => ww_dir(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[15]~I\ : cycloneii_io
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
	padio => ww_freeTiles(15));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[14]~I\ : cycloneii_io
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
	padio => ww_freeTiles(14));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[13]~I\ : cycloneii_io
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
	padio => ww_freeTiles(13));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[12]~I\ : cycloneii_io
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
	padio => ww_freeTiles(12));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[11]~I\ : cycloneii_io
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
	padio => ww_freeTiles(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[10]~I\ : cycloneii_io
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
	padio => ww_freeTiles(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[9]~I\ : cycloneii_io
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
	padio => ww_freeTiles(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[8]~I\ : cycloneii_io
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
	padio => ww_freeTiles(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[7]~I\ : cycloneii_io
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
	padio => ww_freeTiles(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[6]~I\ : cycloneii_io
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
	padio => ww_freeTiles(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[5]~I\ : cycloneii_io
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
	padio => ww_freeTiles(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[4]~I\ : cycloneii_io
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
	padio => ww_freeTiles(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[3]~I\ : cycloneii_io
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
	padio => ww_freeTiles(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[2]~I\ : cycloneii_io
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
	padio => ww_freeTiles(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[1]~I\ : cycloneii_io
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
	padio => ww_freeTiles(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\freeTiles[0]~I\ : cycloneii_io
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
	padio => ww_freeTiles(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[9]~I\ : cycloneii_io
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
	padio => ww_Green(9));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[8]~I\ : cycloneii_io
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
	padio => ww_Green(8));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[7]~I\ : cycloneii_io
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
	padio => ww_Green(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[6]~I\ : cycloneii_io
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
	padio => ww_Green(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[5]~I\ : cycloneii_io
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
	padio => ww_Green(5));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[4]~I\ : cycloneii_io
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
	padio => ww_Green(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[3]~I\ : cycloneii_io
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
	padio => ww_Green(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[2]~I\ : cycloneii_io
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
	padio => ww_Green(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[1]~I\ : cycloneii_io
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
	padio => ww_Green(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Green[0]~I\ : cycloneii_io
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
	padio => ww_Green(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[6]~I\ : cycloneii_io
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
	datain => \inst3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[5]~I\ : cycloneii_io
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
	datain => \inst3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[4]~I\ : cycloneii_io
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
	datain => \inst3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[3]~I\ : cycloneii_io
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
	datain => \inst3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[2]~I\ : cycloneii_io
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
	datain => \inst3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[1]~I\ : cycloneii_io
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
	datain => \inst3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressH[0]~I\ : cycloneii_io
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
	datain => \inst3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressH(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[6]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[5]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[4]~I\ : cycloneii_io
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
	datain => \inst4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[3]~I\ : cycloneii_io
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
	datain => \inst4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[2]~I\ : cycloneii_io
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
	datain => \inst4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[1]~I\ : cycloneii_io
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
	datain => \inst4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyPressL[0]~I\ : cycloneii_io
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
	datain => \inst4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(0));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[9]~I\ : cycloneii_io
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
	padio => ww_Red(9));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[8]~I\ : cycloneii_io
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
	padio => ww_Red(8));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[7]~I\ : cycloneii_io
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
	padio => ww_Red(7));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[6]~I\ : cycloneii_io
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
	padio => ww_Red(6));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[5]~I\ : cycloneii_io
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
	padio => ww_Red(5));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[4]~I\ : cycloneii_io
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
	padio => ww_Red(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[3]~I\ : cycloneii_io
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
	padio => ww_Red(3));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[2]~I\ : cycloneii_io
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
	padio => ww_Red(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[1]~I\ : cycloneii_io
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
	padio => ww_Red(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Red[0]~I\ : cycloneii_io
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
	padio => ww_Red(0));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\moveAck~I\ : cycloneii_io
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
	padio => ww_moveAck);
END structure;


