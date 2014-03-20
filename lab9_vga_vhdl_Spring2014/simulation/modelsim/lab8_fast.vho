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

-- DATE "03/18/2014 23:58:38"

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

ENTITY 	lab8 IS
    PORT (
	VGA_clk : OUT std_logic;
	Clk : IN std_logic;
	Reset : IN std_logic;
	ps2data : IN std_logic;
	ps2clk : IN std_logic;
	sync : OUT std_logic;
	blank : OUT std_logic;
	vs : OUT std_logic;
	hs : OUT std_logic;
	Blue : OUT std_logic_vector(9 DOWNTO 0);
	Code0 : OUT std_logic_vector(6 DOWNTO 0);
	Code1 : OUT std_logic_vector(6 DOWNTO 0);
	Green : OUT std_logic_vector(9 DOWNTO 0);
	keyh : OUT std_logic_vector(6 DOWNTO 0);
	keyl : OUT std_logic_vector(6 DOWNTO 0);
	Red : OUT std_logic_vector(9 DOWNTO 0)
	);
END lab8;

-- Design Ports Information
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
-- Code0[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code0[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Code1[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- keyh[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyh[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyl[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- Clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ps2clk	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ps2data	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_VGA_clk : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_ps2data : std_logic;
SIGNAL ww_ps2clk : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_blank : std_logic;
SIGNAL ww_vs : std_logic;
SIGNAL ww_hs : std_logic;
SIGNAL ww_Blue : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Code0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Code1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Green : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_keyh : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_keyl : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Red : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst1|inst2|fall_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|vgaSync_instance|vs~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inst|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~11\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~12\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~13\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~14\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~15\ : std_logic;
SIGNAL \inst|Color_instance|Add2~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~4_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~14_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~18_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~30_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~36_combout\ : std_logic;
SIGNAL \inst1|inst|count[0]~8_combout\ : std_logic;
SIGNAL \inst1|inst|count[0]~9\ : std_logic;
SIGNAL \inst1|inst|count[1]~10_combout\ : std_logic;
SIGNAL \inst1|inst|count[1]~11\ : std_logic;
SIGNAL \inst1|inst|count[2]~12_combout\ : std_logic;
SIGNAL \inst1|inst|count[2]~13\ : std_logic;
SIGNAL \inst1|inst|count[3]~14_combout\ : std_logic;
SIGNAL \inst1|inst|count[3]~15\ : std_logic;
SIGNAL \inst1|inst|count[4]~16_combout\ : std_logic;
SIGNAL \inst1|inst|count[4]~17\ : std_logic;
SIGNAL \inst1|inst|count[5]~18_combout\ : std_logic;
SIGNAL \inst1|inst|count[5]~19\ : std_logic;
SIGNAL \inst1|inst|count[6]~20_combout\ : std_logic;
SIGNAL \inst1|inst|count[6]~21\ : std_logic;
SIGNAL \inst1|inst|count[7]~22_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~13\ : std_logic;
SIGNAL \inst|ball_instance|Add3~14_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|inst|temp~regout\ : std_logic;
SIGNAL \inst1|inst2|reg2|Q~regout\ : std_logic;
SIGNAL \inst1|inst2|reg1|Q~regout\ : std_logic;
SIGNAL \inst1|inst2|fall_edge~combout\ : std_logic;
SIGNAL \inst1|inst3|state.aEnd~regout\ : std_logic;
SIGNAL \inst1|inst3|state.sEnd~regout\ : std_logic;
SIGNAL \inst1|inst3|next_state~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|inst|temp~0_combout\ : std_logic;
SIGNAL \inst1|ins3t|comb~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[0]~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion~3_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[9]~8_combout\ : std_logic;
SIGNAL \ps2clk~combout\ : std_logic;
SIGNAL \inst1|inst2|fall_edge~clkctrl_outclk\ : std_logic;
SIGNAL \inst|vgaSync_instance|vs~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst|temp~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst2|reg1|Q~feeder_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|vgaSync_instance|clkdiv~0_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|clkdiv~regout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~1\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~3\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~5\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~7\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~9\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hc~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~11\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~13\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~15\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hc~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal1~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~15\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~17\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|vc~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal1~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|vc~3_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~1\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~3\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|vc~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~5\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|vc~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~7\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~9\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~11\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~13\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|blank_proc~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|blank_proc~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|clkdiv~clkctrl_outclk\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal2~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal2~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Equal2~2_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|vs~regout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~17\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hsync_proc~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hsync_proc~1_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hs~regout\ : std_logic;
SIGNAL \inst|vgaSync_instance|hc~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[0]~10_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~0_combout\ : std_logic;
SIGNAL \ps2data~combout\ : std_logic;
SIGNAL \inst1|ins3t|dataIn[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|ins3t|dataIn[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|ins3t|dataIn[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|ins3t|count[2]~3_combout\ : std_logic;
SIGNAL \inst1|ins3t|count~2_combout\ : std_logic;
SIGNAL \inst1|ins3t|count~1_combout\ : std_logic;
SIGNAL \inst1|ins3t|count~0_combout\ : std_logic;
SIGNAL \inst1|ins3t|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|ins3t|keyData[7]~0_combout\ : std_logic;
SIGNAL \inst1|ins3t|dataIn[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|ins3t|keyData[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector4~2_combout\ : std_logic;
SIGNAL \inst1|ins3t|keyRed~regout\ : std_logic;
SIGNAL \inst1|ins3t|keyReady~combout\ : std_logic;
SIGNAL \inst1|inst3|key~regout\ : std_logic;
SIGNAL \inst1|inst3|control_reg~0_combout\ : std_logic;
SIGNAL \inst1|inst3|state.d~regout\ : std_logic;
SIGNAL \inst1|inst3|dataOut[2]~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|inst3|state.dEnd~regout\ : std_logic;
SIGNAL \inst1|inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|inst3|state.wEnd~regout\ : std_logic;
SIGNAL \inst1|inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector0~2_combout\ : std_logic;
SIGNAL \inst1|inst3|state.idle~regout\ : std_logic;
SIGNAL \inst1|inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst1|inst3|state.s~regout\ : std_logic;
SIGNAL \inst1|inst3|dataOut[1]~1_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst1|inst3|state.w~regout\ : std_logic;
SIGNAL \inst1|inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst1|inst3|state.a~regout\ : std_logic;
SIGNAL \inst1|inst3|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|dataBuff[3]~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|keyAck~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|dataAck~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|dataAck~regout\ : std_logic;
SIGNAL \inst|ball_instance|interface~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|keyAck~regout\ : std_logic;
SIGNAL \inst|ball_instance|dataBuff[0]~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst3|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|dataBuff[0]~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Equal0~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Equal2~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Equal2~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Equal3~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[0]~11\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[1]~13\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[2]~15\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[3]~17\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[4]~19\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[5]~21\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[6]~22_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[2]~14_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~1\ : std_logic;
SIGNAL \inst|ball_instance|Add2~3\ : std_logic;
SIGNAL \inst|ball_instance|Add2~5\ : std_logic;
SIGNAL \inst|ball_instance|Add2~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[6]~23\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[7]~25\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[8]~27\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[9]~28_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[7]~24_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~7\ : std_logic;
SIGNAL \inst|ball_instance|Add2~9\ : std_logic;
SIGNAL \inst|ball_instance|Add2~11\ : std_logic;
SIGNAL \inst|ball_instance|Add2~12_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan2~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~10_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~8_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[8]~26_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[5]~20_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[4]~18_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[3]~16_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~1_cout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~3\ : std_logic;
SIGNAL \inst|ball_instance|Add3~5\ : std_logic;
SIGNAL \inst|ball_instance|Add3~7\ : std_logic;
SIGNAL \inst|ball_instance|Add3~9\ : std_logic;
SIGNAL \inst|ball_instance|Add3~11\ : std_logic;
SIGNAL \inst|ball_instance|Add3~12_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~10_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add3~8_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[0]~5_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[9]~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add2~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[9]~7_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_motion[9]~9_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_X_pos[1]~12_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~1\ : std_logic;
SIGNAL \inst|Color_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~3\ : std_logic;
SIGNAL \inst|Color_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~5\ : std_logic;
SIGNAL \inst|Color_instance|Add0~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~7\ : std_logic;
SIGNAL \inst|Color_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~9\ : std_logic;
SIGNAL \inst|Color_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~11\ : std_logic;
SIGNAL \inst|Color_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~13\ : std_logic;
SIGNAL \inst|Color_instance|Add0~14_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~15\ : std_logic;
SIGNAL \inst|Color_instance|Add0~16_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add0~17\ : std_logic;
SIGNAL \inst|Color_instance|Add0~18_combout\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~1_cout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~3\ : std_logic;
SIGNAL \inst|ball_instance|Add1~5\ : std_logic;
SIGNAL \inst|ball_instance|Add1~7\ : std_logic;
SIGNAL \inst|ball_instance|Add1~9\ : std_logic;
SIGNAL \inst|ball_instance|Add1~11\ : std_logic;
SIGNAL \inst|ball_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add1~13\ : std_logic;
SIGNAL \inst|ball_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~1\ : std_logic;
SIGNAL \inst|ball_instance|Add0~3\ : std_logic;
SIGNAL \inst|ball_instance|Add0~5\ : std_logic;
SIGNAL \inst|ball_instance|Add0~7\ : std_logic;
SIGNAL \inst|ball_instance|Add0~8_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~9\ : std_logic;
SIGNAL \inst|ball_instance|Add0~10_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[9]~8_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[9]~9_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[9]~10_combout\ : std_logic;
SIGNAL \inst|ball_instance|Add0~11\ : std_logic;
SIGNAL \inst|ball_instance|Add0~12_combout\ : std_logic;
SIGNAL \inst|ball_instance|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Move_Ball~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[9]~7_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[9]~11_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion~0_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion~1_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[0]~4_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[0]~5_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_motion[0]~6_combout\ : std_logic;
SIGNAL \inst|ball_instance|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~1\ : std_logic;
SIGNAL \inst|Color_instance|Add1~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~3\ : std_logic;
SIGNAL \inst|Color_instance|Add1~4_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~5\ : std_logic;
SIGNAL \inst|Color_instance|Add1~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~7\ : std_logic;
SIGNAL \inst|Color_instance|Add1~8_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~9\ : std_logic;
SIGNAL \inst|Color_instance|Add1~10_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~11\ : std_logic;
SIGNAL \inst|Color_instance|Add1~12_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~13\ : std_logic;
SIGNAL \inst|Color_instance|Add1~14_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~15\ : std_logic;
SIGNAL \inst|Color_instance|Add1~16_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add1~17\ : std_logic;
SIGNAL \inst|Color_instance|Add1~18_combout\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~11\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~12\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~13\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~14\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_mult1~15\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~1\ : std_logic;
SIGNAL \inst|Color_instance|Add2~3\ : std_logic;
SIGNAL \inst|Color_instance|Add2~5\ : std_logic;
SIGNAL \inst|Color_instance|Add2~7\ : std_logic;
SIGNAL \inst|Color_instance|Add2~9\ : std_logic;
SIGNAL \inst|Color_instance|Add2~11\ : std_logic;
SIGNAL \inst|Color_instance|Add2~13\ : std_logic;
SIGNAL \inst|Color_instance|Add2~15\ : std_logic;
SIGNAL \inst|Color_instance|Add2~17\ : std_logic;
SIGNAL \inst|Color_instance|Add2~19\ : std_logic;
SIGNAL \inst|Color_instance|Add2~21\ : std_logic;
SIGNAL \inst|Color_instance|Add2~23\ : std_logic;
SIGNAL \inst|Color_instance|Add2~25\ : std_logic;
SIGNAL \inst|Color_instance|Add2~27\ : std_logic;
SIGNAL \inst|Color_instance|Add2~29\ : std_logic;
SIGNAL \inst|Color_instance|Add2~31\ : std_logic;
SIGNAL \inst|Color_instance|Add2~33\ : std_logic;
SIGNAL \inst|Color_instance|Add2~35\ : std_logic;
SIGNAL \inst|Color_instance|Add2~37\ : std_logic;
SIGNAL \inst|Color_instance|Add2~38_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~16_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~12_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~10_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~8_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~22_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~24_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~20_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~34_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~26_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~28_combout\ : std_logic;
SIGNAL \inst|Color_instance|Add2~32_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|Color_instance|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[9]~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[8]~1_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[7]~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[6]~3_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[5]~4_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[4]~5_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[3]~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[2]~7_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|Add0~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[1]~8_combout\ : std_logic;
SIGNAL \inst|Color_instance|Blue[0]~9_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[9]~0_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[8]~1_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[7]~2_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[6]~3_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[5]~4_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[4]~5_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[3]~6_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[2]~7_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[1]~8_combout\ : std_logic;
SIGNAL \inst|Color_instance|Green[0]~9_combout\ : std_logic;
SIGNAL \inst4|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|Mux1~2_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|ins3t|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ball_instance|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ins3t|keyData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|vgaSync_instance|vc\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ins3t|dataIn\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ball_instance|dataBuff\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ball_instance|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_instance|Ball_X_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_instance|Ball_X_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|vgaSync_instance|hc\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Reset~combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|inst3|ALT_INV_state.d~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|vgaSync_instance|ALT_INV_blank_proc~1_combout\ : std_logic;

BEGIN

VGA_clk <= ww_VGA_clk;
ww_Clk <= Clk;
ww_Reset <= Reset;
ww_ps2data <= ps2data;
ww_ps2clk <= ps2clk;
sync <= ww_sync;
blank <= ww_blank;
vs <= ww_vs;
hs <= ww_hs;
Blue <= ww_Blue;
Code0 <= ww_Code0;
Code1 <= ww_Code1;
Green <= ww_Green;
keyh <= ww_keyh;
keyl <= ww_keyl;
Red <= ww_Red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\
& \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\
& \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~dataout\
& \inst|Color_instance|Mult1|auto_generated|mac_mult1~15\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~14\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~13\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~12\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~11\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~10\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~9\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~8\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~7\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~6\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~5\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~4\ & 
\inst|Color_instance|Mult1|auto_generated|mac_mult1~3\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~2\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~1\ & \inst|Color_instance|Mult1|auto_generated|mac_mult1~0\);

\inst|Color_instance|Mult1|auto_generated|mac_out2~0\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|Color_instance|Mult1|auto_generated|mac_out2~1\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|Color_instance|Mult1|auto_generated|mac_out2~2\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|Color_instance|Mult1|auto_generated|mac_out2~3\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|Color_instance|Mult1|auto_generated|mac_out2~4\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|Color_instance|Mult1|auto_generated|mac_out2~5\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|Color_instance|Mult1|auto_generated|mac_out2~6\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|Color_instance|Mult1|auto_generated|mac_out2~7\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|Color_instance|Mult1|auto_generated|mac_out2~8\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|Color_instance|Mult1|auto_generated|mac_out2~9\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|Color_instance|Mult1|auto_generated|mac_out2~10\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|Color_instance|Mult1|auto_generated|mac_out2~11\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|Color_instance|Mult1|auto_generated|mac_out2~12\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|Color_instance|Mult1|auto_generated|mac_out2~13\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|Color_instance|Mult1|auto_generated|mac_out2~14\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|Color_instance|Mult1|auto_generated|mac_out2~15\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst|Color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\
& \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\
& \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~dataout\
& \inst|Color_instance|Mult0|auto_generated|mac_mult1~15\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~14\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~13\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~12\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~11\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~10\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~9\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~8\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~7\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~6\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~5\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~4\ & 
\inst|Color_instance|Mult0|auto_generated|mac_mult1~3\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~2\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~1\ & \inst|Color_instance|Mult0|auto_generated|mac_mult1~0\);

\inst|Color_instance|Mult0|auto_generated|mac_out2~0\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|Color_instance|Mult0|auto_generated|mac_out2~1\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|Color_instance|Mult0|auto_generated|mac_out2~2\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|Color_instance|Mult0|auto_generated|mac_out2~3\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|Color_instance|Mult0|auto_generated|mac_out2~4\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|Color_instance|Mult0|auto_generated|mac_out2~5\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|Color_instance|Mult0|auto_generated|mac_out2~6\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|Color_instance|Mult0|auto_generated|mac_out2~7\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|Color_instance|Mult0|auto_generated|mac_out2~8\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|Color_instance|Mult0|auto_generated|mac_out2~9\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|Color_instance|Mult0|auto_generated|mac_out2~10\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|Color_instance|Mult0|auto_generated|mac_out2~11\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|Color_instance|Mult0|auto_generated|mac_out2~12\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|Color_instance|Mult0|auto_generated|mac_out2~13\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|Color_instance|Mult0|auto_generated|mac_out2~14\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|Color_instance|Mult0|auto_generated|mac_out2~15\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|Color_instance|Add1~18_combout\ & \inst|Color_instance|Add1~16_combout\ & \inst|Color_instance|Add1~14_combout\ & \inst|Color_instance|Add1~12_combout\ & 
\inst|Color_instance|Add1~10_combout\ & \inst|Color_instance|Add1~8_combout\ & \inst|Color_instance|Add1~6_combout\ & \inst|Color_instance|Add1~4_combout\ & \inst|Color_instance|Add1~2_combout\ & \inst|Color_instance|Add1~0_combout\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\inst|Color_instance|Add1~18_combout\ & \inst|Color_instance|Add1~16_combout\ & \inst|Color_instance|Add1~14_combout\ & \inst|Color_instance|Add1~12_combout\ & 
\inst|Color_instance|Add1~10_combout\ & \inst|Color_instance|Add1~8_combout\ & \inst|Color_instance|Add1~6_combout\ & \inst|Color_instance|Add1~4_combout\ & \inst|Color_instance|Add1~2_combout\ & \inst|Color_instance|Add1~0_combout\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\inst|Color_instance|Mult1|auto_generated|mac_mult1~0\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~1\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~2\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~3\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~4\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~5\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~6\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~7\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~8\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~9\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~10\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~11\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~12\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~13\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~14\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~15\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~dataout\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst|Color_instance|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|Color_instance|Add0~18_combout\ & \inst|Color_instance|Add0~16_combout\ & \inst|Color_instance|Add0~14_combout\ & \inst|Color_instance|Add0~12_combout\ & 
\inst|Color_instance|Add0~10_combout\ & \inst|Color_instance|Add0~8_combout\ & \inst|Color_instance|Add0~6_combout\ & \inst|Color_instance|Add0~4_combout\ & \inst|Color_instance|Add0~2_combout\ & \inst|Color_instance|Add0~0_combout\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst|Color_instance|Add0~18_combout\ & \inst|Color_instance|Add0~16_combout\ & \inst|Color_instance|Add0~14_combout\ & \inst|Color_instance|Add0~12_combout\ & 
\inst|Color_instance|Add0~10_combout\ & \inst|Color_instance|Add0~8_combout\ & \inst|Color_instance|Add0~6_combout\ & \inst|Color_instance|Add0~4_combout\ & \inst|Color_instance|Add0~2_combout\ & \inst|Color_instance|Add0~0_combout\ & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd);

\inst|Color_instance|Mult0|auto_generated|mac_mult1~0\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~1\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~2\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~3\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~4\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~5\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~6\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~7\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~8\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~9\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~10\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~11\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~12\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~13\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~14\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~15\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~dataout\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst|Color_instance|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst1|inst2|fall_edge~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|inst2|fall_edge~combout\);

\inst|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|vgaSync_instance|clkdiv~regout\);

\inst|vgaSync_instance|vs~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|vgaSync_instance|vs~regout\);

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);

\inst1|inst|temp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|inst|temp~regout\);
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;
\inst1|inst3|ALT_INV_WideOr5~0_combout\ <= NOT \inst1|inst3|WideOr5~0_combout\;
\inst1|inst3|ALT_INV_state.d~regout\ <= NOT \inst1|inst3|state.d~regout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst|vgaSync_instance|ALT_INV_blank_proc~1_combout\ <= NOT \inst|vgaSync_instance|blank_proc~1_combout\;

-- Location: DSPOUT_X39_Y29_N2
\inst|Color_instance|Mult1|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Color_instance|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X39_Y28_N2
\inst|Color_instance|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Color_instance|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y29_N12
\inst|Color_instance|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~0_combout\ = (\inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\ & (\inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\ & 
-- (\inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\ & VCC))
-- \inst|Color_instance|Add2~1\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\ & \inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~dataout\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \inst|Color_instance|Add2~0_combout\,
	cout => \inst|Color_instance|Add2~1\);

-- Location: LCCOMB_X38_Y29_N14
\inst|Color_instance|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~2_combout\ = (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & (\inst|Color_instance|Add2~1\ & VCC)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & (!\inst|Color_instance|Add2~1\)))) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & 
-- (!\inst|Color_instance|Add2~1\)) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & ((\inst|Color_instance|Add2~1\) # (GND)))))
-- \inst|Color_instance|Add2~3\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\ & !\inst|Color_instance|Add2~1\)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((!\inst|Color_instance|Add2~1\) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~1\,
	combout => \inst|Color_instance|Add2~2_combout\,
	cout => \inst|Color_instance|Add2~3\);

-- Location: LCCOMB_X38_Y29_N16
\inst|Color_instance|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~4_combout\ = ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ $ (!\inst|Color_instance|Add2~3\)))) # (GND)
-- \inst|Color_instance|Add2~5\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\) # (!\inst|Color_instance|Add2~3\))) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\ & !\inst|Color_instance|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~3\,
	combout => \inst|Color_instance|Add2~4_combout\,
	cout => \inst|Color_instance|Add2~5\);

-- Location: LCCOMB_X38_Y29_N18
\inst|Color_instance|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~6_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\inst|Color_instance|Add2~5\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\inst|Color_instance|Add2~5\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- (!\inst|Color_instance|Add2~5\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\inst|Color_instance|Add2~5\) # (GND)))))
-- \inst|Color_instance|Add2~7\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\ & !\inst|Color_instance|Add2~5\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\ & ((!\inst|Color_instance|Add2~5\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT3\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~5\,
	combout => \inst|Color_instance|Add2~6_combout\,
	cout => \inst|Color_instance|Add2~7\);

-- Location: LCCOMB_X38_Y29_N26
\inst|Color_instance|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~14_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\inst|Color_instance|Add2~13\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\inst|Color_instance|Add2~13\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\inst|Color_instance|Add2~13\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\inst|Color_instance|Add2~13\) # (GND)))))
-- \inst|Color_instance|Add2~15\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\inst|Color_instance|Add2~13\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\ & ((!\inst|Color_instance|Add2~13\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT7\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~13\,
	combout => \inst|Color_instance|Add2~14_combout\,
	cout => \inst|Color_instance|Add2~15\);

-- Location: LCCOMB_X38_Y29_N30
\inst|Color_instance|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~18_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\inst|Color_instance|Add2~17\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\inst|Color_instance|Add2~17\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\inst|Color_instance|Add2~17\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\inst|Color_instance|Add2~17\) # (GND)))))
-- \inst|Color_instance|Add2~19\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\ & !\inst|Color_instance|Add2~17\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\ & ((!\inst|Color_instance|Add2~17\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT9\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~17\,
	combout => \inst|Color_instance|Add2~18_combout\,
	cout => \inst|Color_instance|Add2~19\);

-- Location: LCCOMB_X38_Y28_N10
\inst|Color_instance|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~30_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & (\inst|Color_instance|Add2~29\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & (!\inst|Color_instance|Add2~29\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- (!\inst|Color_instance|Add2~29\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & ((\inst|Color_instance|Add2~29\) # (GND)))))
-- \inst|Color_instance|Add2~31\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\ & !\inst|Color_instance|Add2~29\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\ & ((!\inst|Color_instance|Add2~29\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT15\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~29\,
	combout => \inst|Color_instance|Add2~30_combout\,
	cout => \inst|Color_instance|Add2~31\);

-- Location: LCCOMB_X38_Y28_N16
\inst|Color_instance|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~36_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (!\inst|Color_instance|Add2~35\)))) # (GND)
-- \inst|Color_instance|Add2~37\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\) # (!\inst|Color_instance|Add2~35\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\inst|Color_instance|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~35\,
	combout => \inst|Color_instance|Add2~36_combout\,
	cout => \inst|Color_instance|Add2~37\);

-- Location: LCFF_X32_Y35_N17
\inst1|inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[0]~8_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(0));

-- Location: LCFF_X32_Y35_N19
\inst1|inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[1]~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(1));

-- Location: LCFF_X32_Y35_N21
\inst1|inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[2]~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(2));

-- Location: LCFF_X32_Y35_N23
\inst1|inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[3]~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(3));

-- Location: LCFF_X32_Y35_N25
\inst1|inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[4]~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(4));

-- Location: LCFF_X32_Y35_N27
\inst1|inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[5]~18_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(5));

-- Location: LCFF_X32_Y35_N29
\inst1|inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[6]~20_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(6));

-- Location: LCFF_X32_Y35_N31
\inst1|inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|count[7]~22_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|count\(7));

-- Location: LCCOMB_X32_Y35_N16
\inst1|inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[0]~8_combout\ = \inst1|inst|count\(0) $ (VCC)
-- \inst1|inst|count[0]~9\ = CARRY(\inst1|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(0),
	datad => VCC,
	combout => \inst1|inst|count[0]~8_combout\,
	cout => \inst1|inst|count[0]~9\);

-- Location: LCCOMB_X32_Y35_N18
\inst1|inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[1]~10_combout\ = (\inst1|inst|count\(1) & (!\inst1|inst|count[0]~9\)) # (!\inst1|inst|count\(1) & ((\inst1|inst|count[0]~9\) # (GND)))
-- \inst1|inst|count[1]~11\ = CARRY((!\inst1|inst|count[0]~9\) # (!\inst1|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|count\(1),
	datad => VCC,
	cin => \inst1|inst|count[0]~9\,
	combout => \inst1|inst|count[1]~10_combout\,
	cout => \inst1|inst|count[1]~11\);

-- Location: LCCOMB_X32_Y35_N20
\inst1|inst|count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[2]~12_combout\ = (\inst1|inst|count\(2) & (\inst1|inst|count[1]~11\ $ (GND))) # (!\inst1|inst|count\(2) & (!\inst1|inst|count[1]~11\ & VCC))
-- \inst1|inst|count[2]~13\ = CARRY((\inst1|inst|count\(2) & !\inst1|inst|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(2),
	datad => VCC,
	cin => \inst1|inst|count[1]~11\,
	combout => \inst1|inst|count[2]~12_combout\,
	cout => \inst1|inst|count[2]~13\);

-- Location: LCCOMB_X32_Y35_N22
\inst1|inst|count[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[3]~14_combout\ = (\inst1|inst|count\(3) & (!\inst1|inst|count[2]~13\)) # (!\inst1|inst|count\(3) & ((\inst1|inst|count[2]~13\) # (GND)))
-- \inst1|inst|count[3]~15\ = CARRY((!\inst1|inst|count[2]~13\) # (!\inst1|inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|count\(3),
	datad => VCC,
	cin => \inst1|inst|count[2]~13\,
	combout => \inst1|inst|count[3]~14_combout\,
	cout => \inst1|inst|count[3]~15\);

-- Location: LCCOMB_X32_Y35_N24
\inst1|inst|count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[4]~16_combout\ = (\inst1|inst|count\(4) & (\inst1|inst|count[3]~15\ $ (GND))) # (!\inst1|inst|count\(4) & (!\inst1|inst|count[3]~15\ & VCC))
-- \inst1|inst|count[4]~17\ = CARRY((\inst1|inst|count\(4) & !\inst1|inst|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(4),
	datad => VCC,
	cin => \inst1|inst|count[3]~15\,
	combout => \inst1|inst|count[4]~16_combout\,
	cout => \inst1|inst|count[4]~17\);

-- Location: LCCOMB_X32_Y35_N26
\inst1|inst|count[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[5]~18_combout\ = (\inst1|inst|count\(5) & (!\inst1|inst|count[4]~17\)) # (!\inst1|inst|count\(5) & ((\inst1|inst|count[4]~17\) # (GND)))
-- \inst1|inst|count[5]~19\ = CARRY((!\inst1|inst|count[4]~17\) # (!\inst1|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|count\(5),
	datad => VCC,
	cin => \inst1|inst|count[4]~17\,
	combout => \inst1|inst|count[5]~18_combout\,
	cout => \inst1|inst|count[5]~19\);

-- Location: LCCOMB_X32_Y35_N28
\inst1|inst|count[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[6]~20_combout\ = (\inst1|inst|count\(6) & (\inst1|inst|count[5]~19\ $ (GND))) # (!\inst1|inst|count\(6) & (!\inst1|inst|count[5]~19\ & VCC))
-- \inst1|inst|count[6]~21\ = CARRY((\inst1|inst|count\(6) & !\inst1|inst|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|count\(6),
	datad => VCC,
	cin => \inst1|inst|count[5]~19\,
	combout => \inst1|inst|count[6]~20_combout\,
	cout => \inst1|inst|count[6]~21\);

-- Location: LCCOMB_X32_Y35_N30
\inst1|inst|count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|count[7]~22_combout\ = \inst1|inst|count\(7) $ (\inst1|inst|count[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(7),
	cin => \inst1|inst|count[6]~21\,
	combout => \inst1|inst|count[7]~22_combout\);

-- Location: LCCOMB_X53_Y28_N18
\inst|ball_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~2_combout\ = (\inst|ball_instance|Ball_Y_pos\(3) & (\inst|ball_instance|Add1~1_cout\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(3) & (!\inst|ball_instance|Add1~1_cout\))
-- \inst|ball_instance|Add1~3\ = CARRY((!\inst|ball_instance|Ball_Y_pos\(3) & !\inst|ball_instance|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|ball_instance|Add1~1_cout\,
	combout => \inst|ball_instance|Add1~2_combout\,
	cout => \inst|ball_instance|Add1~3\);

-- Location: LCCOMB_X53_Y28_N20
\inst|ball_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~4_combout\ = (\inst|ball_instance|Ball_Y_pos\(4) & (\inst|ball_instance|Add1~3\ $ (GND))) # (!\inst|ball_instance|Ball_Y_pos\(4) & ((GND) # (!\inst|ball_instance|Add1~3\)))
-- \inst|ball_instance|Add1~5\ = CARRY((!\inst|ball_instance|Add1~3\) # (!\inst|ball_instance|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|ball_instance|Add1~3\,
	combout => \inst|ball_instance|Add1~4_combout\,
	cout => \inst|ball_instance|Add1~5\);

-- Location: LCCOMB_X54_Y28_N6
\inst|ball_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~0_combout\ = (\inst|ball_instance|Ball_Y_pos\(2) & (\inst|ball_instance|Ball_Y_pos\(3) $ (VCC))) # (!\inst|ball_instance|Ball_Y_pos\(2) & (\inst|ball_instance|Ball_Y_pos\(3) & VCC))
-- \inst|ball_instance|Add0~1\ = CARRY((\inst|ball_instance|Ball_Y_pos\(2) & \inst|ball_instance|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(2),
	datab => \inst|ball_instance|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst|ball_instance|Add0~0_combout\,
	cout => \inst|ball_instance|Add0~1\);

-- Location: LCCOMB_X54_Y28_N8
\inst|ball_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~2_combout\ = (\inst|ball_instance|Ball_Y_pos\(4) & ((\inst|ball_instance|Add0~1\) # (GND))) # (!\inst|ball_instance|Ball_Y_pos\(4) & (!\inst|ball_instance|Add0~1\))
-- \inst|ball_instance|Add0~3\ = CARRY((\inst|ball_instance|Ball_Y_pos\(4)) # (!\inst|ball_instance|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|ball_instance|Add0~1\,
	combout => \inst|ball_instance|Add0~2_combout\,
	cout => \inst|ball_instance|Add0~3\);

-- Location: LCCOMB_X54_Y28_N12
\inst|ball_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~6_combout\ = (\inst|ball_instance|Ball_Y_pos\(6) & ((\inst|ball_instance|Add0~5\) # (GND))) # (!\inst|ball_instance|Ball_Y_pos\(6) & (!\inst|ball_instance|Add0~5\))
-- \inst|ball_instance|Add0~7\ = CARRY((\inst|ball_instance|Ball_Y_pos\(6)) # (!\inst|ball_instance|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|ball_instance|Add0~5\,
	combout => \inst|ball_instance|Add0~6_combout\,
	cout => \inst|ball_instance|Add0~7\);

-- Location: LCCOMB_X43_Y28_N20
\inst|ball_instance|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~4_combout\ = (\inst|ball_instance|Ball_X_pos\(5) & (\inst|ball_instance|Add2~3\ $ (GND))) # (!\inst|ball_instance|Ball_X_pos\(5) & (!\inst|ball_instance|Add2~3\ & VCC))
-- \inst|ball_instance|Add2~5\ = CARRY((\inst|ball_instance|Ball_X_pos\(5) & !\inst|ball_instance|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|ball_instance|Add2~3\,
	combout => \inst|ball_instance|Add2~4_combout\,
	cout => \inst|ball_instance|Add2~5\);

-- Location: LCCOMB_X41_Y28_N16
\inst|ball_instance|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~6_combout\ = (\inst|ball_instance|Ball_X_pos\(5) & (\inst|ball_instance|Add3~5\ & VCC)) # (!\inst|ball_instance|Ball_X_pos\(5) & (!\inst|ball_instance|Add3~5\))
-- \inst|ball_instance|Add3~7\ = CARRY((!\inst|ball_instance|Ball_X_pos\(5) & !\inst|ball_instance|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|ball_instance|Add3~5\,
	combout => \inst|ball_instance|Add3~6_combout\,
	cout => \inst|ball_instance|Add3~7\);

-- Location: LCCOMB_X41_Y28_N22
\inst|ball_instance|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~12_combout\ = (\inst|ball_instance|Ball_X_pos\(8) & (\inst|ball_instance|Add3~11\ $ (GND))) # (!\inst|ball_instance|Ball_X_pos\(8) & ((GND) # (!\inst|ball_instance|Add3~11\)))
-- \inst|ball_instance|Add3~13\ = CARRY((!\inst|ball_instance|Add3~11\) # (!\inst|ball_instance|Ball_X_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|ball_instance|Add3~11\,
	combout => \inst|ball_instance|Add3~12_combout\,
	cout => \inst|ball_instance|Add3~13\);

-- Location: LCCOMB_X41_Y28_N24
\inst|ball_instance|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~14_combout\ = \inst|ball_instance|Add3~13\ $ (!\inst|ball_instance|Ball_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ball_instance|Ball_X_pos\(9),
	cin => \inst|ball_instance|Add3~13\,
	combout => \inst|ball_instance|Add3~14_combout\);

-- Location: LCCOMB_X38_Y29_N10
\inst|Color_instance|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~2_combout\ = (\inst|Color_instance|Add2~0_combout\) # ((\inst|Color_instance|Add2~2_combout\) # ((\inst|Color_instance|Add2~4_combout\) # (\inst|Color_instance|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Add2~0_combout\,
	datab => \inst|Color_instance|Add2~2_combout\,
	datac => \inst|Color_instance|Add2~4_combout\,
	datad => \inst|Color_instance|Add2~6_combout\,
	combout => \inst|Color_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y26_N8
\inst1|inst3|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector4~0_combout\ = (\inst1|inst3|Equal3~2_combout\ & ((\inst1|inst3|state.s~regout\) # ((\inst1|inst3|dataOut[2]~0_combout\) # (!\inst1|inst3|state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.s~regout\,
	datab => \inst1|inst3|Equal3~2_combout\,
	datac => \inst1|inst3|state.idle~regout\,
	datad => \inst1|inst3|dataOut[2]~0_combout\,
	combout => \inst1|inst3|Selector4~0_combout\);

-- Location: LCFF_X31_Y35_N11
\inst1|inst|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst1|inst|temp~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst|temp~regout\);

-- Location: LCFF_X31_Y35_N1
\inst1|inst2|reg2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~regout\,
	sdata => \inst1|inst2|reg1|Q~regout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|reg2|Q~regout\);

-- Location: LCFF_X32_Y35_N15
\inst1|inst2|reg1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst2|reg1|Q~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2|reg1|Q~regout\);

-- Location: LCCOMB_X31_Y35_N0
\inst1|inst2|fall_edge\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|fall_edge~combout\ = LCELL((!\inst1|inst2|reg1|Q~regout\ & \inst1|inst2|reg2|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|reg1|Q~regout\,
	datac => \inst1|inst2|reg2|Q~regout\,
	combout => \inst1|inst2|fall_edge~combout\);

-- Location: LCFF_X44_Y26_N9
\inst1|inst3|state.aEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector6~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.aEnd~regout\);

-- Location: LCFF_X43_Y26_N29
\inst1|inst3|state.sEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector7~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.sEnd~regout\);

-- Location: LCCOMB_X44_Y26_N20
\inst1|inst3|next_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|next_state~0_combout\ = (!\inst1|inst3|state.idle~regout\ & (((!\inst1|inst3|Equal2~0_combout\) # (!\inst1|inst3|Equal0~0_combout\)) # (!\inst1|ins3t|keyData\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|inst3|Equal0~0_combout\,
	datac => \inst1|inst3|Equal2~0_combout\,
	datad => \inst1|inst3|state.idle~regout\,
	combout => \inst1|inst3|next_state~0_combout\);

-- Location: LCCOMB_X32_Y35_N4
\inst1|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal0~0_combout\ = (\inst1|inst|count\(0) & (\inst1|inst|count\(1) & (\inst1|inst|count\(2) & \inst1|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(0),
	datab => \inst1|inst|count\(1),
	datac => \inst1|inst|count\(2),
	datad => \inst1|inst|count\(3),
	combout => \inst1|inst|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y35_N8
\inst1|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|Equal0~1_combout\ = (\inst1|inst|count\(4) & (\inst1|inst|count\(5) & (\inst1|inst|count\(7) & \inst1|inst|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|count\(4),
	datab => \inst1|inst|count\(5),
	datac => \inst1|inst|count\(7),
	datad => \inst1|inst|count\(6),
	combout => \inst1|inst|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y35_N10
\inst1|inst|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst|temp~0_combout\ = \inst1|inst|temp~regout\ $ (((\inst1|inst|Equal0~1_combout\ & \inst1|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst|Equal0~1_combout\,
	datac => \inst1|inst|temp~regout\,
	datad => \inst1|inst|Equal0~0_combout\,
	combout => \inst1|inst|temp~0_combout\);

-- Location: LCCOMB_X41_Y26_N24
\inst1|ins3t|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|comb~0_combout\ = (\inst1|inst3|key~regout\ & !\inst1|ins3t|keyRed~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|key~regout\,
	datac => \inst1|ins3t|keyRed~regout\,
	combout => \inst1|ins3t|comb~0_combout\);

-- Location: LCCOMB_X44_Y26_N8
\inst1|inst3|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector6~0_combout\ = (\inst1|inst3|state.a~regout\ & ((\inst1|inst3|Equal4~1_combout\) # ((\inst1|inst3|state.aEnd~regout\ & !\inst1|inst3|Equal1~0_combout\)))) # (!\inst1|inst3|state.a~regout\ & (((\inst1|inst3|state.aEnd~regout\ & 
-- !\inst1|inst3|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.a~regout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|state.aEnd~regout\,
	datad => \inst1|inst3|Equal1~0_combout\,
	combout => \inst1|inst3|Selector6~0_combout\);

-- Location: LCCOMB_X43_Y26_N28
\inst1|inst3|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector7~0_combout\ = (\inst1|inst3|state.s~regout\ & ((\inst1|inst3|Equal4~1_combout\) # ((\inst1|inst3|state.sEnd~regout\ & !\inst1|inst3|Equal2~1_combout\)))) # (!\inst1|inst3|state.s~regout\ & (((\inst1|inst3|state.sEnd~regout\ & 
-- !\inst1|inst3|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.s~regout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|state.sEnd~regout\,
	datad => \inst1|inst3|Equal2~1_combout\,
	combout => \inst1|inst3|Selector7~0_combout\);

-- Location: LCCOMB_X53_Y28_N10
\inst|ball_instance|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan1~0_combout\ = (\inst|ball_instance|Ball_Y_pos\(1)) # (((\inst|ball_instance|Ball_Y_pos\(0)) # (\inst|ball_instance|Add1~2_combout\)) # (!\inst|ball_instance|Ball_Y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(1),
	datab => \inst|ball_instance|Ball_Y_pos\(2),
	datac => \inst|ball_instance|Ball_Y_pos\(0),
	datad => \inst|ball_instance|Add1~2_combout\,
	combout => \inst|ball_instance|LessThan1~0_combout\);

-- Location: LCFF_X43_Y26_N31
\inst|ball_instance|dataBuff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst1|inst3|dataOut[2]~0_combout\,
	ena => \inst|ball_instance|dataBuff[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataBuff\(2));

-- Location: LCCOMB_X44_Y28_N16
\inst|ball_instance|Ball_X_motion[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[0]~0_combout\ = ((\inst|ball_instance|Equal0~0_combout\ & (!\inst|ball_instance|dataBuff\(0))) # (!\inst|ball_instance|Equal0~0_combout\ & ((\inst|ball_instance|Equal3~0_combout\)))) # 
-- (!\inst|ball_instance|keyAck~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Equal0~0_combout\,
	datab => \inst|ball_instance|dataBuff\(0),
	datac => \inst|ball_instance|keyAck~regout\,
	datad => \inst|ball_instance|Equal3~0_combout\,
	combout => \inst|ball_instance|Ball_X_motion[0]~0_combout\);

-- Location: LCCOMB_X44_Y28_N6
\inst|ball_instance|Ball_X_motion~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion~3_combout\ = (\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_motion\(0) & !\inst|ball_instance|keyAck~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datac => \inst|ball_instance|Ball_X_motion\(0),
	datad => \inst|ball_instance|keyAck~regout\,
	combout => \inst|ball_instance|Ball_X_motion~3_combout\);

-- Location: LCCOMB_X44_Y28_N30
\inst|ball_instance|Ball_X_motion[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[9]~8_combout\ = (\inst|ball_instance|Equal0~0_combout\ & (\inst|ball_instance|keyAck~regout\ & (!\inst|ball_instance|dataBuff\(0) & \inst|ball_instance|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Equal0~0_combout\,
	datab => \inst|ball_instance|keyAck~regout\,
	datac => \inst|ball_instance|dataBuff\(0),
	datad => \inst|ball_instance|LessThan3~2_combout\,
	combout => \inst|ball_instance|Ball_X_motion[9]~8_combout\);

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

-- Location: CLKCTRL_G11
\inst1|inst2|fall_edge~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst2|fall_edge~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst2|fall_edge~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\inst|vgaSync_instance|vs~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|vgaSync_instance|vs~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|vgaSync_instance|vs~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\inst1|inst|temp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|inst|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|inst|temp~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y35_N14
\inst1|inst2|reg1|Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst2|reg1|Q~feeder_combout\ = \ps2clk~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2clk~combout\,
	combout => \inst1|inst2|reg1|Q~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
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
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G2
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N2
\inst|vgaSync_instance|clkdiv~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|clkdiv~0_combout\ = !\inst|vgaSync_instance|clkdiv~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|clkdiv~regout\,
	combout => \inst|vgaSync_instance|clkdiv~0_combout\);

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

-- Location: LCFF_X31_Y35_N3
\inst|vgaSync_instance|clkdiv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|clkdiv~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|clkdiv~regout\);

-- Location: LCCOMB_X36_Y29_N4
\inst|vgaSync_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~0_combout\ = \inst|vgaSync_instance|vc\(0) $ (VCC)
-- \inst|vgaSync_instance|Add1~1\ = CARRY(\inst|vgaSync_instance|vc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(0),
	datad => VCC,
	combout => \inst|vgaSync_instance|Add1~0_combout\,
	cout => \inst|vgaSync_instance|Add1~1\);

-- Location: LCCOMB_X36_Y29_N12
\inst|vgaSync_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~8_combout\ = (\inst|vgaSync_instance|vc\(4) & (\inst|vgaSync_instance|Add1~7\ $ (GND))) # (!\inst|vgaSync_instance|vc\(4) & (!\inst|vgaSync_instance|Add1~7\ & VCC))
-- \inst|vgaSync_instance|Add1~9\ = CARRY((\inst|vgaSync_instance|vc\(4) & !\inst|vgaSync_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(4),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~7\,
	combout => \inst|vgaSync_instance|Add1~8_combout\,
	cout => \inst|vgaSync_instance|Add1~9\);

-- Location: LCCOMB_X36_Y30_N10
\inst|vgaSync_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~0_combout\ = \inst|vgaSync_instance|hc\(0) $ (VCC)
-- \inst|vgaSync_instance|Add0~1\ = CARRY(\inst|vgaSync_instance|hc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(0),
	datad => VCC,
	combout => \inst|vgaSync_instance|Add0~0_combout\,
	cout => \inst|vgaSync_instance|Add0~1\);

-- Location: LCFF_X36_Y30_N11
\inst|vgaSync_instance|hc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add0~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(0));

-- Location: LCCOMB_X36_Y30_N12
\inst|vgaSync_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~2_combout\ = (\inst|vgaSync_instance|hc\(1) & (!\inst|vgaSync_instance|Add0~1\)) # (!\inst|vgaSync_instance|hc\(1) & ((\inst|vgaSync_instance|Add0~1\) # (GND)))
-- \inst|vgaSync_instance|Add0~3\ = CARRY((!\inst|vgaSync_instance|Add0~1\) # (!\inst|vgaSync_instance|hc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(1),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~1\,
	combout => \inst|vgaSync_instance|Add0~2_combout\,
	cout => \inst|vgaSync_instance|Add0~3\);

-- Location: LCCOMB_X36_Y30_N14
\inst|vgaSync_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~4_combout\ = (\inst|vgaSync_instance|hc\(2) & (\inst|vgaSync_instance|Add0~3\ $ (GND))) # (!\inst|vgaSync_instance|hc\(2) & (!\inst|vgaSync_instance|Add0~3\ & VCC))
-- \inst|vgaSync_instance|Add0~5\ = CARRY((\inst|vgaSync_instance|hc\(2) & !\inst|vgaSync_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|hc\(2),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~3\,
	combout => \inst|vgaSync_instance|Add0~4_combout\,
	cout => \inst|vgaSync_instance|Add0~5\);

-- Location: LCFF_X36_Y30_N15
\inst|vgaSync_instance|hc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(2));

-- Location: LCCOMB_X36_Y30_N16
\inst|vgaSync_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~6_combout\ = (\inst|vgaSync_instance|hc\(3) & (!\inst|vgaSync_instance|Add0~5\)) # (!\inst|vgaSync_instance|hc\(3) & ((\inst|vgaSync_instance|Add0~5\) # (GND)))
-- \inst|vgaSync_instance|Add0~7\ = CARRY((!\inst|vgaSync_instance|Add0~5\) # (!\inst|vgaSync_instance|hc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(3),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~5\,
	combout => \inst|vgaSync_instance|Add0~6_combout\,
	cout => \inst|vgaSync_instance|Add0~7\);

-- Location: LCCOMB_X36_Y30_N18
\inst|vgaSync_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~8_combout\ = (\inst|vgaSync_instance|hc\(4) & (\inst|vgaSync_instance|Add0~7\ $ (GND))) # (!\inst|vgaSync_instance|hc\(4) & (!\inst|vgaSync_instance|Add0~7\ & VCC))
-- \inst|vgaSync_instance|Add0~9\ = CARRY((\inst|vgaSync_instance|hc\(4) & !\inst|vgaSync_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(4),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~7\,
	combout => \inst|vgaSync_instance|Add0~8_combout\,
	cout => \inst|vgaSync_instance|Add0~9\);

-- Location: LCFF_X36_Y30_N9
\inst|vgaSync_instance|hc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst|vgaSync_instance|Add0~8_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(4));

-- Location: LCCOMB_X36_Y30_N20
\inst|vgaSync_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~10_combout\ = (\inst|vgaSync_instance|hc\(5) & (!\inst|vgaSync_instance|Add0~9\)) # (!\inst|vgaSync_instance|hc\(5) & ((\inst|vgaSync_instance|Add0~9\) # (GND)))
-- \inst|vgaSync_instance|Add0~11\ = CARRY((!\inst|vgaSync_instance|Add0~9\) # (!\inst|vgaSync_instance|hc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|hc\(5),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~9\,
	combout => \inst|vgaSync_instance|Add0~10_combout\,
	cout => \inst|vgaSync_instance|Add0~11\);

-- Location: LCCOMB_X36_Y30_N30
\inst|vgaSync_instance|hc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|hc~2_combout\ = (\inst|vgaSync_instance|Add0~10_combout\ & !\inst|vgaSync_instance|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Add0~10_combout\,
	datad => \inst|vgaSync_instance|Equal0~2_combout\,
	combout => \inst|vgaSync_instance|hc~2_combout\);

-- Location: LCFF_X36_Y30_N31
\inst|vgaSync_instance|hc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|hc~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(5));

-- Location: LCCOMB_X36_Y30_N8
\inst|vgaSync_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal0~1_combout\ = (\inst|vgaSync_instance|hc\(3) & (\inst|vgaSync_instance|hc\(2) & (\inst|vgaSync_instance|hc\(4) & !\inst|vgaSync_instance|hc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(3),
	datab => \inst|vgaSync_instance|hc\(2),
	datac => \inst|vgaSync_instance|hc\(4),
	datad => \inst|vgaSync_instance|hc\(5),
	combout => \inst|vgaSync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y30_N22
\inst|vgaSync_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~12_combout\ = (\inst|vgaSync_instance|hc\(6) & (\inst|vgaSync_instance|Add0~11\ $ (GND))) # (!\inst|vgaSync_instance|hc\(6) & (!\inst|vgaSync_instance|Add0~11\ & VCC))
-- \inst|vgaSync_instance|Add0~13\ = CARRY((\inst|vgaSync_instance|hc\(6) & !\inst|vgaSync_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(6),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~11\,
	combout => \inst|vgaSync_instance|Add0~12_combout\,
	cout => \inst|vgaSync_instance|Add0~13\);

-- Location: LCCOMB_X36_Y30_N24
\inst|vgaSync_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~14_combout\ = (\inst|vgaSync_instance|hc\(7) & (!\inst|vgaSync_instance|Add0~13\)) # (!\inst|vgaSync_instance|hc\(7) & ((\inst|vgaSync_instance|Add0~13\) # (GND)))
-- \inst|vgaSync_instance|Add0~15\ = CARRY((!\inst|vgaSync_instance|Add0~13\) # (!\inst|vgaSync_instance|hc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|hc\(7),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~13\,
	combout => \inst|vgaSync_instance|Add0~14_combout\,
	cout => \inst|vgaSync_instance|Add0~15\);

-- Location: LCFF_X36_Y30_N25
\inst|vgaSync_instance|hc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add0~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(7));

-- Location: LCCOMB_X36_Y30_N26
\inst|vgaSync_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~16_combout\ = (\inst|vgaSync_instance|hc\(8) & (\inst|vgaSync_instance|Add0~15\ $ (GND))) # (!\inst|vgaSync_instance|hc\(8) & (!\inst|vgaSync_instance|Add0~15\ & VCC))
-- \inst|vgaSync_instance|Add0~17\ = CARRY((\inst|vgaSync_instance|hc\(8) & !\inst|vgaSync_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|hc\(8),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add0~15\,
	combout => \inst|vgaSync_instance|Add0~16_combout\,
	cout => \inst|vgaSync_instance|Add0~17\);

-- Location: LCCOMB_X36_Y30_N4
\inst|vgaSync_instance|hc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|hc~1_combout\ = (!\inst|vgaSync_instance|Equal0~2_combout\ & \inst|vgaSync_instance|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|Equal0~2_combout\,
	datad => \inst|vgaSync_instance|Add0~16_combout\,
	combout => \inst|vgaSync_instance|hc~1_combout\);

-- Location: LCFF_X36_Y30_N5
\inst|vgaSync_instance|hc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|hc~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(8));

-- Location: LCFF_X36_Y30_N1
\inst|vgaSync_instance|hc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst|vgaSync_instance|Add0~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(6));

-- Location: LCCOMB_X37_Y30_N30
\inst|vgaSync_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal0~0_combout\ = (\inst|vgaSync_instance|hc\(9) & (\inst|vgaSync_instance|hc\(8) & (!\inst|vgaSync_instance|hc\(6) & !\inst|vgaSync_instance|hc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(9),
	datab => \inst|vgaSync_instance|hc\(8),
	datac => \inst|vgaSync_instance|hc\(6),
	datad => \inst|vgaSync_instance|hc\(7),
	combout => \inst|vgaSync_instance|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y30_N6
\inst|vgaSync_instance|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal0~2_combout\ = (\inst|vgaSync_instance|hc\(1) & (\inst|vgaSync_instance|hc\(0) & (\inst|vgaSync_instance|Equal0~1_combout\ & \inst|vgaSync_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(1),
	datab => \inst|vgaSync_instance|hc\(0),
	datac => \inst|vgaSync_instance|Equal0~1_combout\,
	datad => \inst|vgaSync_instance|Equal0~0_combout\,
	combout => \inst|vgaSync_instance|Equal0~2_combout\);

-- Location: LCFF_X36_Y29_N13
\inst|vgaSync_instance|vc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add1~8_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(4));

-- Location: LCCOMB_X37_Y29_N14
\inst|vgaSync_instance|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal1~1_combout\ = (\inst|vgaSync_instance|vc\(2) & (\inst|vgaSync_instance|vc\(3) & (!\inst|vgaSync_instance|vc\(4) & !\inst|vgaSync_instance|vc\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(2),
	datab => \inst|vgaSync_instance|vc\(3),
	datac => \inst|vgaSync_instance|vc\(4),
	datad => \inst|vgaSync_instance|vc\(5),
	combout => \inst|vgaSync_instance|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y29_N18
\inst|vgaSync_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~14_combout\ = (\inst|vgaSync_instance|vc\(7) & (!\inst|vgaSync_instance|Add1~13\)) # (!\inst|vgaSync_instance|vc\(7) & ((\inst|vgaSync_instance|Add1~13\) # (GND)))
-- \inst|vgaSync_instance|Add1~15\ = CARRY((!\inst|vgaSync_instance|Add1~13\) # (!\inst|vgaSync_instance|vc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(7),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~13\,
	combout => \inst|vgaSync_instance|Add1~14_combout\,
	cout => \inst|vgaSync_instance|Add1~15\);

-- Location: LCCOMB_X36_Y29_N20
\inst|vgaSync_instance|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~16_combout\ = (\inst|vgaSync_instance|vc\(8) & (\inst|vgaSync_instance|Add1~15\ $ (GND))) # (!\inst|vgaSync_instance|vc\(8) & (!\inst|vgaSync_instance|Add1~15\ & VCC))
-- \inst|vgaSync_instance|Add1~17\ = CARRY((\inst|vgaSync_instance|vc\(8) & !\inst|vgaSync_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(8),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~15\,
	combout => \inst|vgaSync_instance|Add1~16_combout\,
	cout => \inst|vgaSync_instance|Add1~17\);

-- Location: LCFF_X36_Y29_N21
\inst|vgaSync_instance|vc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add1~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(8));

-- Location: LCCOMB_X36_Y29_N22
\inst|vgaSync_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~18_combout\ = \inst|vgaSync_instance|Add1~17\ $ (\inst|vgaSync_instance|vc\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|vgaSync_instance|vc\(9),
	cin => \inst|vgaSync_instance|Add1~17\,
	combout => \inst|vgaSync_instance|Add1~18_combout\);

-- Location: LCCOMB_X37_Y29_N2
\inst|vgaSync_instance|vc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|vc~0_combout\ = (!\inst|vgaSync_instance|Equal1~2_combout\ & \inst|vgaSync_instance|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Equal1~2_combout\,
	datad => \inst|vgaSync_instance|Add1~18_combout\,
	combout => \inst|vgaSync_instance|vc~0_combout\);

-- Location: LCFF_X37_Y29_N3
\inst|vgaSync_instance|vc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|vc~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(9));

-- Location: LCCOMB_X37_Y29_N12
\inst|vgaSync_instance|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal1~0_combout\ = (!\inst|vgaSync_instance|vc\(6) & (!\inst|vgaSync_instance|vc\(8) & (!\inst|vgaSync_instance|vc\(7) & \inst|vgaSync_instance|vc\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(6),
	datab => \inst|vgaSync_instance|vc\(8),
	datac => \inst|vgaSync_instance|vc\(7),
	datad => \inst|vgaSync_instance|vc\(9),
	combout => \inst|vgaSync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y29_N4
\inst|vgaSync_instance|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal1~2_combout\ = (!\inst|vgaSync_instance|vc\(0) & (!\inst|vgaSync_instance|vc\(1) & (\inst|vgaSync_instance|Equal1~1_combout\ & \inst|vgaSync_instance|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(0),
	datab => \inst|vgaSync_instance|vc\(1),
	datac => \inst|vgaSync_instance|Equal1~1_combout\,
	datad => \inst|vgaSync_instance|Equal1~0_combout\,
	combout => \inst|vgaSync_instance|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y29_N0
\inst|vgaSync_instance|vc~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|vc~3_combout\ = (\inst|vgaSync_instance|Add1~0_combout\ & !\inst|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Add1~0_combout\,
	datad => \inst|vgaSync_instance|Equal1~2_combout\,
	combout => \inst|vgaSync_instance|vc~3_combout\);

-- Location: LCFF_X36_Y29_N1
\inst|vgaSync_instance|vc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|vc~3_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(0));

-- Location: LCCOMB_X36_Y29_N6
\inst|vgaSync_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~2_combout\ = (\inst|vgaSync_instance|vc\(1) & (!\inst|vgaSync_instance|Add1~1\)) # (!\inst|vgaSync_instance|vc\(1) & ((\inst|vgaSync_instance|Add1~1\) # (GND)))
-- \inst|vgaSync_instance|Add1~3\ = CARRY((!\inst|vgaSync_instance|Add1~1\) # (!\inst|vgaSync_instance|vc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(1),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~1\,
	combout => \inst|vgaSync_instance|Add1~2_combout\,
	cout => \inst|vgaSync_instance|Add1~3\);

-- Location: LCFF_X36_Y29_N27
\inst|vgaSync_instance|vc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst|vgaSync_instance|Add1~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(1));

-- Location: LCCOMB_X36_Y29_N8
\inst|vgaSync_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~4_combout\ = (\inst|vgaSync_instance|vc\(2) & (\inst|vgaSync_instance|Add1~3\ $ (GND))) # (!\inst|vgaSync_instance|vc\(2) & (!\inst|vgaSync_instance|Add1~3\ & VCC))
-- \inst|vgaSync_instance|Add1~5\ = CARRY((\inst|vgaSync_instance|vc\(2) & !\inst|vgaSync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(2),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~3\,
	combout => \inst|vgaSync_instance|Add1~4_combout\,
	cout => \inst|vgaSync_instance|Add1~5\);

-- Location: LCCOMB_X36_Y29_N30
\inst|vgaSync_instance|vc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|vc~2_combout\ = (\inst|vgaSync_instance|Add1~4_combout\ & !\inst|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Add1~4_combout\,
	datad => \inst|vgaSync_instance|Equal1~2_combout\,
	combout => \inst|vgaSync_instance|vc~2_combout\);

-- Location: LCFF_X36_Y29_N31
\inst|vgaSync_instance|vc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|vc~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(2));

-- Location: LCCOMB_X36_Y29_N10
\inst|vgaSync_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~6_combout\ = (\inst|vgaSync_instance|vc\(3) & (!\inst|vgaSync_instance|Add1~5\)) # (!\inst|vgaSync_instance|vc\(3) & ((\inst|vgaSync_instance|Add1~5\) # (GND)))
-- \inst|vgaSync_instance|Add1~7\ = CARRY((!\inst|vgaSync_instance|Add1~5\) # (!\inst|vgaSync_instance|vc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(3),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~5\,
	combout => \inst|vgaSync_instance|Add1~6_combout\,
	cout => \inst|vgaSync_instance|Add1~7\);

-- Location: LCCOMB_X36_Y29_N28
\inst|vgaSync_instance|vc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|vc~1_combout\ = (\inst|vgaSync_instance|Add1~6_combout\ & !\inst|vgaSync_instance|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Add1~6_combout\,
	datad => \inst|vgaSync_instance|Equal1~2_combout\,
	combout => \inst|vgaSync_instance|vc~1_combout\);

-- Location: LCFF_X36_Y29_N29
\inst|vgaSync_instance|vc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|vc~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(3));

-- Location: LCCOMB_X36_Y29_N14
\inst|vgaSync_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~10_combout\ = (\inst|vgaSync_instance|vc\(5) & (!\inst|vgaSync_instance|Add1~9\)) # (!\inst|vgaSync_instance|vc\(5) & ((\inst|vgaSync_instance|Add1~9\) # (GND)))
-- \inst|vgaSync_instance|Add1~11\ = CARRY((!\inst|vgaSync_instance|Add1~9\) # (!\inst|vgaSync_instance|vc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(5),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~9\,
	combout => \inst|vgaSync_instance|Add1~10_combout\,
	cout => \inst|vgaSync_instance|Add1~11\);

-- Location: LCFF_X36_Y29_N15
\inst|vgaSync_instance|vc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add1~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(5));

-- Location: LCCOMB_X36_Y29_N16
\inst|vgaSync_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add1~12_combout\ = (\inst|vgaSync_instance|vc\(6) & (\inst|vgaSync_instance|Add1~11\ $ (GND))) # (!\inst|vgaSync_instance|vc\(6) & (!\inst|vgaSync_instance|Add1~11\ & VCC))
-- \inst|vgaSync_instance|Add1~13\ = CARRY((\inst|vgaSync_instance|vc\(6) & !\inst|vgaSync_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(6),
	datad => VCC,
	cin => \inst|vgaSync_instance|Add1~11\,
	combout => \inst|vgaSync_instance|Add1~12_combout\,
	cout => \inst|vgaSync_instance|Add1~13\);

-- Location: LCFF_X36_Y29_N3
\inst|vgaSync_instance|vc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	sdata => \inst|vgaSync_instance|Add1~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(6));

-- Location: LCFF_X36_Y29_N19
\inst|vgaSync_instance|vc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add1~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst|vgaSync_instance|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vc\(7));

-- Location: LCCOMB_X37_Y29_N0
\inst|vgaSync_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|LessThan3~0_combout\ = (\inst|vgaSync_instance|vc\(5) & (\inst|vgaSync_instance|vc\(7) & (\inst|vgaSync_instance|vc\(8) & \inst|vgaSync_instance|vc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(5),
	datab => \inst|vgaSync_instance|vc\(7),
	datac => \inst|vgaSync_instance|vc\(8),
	datad => \inst|vgaSync_instance|vc\(6),
	combout => \inst|vgaSync_instance|LessThan3~0_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst|vgaSync_instance|blank_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|blank_proc~0_combout\ = (\inst|vgaSync_instance|vc\(9)) # ((\inst|vgaSync_instance|hc\(9) & ((\inst|vgaSync_instance|hc\(7)) # (\inst|vgaSync_instance|hc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(9),
	datab => \inst|vgaSync_instance|hc\(7),
	datac => \inst|vgaSync_instance|hc\(8),
	datad => \inst|vgaSync_instance|vc\(9),
	combout => \inst|vgaSync_instance|blank_proc~0_combout\);

-- Location: LCCOMB_X37_Y30_N24
\inst|vgaSync_instance|blank_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|blank_proc~1_combout\ = (\inst|vgaSync_instance|LessThan3~0_combout\) # (\inst|vgaSync_instance|blank_proc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|LessThan3~0_combout\,
	datad => \inst|vgaSync_instance|blank_proc~0_combout\,
	combout => \inst|vgaSync_instance|blank_proc~1_combout\);

-- Location: CLKCTRL_G10
\inst|vgaSync_instance|clkdiv~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|vgaSync_instance|clkdiv~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y29_N26
\inst|vgaSync_instance|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal2~1_combout\ = (\inst|vgaSync_instance|Add1~6_combout\ & (!\inst|vgaSync_instance|Add1~4_combout\ & (\inst|vgaSync_instance|Add1~2_combout\ & \inst|vgaSync_instance|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|Add1~6_combout\,
	datab => \inst|vgaSync_instance|Add1~4_combout\,
	datac => \inst|vgaSync_instance|Add1~2_combout\,
	datad => \inst|vgaSync_instance|Add1~10_combout\,
	combout => \inst|vgaSync_instance|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y29_N2
\inst|vgaSync_instance|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal2~0_combout\ = (\inst|vgaSync_instance|Add1~16_combout\ & (!\inst|vgaSync_instance|Add1~18_combout\ & (\inst|vgaSync_instance|Add1~12_combout\ & \inst|vgaSync_instance|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|Add1~16_combout\,
	datab => \inst|vgaSync_instance|Add1~18_combout\,
	datac => \inst|vgaSync_instance|Add1~12_combout\,
	datad => \inst|vgaSync_instance|Add1~14_combout\,
	combout => \inst|vgaSync_instance|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst|vgaSync_instance|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Equal2~2_combout\ = (\inst|vgaSync_instance|Add1~8_combout\) # ((!\inst|vgaSync_instance|Equal2~0_combout\) # (!\inst|vgaSync_instance|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|Add1~8_combout\,
	datac => \inst|vgaSync_instance|Equal2~1_combout\,
	datad => \inst|vgaSync_instance|Equal2~0_combout\,
	combout => \inst|vgaSync_instance|Equal2~2_combout\);

-- Location: LCFF_X36_Y29_N25
\inst|vgaSync_instance|vs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Equal2~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|vs~regout\);

-- Location: LCCOMB_X36_Y30_N28
\inst|vgaSync_instance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|Add0~18_combout\ = \inst|vgaSync_instance|hc\(9) $ (\inst|vgaSync_instance|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(9),
	cin => \inst|vgaSync_instance|Add0~17\,
	combout => \inst|vgaSync_instance|Add0~18_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst|vgaSync_instance|hsync_proc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|hsync_proc~0_combout\ = (\inst|vgaSync_instance|Add0~14_combout\ & (!\inst|vgaSync_instance|Add0~16_combout\ & \inst|vgaSync_instance|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|Add0~14_combout\,
	datab => \inst|vgaSync_instance|Add0~16_combout\,
	datad => \inst|vgaSync_instance|Add0~18_combout\,
	combout => \inst|vgaSync_instance|hsync_proc~0_combout\);

-- Location: LCCOMB_X36_Y30_N2
\inst|vgaSync_instance|hsync_proc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|hsync_proc~1_combout\ = ((\inst|vgaSync_instance|Add0~8_combout\ & (\inst|vgaSync_instance|Add0~12_combout\ & \inst|vgaSync_instance|Add0~10_combout\)) # (!\inst|vgaSync_instance|Add0~8_combout\ & 
-- (!\inst|vgaSync_instance|Add0~12_combout\ & !\inst|vgaSync_instance|Add0~10_combout\))) # (!\inst|vgaSync_instance|hsync_proc~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|Add0~8_combout\,
	datab => \inst|vgaSync_instance|Add0~12_combout\,
	datac => \inst|vgaSync_instance|Add0~10_combout\,
	datad => \inst|vgaSync_instance|hsync_proc~0_combout\,
	combout => \inst|vgaSync_instance|hsync_proc~1_combout\);

-- Location: LCFF_X36_Y30_N3
\inst|vgaSync_instance|hs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|hsync_proc~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hs~regout\);

-- Location: LCCOMB_X37_Y30_N16
\inst|vgaSync_instance|hc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|vgaSync_instance|hc~0_combout\ = (!\inst|vgaSync_instance|Equal0~2_combout\ & \inst|vgaSync_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|vgaSync_instance|Equal0~2_combout\,
	datad => \inst|vgaSync_instance|Add0~18_combout\,
	combout => \inst|vgaSync_instance|hc~0_combout\);

-- Location: LCFF_X37_Y30_N17
\inst|vgaSync_instance|hc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|hc~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(9));

-- Location: LCCOMB_X42_Y28_N4
\inst|ball_instance|Ball_X_pos[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[0]~10_combout\ = (\inst|ball_instance|Ball_X_motion\(0) & (\inst|ball_instance|Ball_X_pos\(0) & VCC)) # (!\inst|ball_instance|Ball_X_motion\(0) & (\inst|ball_instance|Ball_X_pos\(0) $ (VCC)))
-- \inst|ball_instance|Ball_X_pos[0]~11\ = CARRY((!\inst|ball_instance|Ball_X_motion\(0) & \inst|ball_instance|Ball_X_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_motion\(0),
	datab => \inst|ball_instance|Ball_X_pos\(0),
	datad => VCC,
	combout => \inst|ball_instance|Ball_X_pos[0]~10_combout\,
	cout => \inst|ball_instance|Ball_X_pos[0]~11\);

-- Location: LCFF_X42_Y28_N5
\inst|ball_instance|Ball_X_pos[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[0]~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(0));

-- Location: LCCOMB_X40_Y28_N8
\inst|Color_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~0_combout\ = (\inst|vgaSync_instance|hc\(0) & ((GND) # (!\inst|ball_instance|Ball_X_pos\(0)))) # (!\inst|vgaSync_instance|hc\(0) & (\inst|ball_instance|Ball_X_pos\(0) $ (GND)))
-- \inst|Color_instance|Add0~1\ = CARRY((\inst|vgaSync_instance|hc\(0)) # (!\inst|ball_instance|Ball_X_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(0),
	datab => \inst|ball_instance|Ball_X_pos\(0),
	datad => VCC,
	combout => \inst|Color_instance|Add0~0_combout\,
	cout => \inst|Color_instance|Add0~1\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ps2data~I\ : cycloneii_io
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
	padio => ww_ps2data,
	combout => \ps2data~combout\);

-- Location: LCCOMB_X45_Y26_N12
\inst1|ins3t|dataIn[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|dataIn[10]~feeder_combout\ = \ps2data~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2data~combout\,
	combout => \inst1|ins3t|dataIn[10]~feeder_combout\);

-- Location: LCFF_X45_Y26_N13
\inst1|ins3t|dataIn[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|dataIn[10]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(10));

-- Location: LCCOMB_X45_Y26_N22
\inst1|ins3t|dataIn[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|dataIn[9]~feeder_combout\ = \inst1|ins3t|dataIn\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ins3t|dataIn\(10),
	combout => \inst1|ins3t|dataIn[9]~feeder_combout\);

-- Location: LCFF_X45_Y26_N23
\inst1|ins3t|dataIn[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|dataIn[9]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(9));

-- Location: LCCOMB_X45_Y26_N24
\inst1|ins3t|dataIn[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|dataIn[8]~feeder_combout\ = \inst1|ins3t|dataIn\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ins3t|dataIn\(9),
	combout => \inst1|ins3t|dataIn[8]~feeder_combout\);

-- Location: LCFF_X45_Y26_N25
\inst1|ins3t|dataIn[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|dataIn[8]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(8));

-- Location: LCCOMB_X41_Y26_N18
\inst1|ins3t|count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|count[2]~3_combout\ = \inst1|ins3t|count\(2) $ (((\Reset~combout\ & (\inst1|ins3t|count\(1) & \inst1|ins3t|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datab => \inst1|ins3t|count\(1),
	datac => \inst1|ins3t|count\(2),
	datad => \inst1|ins3t|count\(0),
	combout => \inst1|ins3t|count[2]~3_combout\);

-- Location: LCFF_X41_Y26_N19
\inst1|ins3t|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|count\(2));

-- Location: LCCOMB_X41_Y26_N20
\inst1|ins3t|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|count~2_combout\ = (!\inst1|ins3t|count\(0) & (((\inst1|ins3t|count\(2)) # (!\inst1|ins3t|count\(1))) # (!\inst1|ins3t|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|count\(3),
	datab => \inst1|ins3t|count\(1),
	datac => \inst1|ins3t|count\(0),
	datad => \inst1|ins3t|count\(2),
	combout => \inst1|ins3t|count~2_combout\);

-- Location: LCFF_X41_Y26_N21
\inst1|ins3t|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|count~2_combout\,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|count\(0));

-- Location: LCCOMB_X41_Y26_N14
\inst1|ins3t|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|count~1_combout\ = (\inst1|ins3t|count\(0) & (((!\inst1|ins3t|count\(1))))) # (!\inst1|ins3t|count\(0) & (\inst1|ins3t|count\(1) & ((\inst1|ins3t|count\(2)) # (!\inst1|ins3t|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|count\(3),
	datab => \inst1|ins3t|count\(0),
	datac => \inst1|ins3t|count\(1),
	datad => \inst1|ins3t|count\(2),
	combout => \inst1|ins3t|count~1_combout\);

-- Location: LCFF_X41_Y26_N15
\inst1|ins3t|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|count~1_combout\,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|count\(1));

-- Location: LCCOMB_X41_Y26_N28
\inst1|ins3t|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|count~0_combout\ = (\inst1|ins3t|count\(0) & (\inst1|ins3t|count\(3) $ (((\inst1|ins3t|count\(1) & \inst1|ins3t|count\(2)))))) # (!\inst1|ins3t|count\(0) & (\inst1|ins3t|count\(3) & ((\inst1|ins3t|count\(2)) # (!\inst1|ins3t|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|count\(0),
	datab => \inst1|ins3t|count\(1),
	datac => \inst1|ins3t|count\(3),
	datad => \inst1|ins3t|count\(2),
	combout => \inst1|ins3t|count~0_combout\);

-- Location: LCFF_X41_Y26_N29
\inst1|ins3t|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|count~0_combout\,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|count\(3));

-- Location: LCCOMB_X41_Y26_N16
\inst1|ins3t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|Equal0~0_combout\ = (!\inst1|ins3t|count\(0) & (\inst1|ins3t|count\(3) & (\inst1|ins3t|count\(1) & !\inst1|ins3t|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|count\(0),
	datab => \inst1|ins3t|count\(3),
	datac => \inst1|ins3t|count\(1),
	datad => \inst1|ins3t|count\(2),
	combout => \inst1|ins3t|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y26_N30
\inst1|ins3t|keyData[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|keyData[7]~0_combout\ = (\Reset~combout\ & \inst1|ins3t|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~combout\,
	datad => \inst1|ins3t|Equal0~0_combout\,
	combout => \inst1|ins3t|keyData[7]~0_combout\);

-- Location: LCFF_X42_Y26_N3
\inst1|ins3t|keyData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(8),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(6));

-- Location: LCFF_X42_Y26_N1
\inst1|ins3t|keyData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(9),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(7));

-- Location: LCFF_X45_Y26_N11
\inst1|ins3t|dataIn[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(8),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(7));

-- Location: LCCOMB_X45_Y26_N0
\inst1|ins3t|dataIn[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|dataIn[6]~feeder_combout\ = \inst1|ins3t|dataIn\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ins3t|dataIn\(7),
	combout => \inst1|ins3t|dataIn[6]~feeder_combout\);

-- Location: LCFF_X45_Y26_N1
\inst1|ins3t|dataIn[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|dataIn[6]~feeder_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(6));

-- Location: LCFF_X42_Y26_N5
\inst1|ins3t|dataIn[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(6),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(5));

-- Location: LCFF_X42_Y26_N15
\inst1|ins3t|dataIn[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(5),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(4));

-- Location: LCCOMB_X42_Y26_N22
\inst1|ins3t|keyData[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|keyData[2]~feeder_combout\ = \inst1|ins3t|dataIn\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ins3t|dataIn\(4),
	combout => \inst1|ins3t|keyData[2]~feeder_combout\);

-- Location: LCFF_X42_Y26_N23
\inst1|ins3t|keyData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst1|ins3t|keyData[2]~feeder_combout\,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(2));

-- Location: LCFF_X42_Y26_N29
\inst1|ins3t|dataIn[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(4),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(3));

-- Location: LCFF_X42_Y26_N19
\inst1|ins3t|keyData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(3),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(1));

-- Location: LCFF_X42_Y26_N13
\inst1|ins3t|keyData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(6),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(4));

-- Location: LCCOMB_X42_Y26_N18
\inst1|inst3|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal4~0_combout\ = (!\inst1|ins3t|keyData\(0) & (!\inst1|ins3t|keyData\(2) & (!\inst1|ins3t|keyData\(1) & \inst1|ins3t|keyData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(0),
	datab => \inst1|ins3t|keyData\(2),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst1|inst3|Equal4~0_combout\);

-- Location: LCCOMB_X42_Y26_N0
\inst1|inst3|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal4~1_combout\ = (\inst1|inst3|Equal3~1_combout\ & (\inst1|ins3t|keyData\(6) & (\inst1|ins3t|keyData\(7) & \inst1|inst3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal3~1_combout\,
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(7),
	datad => \inst1|inst3|Equal4~0_combout\,
	combout => \inst1|inst3|Equal4~1_combout\);

-- Location: LCFF_X42_Y26_N25
\inst1|ins3t|dataIn[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(3),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|dataIn\(2));

-- Location: LCFF_X42_Y26_N17
\inst1|ins3t|keyData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(2),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(0));

-- Location: LCCOMB_X42_Y26_N16
\inst1|inst3|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal3~0_combout\ = (!\inst1|ins3t|keyData\(4) & (!\inst1|ins3t|keyData\(2) & (\inst1|ins3t|keyData\(0) & \inst1|ins3t|keyData\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(4),
	datab => \inst1|ins3t|keyData\(2),
	datac => \inst1|ins3t|keyData\(0),
	datad => \inst1|ins3t|keyData\(1),
	combout => \inst1|inst3|Equal3~0_combout\);

-- Location: LCFF_X42_Y26_N31
\inst1|ins3t|keyData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(5),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(3));

-- Location: LCCOMB_X42_Y26_N28
\inst1|inst3|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal3~1_combout\ = (\inst1|ins3t|keyData\(5) & !\inst1|ins3t|keyData\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(3),
	combout => \inst1|inst3|Equal3~1_combout\);

-- Location: LCCOMB_X42_Y26_N26
\inst1|inst3|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal3~2_combout\ = (!\inst1|ins3t|keyData\(7) & (!\inst1|ins3t|keyData\(6) & (\inst1|inst3|Equal3~0_combout\ & \inst1|inst3|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|inst3|Equal3~0_combout\,
	datad => \inst1|inst3|Equal3~1_combout\,
	combout => \inst1|inst3|Equal3~2_combout\);

-- Location: LCCOMB_X42_Y26_N14
\inst1|inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal0~1_combout\ = (\inst1|ins3t|keyData\(2) & !\inst1|ins3t|keyData\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ins3t|keyData\(2),
	datad => \inst1|ins3t|keyData\(1),
	combout => \inst1|inst3|Equal0~1_combout\);

-- Location: LCFF_X42_Y26_N11
\inst1|ins3t|keyData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|dataIn\(7),
	sload => VCC,
	ena => \inst1|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyData\(5));

-- Location: LCCOMB_X42_Y26_N2
\inst1|inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal0~0_combout\ = (!\inst1|ins3t|keyData\(7) & (!\inst1|ins3t|keyData\(5) & (!\inst1|ins3t|keyData\(6) & \inst1|ins3t|keyData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(5),
	datac => \inst1|ins3t|keyData\(6),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst1|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y26_N20
\inst1|inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal1~0_combout\ = (\inst1|ins3t|keyData\(3) & (\inst1|inst3|Equal0~1_combout\ & (!\inst1|ins3t|keyData\(0) & \inst1|inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|inst3|Equal0~1_combout\,
	datac => \inst1|ins3t|keyData\(0),
	datad => \inst1|inst3|Equal0~0_combout\,
	combout => \inst1|inst3|Equal1~0_combout\);

-- Location: LCCOMB_X42_Y26_N6
\inst1|inst3|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector1~1_combout\ = (!\inst1|inst3|Equal2~1_combout\ & (!\inst1|inst3|Equal4~1_combout\ & (!\inst1|inst3|Equal3~2_combout\ & !\inst1|inst3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal2~1_combout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|Equal3~2_combout\,
	datad => \inst1|inst3|Equal1~0_combout\,
	combout => \inst1|inst3|Selector1~1_combout\);

-- Location: LCCOMB_X43_Y26_N2
\inst1|inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal0~2_combout\ = (\inst1|inst3|Equal0~1_combout\ & (\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(3) & \inst1|inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal0~1_combout\,
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(3),
	datad => \inst1|inst3|Equal0~0_combout\,
	combout => \inst1|inst3|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y26_N12
\inst1|inst3|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector4~1_combout\ = (!\inst1|inst3|Equal2~1_combout\ & (!\inst1|inst3|Equal0~2_combout\ & !\inst1|inst3|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal2~1_combout\,
	datab => \inst1|inst3|Equal0~2_combout\,
	datad => \inst1|inst3|Equal4~1_combout\,
	combout => \inst1|inst3|Selector4~1_combout\);

-- Location: LCCOMB_X43_Y26_N16
\inst1|inst3|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector4~2_combout\ = (\inst1|inst3|Selector4~0_combout\) # ((!\inst1|inst3|Equal1~0_combout\ & (\inst1|inst3|state.d~regout\ & \inst1|inst3|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Selector4~0_combout\,
	datab => \inst1|inst3|Equal1~0_combout\,
	datac => \inst1|inst3|state.d~regout\,
	datad => \inst1|inst3|Selector4~1_combout\,
	combout => \inst1|inst3|Selector4~2_combout\);

-- Location: LCFF_X41_Y26_N27
\inst1|ins3t|keyRed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst1|ins3t|Equal0~0_combout\,
	aclr => \inst1|ins3t|keyRed~regout\,
	sload => VCC,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|ins3t|keyRed~regout\);

-- Location: LCCOMB_X41_Y26_N22
\inst1|ins3t|keyReady\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|ins3t|keyReady~combout\ = (!\inst1|ins3t|comb~0_combout\ & ((\inst1|ins3t|keyRed~regout\) # (\inst1|ins3t|keyReady~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|comb~0_combout\,
	datac => \inst1|ins3t|keyRed~regout\,
	datad => \inst1|ins3t|keyReady~combout\,
	combout => \inst1|ins3t|keyReady~combout\);

-- Location: LCFF_X44_Y26_N13
\inst1|inst3|key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	sdata => \inst1|ins3t|keyReady~combout\,
	sload => VCC,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|key~regout\);

-- Location: LCCOMB_X44_Y26_N16
\inst1|inst3|control_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|control_reg~0_combout\ = (\inst1|ins3t|keyReady~combout\ & !\inst1|inst3|key~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ins3t|keyReady~combout\,
	datad => \inst1|inst3|key~regout\,
	combout => \inst1|inst3|control_reg~0_combout\);

-- Location: LCFF_X43_Y26_N17
\inst1|inst3|state.d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector4~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.d~regout\);

-- Location: LCCOMB_X43_Y26_N30
\inst1|inst3|dataOut[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|dataOut[2]~0_combout\ = (\inst1|inst3|state.w~regout\) # (\inst1|inst3|state.a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|state.w~regout\,
	datad => \inst1|inst3|state.a~regout\,
	combout => \inst1|inst3|dataOut[2]~0_combout\);

-- Location: LCCOMB_X43_Y26_N6
\inst1|inst3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector3~1_combout\ = (!\inst1|inst3|Equal1~0_combout\ & (!\inst1|inst3|Equal0~2_combout\ & !\inst1|inst3|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal1~0_combout\,
	datab => \inst1|inst3|Equal0~2_combout\,
	datad => \inst1|inst3|Equal3~2_combout\,
	combout => \inst1|inst3|Selector3~1_combout\);

-- Location: LCCOMB_X44_Y26_N4
\inst1|inst3|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector8~0_combout\ = (\inst1|inst3|state.d~regout\ & ((\inst1|inst3|Equal4~1_combout\) # ((\inst1|inst3|state.dEnd~regout\ & !\inst1|inst3|Equal3~2_combout\)))) # (!\inst1|inst3|state.d~regout\ & (((\inst1|inst3|state.dEnd~regout\ & 
-- !\inst1|inst3|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.d~regout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|state.dEnd~regout\,
	datad => \inst1|inst3|Equal3~2_combout\,
	combout => \inst1|inst3|Selector8~0_combout\);

-- Location: LCFF_X44_Y26_N5
\inst1|inst3|state.dEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector8~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.dEnd~regout\);

-- Location: LCCOMB_X42_Y26_N4
\inst1|inst3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal2~0_combout\ = (\inst1|ins3t|keyData\(0) & (!\inst1|ins3t|keyData\(2) & \inst1|ins3t|keyData\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(0),
	datab => \inst1|ins3t|keyData\(2),
	datad => \inst1|ins3t|keyData\(1),
	combout => \inst1|inst3|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y26_N24
\inst1|inst3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Equal2~1_combout\ = (\inst1|ins3t|keyData\(3) & (\inst1|inst3|Equal2~0_combout\ & \inst1|inst3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|inst3|Equal2~0_combout\,
	datad => \inst1|inst3|Equal0~0_combout\,
	combout => \inst1|inst3|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y26_N14
\inst1|inst3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector0~1_combout\ = (\inst1|inst3|state.sEnd~regout\ & ((\inst1|inst3|Equal2~1_combout\) # ((\inst1|inst3|state.dEnd~regout\ & \inst1|inst3|Equal3~2_combout\)))) # (!\inst1|inst3|state.sEnd~regout\ & (\inst1|inst3|state.dEnd~regout\ & 
-- (\inst1|inst3|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.sEnd~regout\,
	datab => \inst1|inst3|state.dEnd~regout\,
	datac => \inst1|inst3|Equal3~2_combout\,
	datad => \inst1|inst3|Equal2~1_combout\,
	combout => \inst1|inst3|Selector0~1_combout\);

-- Location: LCCOMB_X43_Y26_N24
\inst1|inst3|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector5~0_combout\ = (\inst1|inst3|state.w~regout\ & ((\inst1|inst3|Equal4~1_combout\) # ((\inst1|inst3|state.wEnd~regout\ & !\inst1|inst3|Equal0~2_combout\)))) # (!\inst1|inst3|state.w~regout\ & (((\inst1|inst3|state.wEnd~regout\ & 
-- !\inst1|inst3|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|state.wEnd~regout\,
	datad => \inst1|inst3|Equal0~2_combout\,
	combout => \inst1|inst3|Selector5~0_combout\);

-- Location: LCFF_X43_Y26_N25
\inst1|inst3|state.wEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector5~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.wEnd~regout\);

-- Location: LCCOMB_X44_Y26_N2
\inst1|inst3|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector0~0_combout\ = (\inst1|inst3|state.aEnd~regout\ & ((\inst1|inst3|Equal1~0_combout\) # ((\inst1|inst3|state.wEnd~regout\ & \inst1|inst3|Equal0~2_combout\)))) # (!\inst1|inst3|state.aEnd~regout\ & (\inst1|inst3|state.wEnd~regout\ & 
-- ((\inst1|inst3|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.aEnd~regout\,
	datab => \inst1|inst3|state.wEnd~regout\,
	datac => \inst1|inst3|Equal1~0_combout\,
	datad => \inst1|inst3|Equal0~2_combout\,
	combout => \inst1|inst3|Selector0~0_combout\);

-- Location: LCCOMB_X44_Y26_N22
\inst1|inst3|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector0~2_combout\ = (!\inst1|inst3|Selector0~1_combout\ & (!\inst1|inst3|Selector0~0_combout\ & ((!\inst1|inst3|Selector3~1_combout\) # (!\inst1|inst3|next_state~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|next_state~0_combout\,
	datab => \inst1|inst3|Selector3~1_combout\,
	datac => \inst1|inst3|Selector0~1_combout\,
	datad => \inst1|inst3|Selector0~0_combout\,
	combout => \inst1|inst3|Selector0~2_combout\);

-- Location: LCFF_X44_Y26_N23
\inst1|inst3|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector0~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.idle~regout\);

-- Location: LCCOMB_X43_Y26_N12
\inst1|inst3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector3~0_combout\ = (\inst1|inst3|Equal2~1_combout\ & ((\inst1|inst3|state.d~regout\) # ((\inst1|inst3|dataOut[2]~0_combout\) # (!\inst1|inst3|state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.d~regout\,
	datab => \inst1|inst3|dataOut[2]~0_combout\,
	datac => \inst1|inst3|state.idle~regout\,
	datad => \inst1|inst3|Equal2~1_combout\,
	combout => \inst1|inst3|Selector3~0_combout\);

-- Location: LCCOMB_X43_Y26_N10
\inst1|inst3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector3~2_combout\ = (\inst1|inst3|Selector3~0_combout\) # ((\inst1|inst3|Selector3~1_combout\ & (!\inst1|inst3|Equal4~1_combout\ & \inst1|inst3|state.s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Selector3~1_combout\,
	datab => \inst1|inst3|Equal4~1_combout\,
	datac => \inst1|inst3|state.s~regout\,
	datad => \inst1|inst3|Selector3~0_combout\,
	combout => \inst1|inst3|Selector3~2_combout\);

-- Location: LCFF_X43_Y26_N11
\inst1|inst3|state.s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector3~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.s~regout\);

-- Location: LCCOMB_X43_Y26_N20
\inst1|inst3|dataOut[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|dataOut[1]~1_combout\ = (\inst1|inst3|state.d~regout\) # (\inst1|inst3|state.s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|state.d~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst1|inst3|dataOut[1]~1_combout\);

-- Location: LCCOMB_X44_Y26_N30
\inst1|inst3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector1~0_combout\ = (\inst1|inst3|Equal0~2_combout\ & (((\inst1|inst3|state.a~regout\) # (\inst1|inst3|dataOut[1]~1_combout\)) # (!\inst1|inst3|state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.idle~regout\,
	datab => \inst1|inst3|state.a~regout\,
	datac => \inst1|inst3|dataOut[1]~1_combout\,
	datad => \inst1|inst3|Equal0~2_combout\,
	combout => \inst1|inst3|Selector1~0_combout\);

-- Location: LCCOMB_X43_Y26_N26
\inst1|inst3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector1~2_combout\ = (\inst1|inst3|Selector1~0_combout\) # ((\inst1|inst3|Selector1~1_combout\ & \inst1|inst3|state.w~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|Selector1~1_combout\,
	datac => \inst1|inst3|state.w~regout\,
	datad => \inst1|inst3|Selector1~0_combout\,
	combout => \inst1|inst3|Selector1~2_combout\);

-- Location: LCFF_X43_Y26_N27
\inst1|inst3|state.w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector1~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.w~regout\);

-- Location: LCCOMB_X43_Y26_N14
\inst1|inst3|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector2~0_combout\ = (\inst1|inst3|Equal1~0_combout\ & ((\inst1|inst3|state.w~regout\) # ((\inst1|inst3|dataOut[1]~1_combout\) # (!\inst1|inst3|state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal1~0_combout\,
	datab => \inst1|inst3|state.w~regout\,
	datac => \inst1|inst3|dataOut[1]~1_combout\,
	datad => \inst1|inst3|state.idle~regout\,
	combout => \inst1|inst3|Selector2~0_combout\);

-- Location: LCCOMB_X43_Y26_N0
\inst1|inst3|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|Selector2~1_combout\ = (\inst1|inst3|Selector2~0_combout\) # ((!\inst1|inst3|Equal3~2_combout\ & (\inst1|inst3|state.a~regout\ & \inst1|inst3|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|Equal3~2_combout\,
	datab => \inst1|inst3|Selector2~0_combout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|Selector4~1_combout\,
	combout => \inst1|inst3|Selector2~1_combout\);

-- Location: LCFF_X43_Y26_N1
\inst1|inst3|state.a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|inst|temp~clkctrl_outclk\,
	datain => \inst1|inst3|Selector2~1_combout\,
	aclr => \ALT_INV_Reset~combout\,
	ena => \inst1|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3|state.a~regout\);

-- Location: LCCOMB_X42_Y26_N10
\inst1|inst3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|WideOr5~0_combout\ = (!\inst1|inst3|state.s~regout\ & (!\inst1|inst3|state.a~regout\ & !\inst1|inst3|state.w~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.s~regout\,
	datab => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.w~regout\,
	combout => \inst1|inst3|WideOr5~0_combout\);

-- Location: LCCOMB_X43_Y26_N18
\inst|ball_instance|dataBuff[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|dataBuff[3]~1_combout\ = !\inst1|inst3|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst3|WideOr5~0_combout\,
	combout => \inst|ball_instance|dataBuff[3]~1_combout\);

-- Location: LCCOMB_X43_Y26_N22
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst1|inst3|state.a~regout\) # ((\inst1|inst3|state.w~regout\) # ((\inst1|inst3|state.d~regout\) # (\inst1|inst3|state.s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.a~regout\,
	datab => \inst1|inst3|state.w~regout\,
	datac => \inst1|inst3|state.d~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y28_N12
\inst|ball_instance|keyAck~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|keyAck~0_combout\ = (\inst1|inst3|state.wEnd~regout\) # ((\inst|ball_instance|keyAck~regout\) # (\inst4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3|state.wEnd~regout\,
	datac => \inst|ball_instance|keyAck~regout\,
	datad => \inst4|Mux1~0_combout\,
	combout => \inst|ball_instance|keyAck~0_combout\);

-- Location: LCCOMB_X46_Y28_N24
\inst|ball_instance|dataAck~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|dataAck~0_combout\ = !\inst|ball_instance|keyAck~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ball_instance|keyAck~regout\,
	combout => \inst|ball_instance|dataAck~0_combout\);

-- Location: LCFF_X46_Y28_N3
\inst|ball_instance|dataAck\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|dataAck~0_combout\,
	sload => VCC,
	ena => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataAck~regout\);

-- Location: LCCOMB_X46_Y28_N2
\inst|ball_instance|interface~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|interface~0_combout\ = (!\inst|ball_instance|dataAck~regout\ & \inst|ball_instance|keyAck~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ball_instance|dataAck~regout\,
	datad => \inst|ball_instance|keyAck~regout\,
	combout => \inst|ball_instance|interface~0_combout\);

-- Location: LCFF_X46_Y28_N13
\inst|ball_instance|keyAck\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|keyAck~0_combout\,
	aclr => \inst|ball_instance|interface~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|keyAck~regout\);

-- Location: LCCOMB_X43_Y26_N8
\inst|ball_instance|dataBuff[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|dataBuff[0]~0_combout\ = (!\inst|ball_instance|keyAck~regout\ & ((\inst1|inst3|state.wEnd~regout\) # (\inst4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|keyAck~regout\,
	datac => \inst1|inst3|state.wEnd~regout\,
	datad => \inst4|Mux1~0_combout\,
	combout => \inst|ball_instance|dataBuff[0]~0_combout\);

-- Location: LCFF_X43_Y26_N19
\inst|ball_instance|dataBuff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|dataBuff[3]~1_combout\,
	ena => \inst|ball_instance|dataBuff[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataBuff\(3));

-- Location: LCFF_X43_Y26_N21
\inst|ball_instance|dataBuff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst1|inst3|dataOut[1]~1_combout\,
	ena => \inst|ball_instance|dataBuff[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataBuff\(1));

-- Location: LCFF_X43_Y26_N7
\inst|ball_instance|dataBuff[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst1|inst3|state.d~regout\,
	sload => VCC,
	ena => \inst|ball_instance|dataBuff[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataBuff\(5));

-- Location: LCCOMB_X44_Y28_N20
\inst|ball_instance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Equal0~0_combout\ = (\inst|ball_instance|dataBuff\(2) & (\inst|ball_instance|dataBuff\(3) & (!\inst|ball_instance|dataBuff\(1) & !\inst|ball_instance|dataBuff\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|dataBuff\(2),
	datab => \inst|ball_instance|dataBuff\(3),
	datac => \inst|ball_instance|dataBuff\(1),
	datad => \inst|ball_instance|dataBuff\(5),
	combout => \inst|ball_instance|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y26_N12
\inst1|inst3|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst3|WideOr7~0_combout\ = (!\inst1|inst3|state.d~regout\ & (!\inst1|inst3|state.w~regout\ & !\inst1|inst3|state.s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.d~regout\,
	datab => \inst1|inst3|state.w~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst1|inst3|WideOr7~0_combout\);

-- Location: LCCOMB_X43_Y26_N4
\inst|ball_instance|dataBuff[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|dataBuff[0]~4_combout\ = !\inst1|inst3|WideOr7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3|WideOr7~0_combout\,
	combout => \inst|ball_instance|dataBuff[0]~4_combout\);

-- Location: LCFF_X43_Y26_N5
\inst|ball_instance|dataBuff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|dataBuff[0]~4_combout\,
	ena => \inst|ball_instance|dataBuff[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|dataBuff\(0));

-- Location: LCCOMB_X44_Y28_N26
\inst|ball_instance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Equal0~1_combout\ = (\inst|ball_instance|Equal0~0_combout\ & \inst|ball_instance|dataBuff\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ball_instance|Equal0~0_combout\,
	datad => \inst|ball_instance|dataBuff\(0),
	combout => \inst|ball_instance|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y26_N10
\inst|ball_instance|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Equal2~0_combout\ = (!\inst|ball_instance|dataBuff\(2) & (\inst|ball_instance|dataBuff\(0) & \inst|ball_instance|dataBuff\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|dataBuff\(2),
	datac => \inst|ball_instance|dataBuff\(0),
	datad => \inst|ball_instance|dataBuff\(1),
	combout => \inst|ball_instance|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y28_N14
\inst|ball_instance|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Equal2~1_combout\ = (!\inst|ball_instance|dataBuff\(5) & (\inst|ball_instance|dataBuff\(3) & \inst|ball_instance|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|dataBuff\(5),
	datac => \inst|ball_instance|dataBuff\(3),
	datad => \inst|ball_instance|Equal2~0_combout\,
	combout => \inst|ball_instance|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y28_N0
\inst|ball_instance|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Equal3~0_combout\ = (\inst|ball_instance|dataBuff\(5) & (!\inst|ball_instance|dataBuff\(3) & \inst|ball_instance|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|dataBuff\(5),
	datac => \inst|ball_instance|dataBuff\(3),
	datad => \inst|ball_instance|Equal2~0_combout\,
	combout => \inst|ball_instance|Equal3~0_combout\);

-- Location: LCCOMB_X44_Y28_N22
\inst|ball_instance|Ball_Y_motion~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion~2_combout\ = (\inst|ball_instance|keyAck~regout\ & ((\inst|ball_instance|Equal0~0_combout\) # ((\inst|ball_instance|Equal2~1_combout\) # (\inst|ball_instance|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Equal0~0_combout\,
	datab => \inst|ball_instance|keyAck~regout\,
	datac => \inst|ball_instance|Equal2~1_combout\,
	datad => \inst|ball_instance|Equal3~0_combout\,
	combout => \inst|ball_instance|Ball_Y_motion~2_combout\);

-- Location: LCCOMB_X42_Y28_N6
\inst|ball_instance|Ball_X_pos[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[1]~12_combout\ = (\inst|ball_instance|Ball_X_pos\(1) & ((\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[0]~11\ & VCC)) # (!\inst|ball_instance|Ball_X_motion\(9) & 
-- (!\inst|ball_instance|Ball_X_pos[0]~11\)))) # (!\inst|ball_instance|Ball_X_pos\(1) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[0]~11\)) # (!\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[0]~11\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_X_pos[1]~13\ = CARRY((\inst|ball_instance|Ball_X_pos\(1) & (!\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[0]~11\)) # (!\inst|ball_instance|Ball_X_pos\(1) & ((!\inst|ball_instance|Ball_X_pos[0]~11\) # 
-- (!\inst|ball_instance|Ball_X_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(1),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[0]~11\,
	combout => \inst|ball_instance|Ball_X_pos[1]~12_combout\,
	cout => \inst|ball_instance|Ball_X_pos[1]~13\);

-- Location: LCCOMB_X42_Y28_N8
\inst|ball_instance|Ball_X_pos[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[2]~14_combout\ = ((\inst|ball_instance|Ball_X_pos\(2) $ (\inst|ball_instance|Ball_X_motion\(9) $ (!\inst|ball_instance|Ball_X_pos[1]~13\)))) # (GND)
-- \inst|ball_instance|Ball_X_pos[2]~15\ = CARRY((\inst|ball_instance|Ball_X_pos\(2) & ((\inst|ball_instance|Ball_X_motion\(9)) # (!\inst|ball_instance|Ball_X_pos[1]~13\))) # (!\inst|ball_instance|Ball_X_pos\(2) & (\inst|ball_instance|Ball_X_motion\(9) & 
-- !\inst|ball_instance|Ball_X_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(2),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[1]~13\,
	combout => \inst|ball_instance|Ball_X_pos[2]~14_combout\,
	cout => \inst|ball_instance|Ball_X_pos[2]~15\);

-- Location: LCCOMB_X42_Y28_N10
\inst|ball_instance|Ball_X_pos[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[3]~16_combout\ = (\inst|ball_instance|Ball_X_pos\(3) & ((\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[2]~15\ & VCC)) # (!\inst|ball_instance|Ball_X_motion\(9) & 
-- (!\inst|ball_instance|Ball_X_pos[2]~15\)))) # (!\inst|ball_instance|Ball_X_pos\(3) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[2]~15\)) # (!\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[2]~15\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_X_pos[3]~17\ = CARRY((\inst|ball_instance|Ball_X_pos\(3) & (!\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[2]~15\)) # (!\inst|ball_instance|Ball_X_pos\(3) & ((!\inst|ball_instance|Ball_X_pos[2]~15\) # 
-- (!\inst|ball_instance|Ball_X_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(3),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[2]~15\,
	combout => \inst|ball_instance|Ball_X_pos[3]~16_combout\,
	cout => \inst|ball_instance|Ball_X_pos[3]~17\);

-- Location: LCCOMB_X42_Y28_N12
\inst|ball_instance|Ball_X_pos[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[4]~18_combout\ = ((\inst|ball_instance|Ball_X_pos\(4) $ (\inst|ball_instance|Ball_X_motion\(9) $ (!\inst|ball_instance|Ball_X_pos[3]~17\)))) # (GND)
-- \inst|ball_instance|Ball_X_pos[4]~19\ = CARRY((\inst|ball_instance|Ball_X_pos\(4) & ((\inst|ball_instance|Ball_X_motion\(9)) # (!\inst|ball_instance|Ball_X_pos[3]~17\))) # (!\inst|ball_instance|Ball_X_pos\(4) & (\inst|ball_instance|Ball_X_motion\(9) & 
-- !\inst|ball_instance|Ball_X_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(4),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[3]~17\,
	combout => \inst|ball_instance|Ball_X_pos[4]~18_combout\,
	cout => \inst|ball_instance|Ball_X_pos[4]~19\);

-- Location: LCCOMB_X42_Y28_N14
\inst|ball_instance|Ball_X_pos[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[5]~20_combout\ = (\inst|ball_instance|Ball_X_pos\(5) & ((\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[4]~19\ & VCC)) # (!\inst|ball_instance|Ball_X_motion\(9) & 
-- (!\inst|ball_instance|Ball_X_pos[4]~19\)))) # (!\inst|ball_instance|Ball_X_pos\(5) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[4]~19\)) # (!\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[4]~19\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_X_pos[5]~21\ = CARRY((\inst|ball_instance|Ball_X_pos\(5) & (!\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[4]~19\)) # (!\inst|ball_instance|Ball_X_pos\(5) & ((!\inst|ball_instance|Ball_X_pos[4]~19\) # 
-- (!\inst|ball_instance|Ball_X_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(5),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[4]~19\,
	combout => \inst|ball_instance|Ball_X_pos[5]~20_combout\,
	cout => \inst|ball_instance|Ball_X_pos[5]~21\);

-- Location: LCCOMB_X42_Y28_N16
\inst|ball_instance|Ball_X_pos[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[6]~22_combout\ = (\inst|ball_instance|Ball_X_pos\(6) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[5]~21\)) # (!\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[5]~21\ & 
-- VCC)))) # (!\inst|ball_instance|Ball_X_pos\(6) & ((\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[5]~21\) # (GND))) # (!\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[5]~21\))))
-- \inst|ball_instance|Ball_X_pos[6]~23\ = CARRY((\inst|ball_instance|Ball_X_pos\(6) & (\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[5]~21\)) # (!\inst|ball_instance|Ball_X_pos\(6) & ((\inst|ball_instance|Ball_X_motion\(9)) # 
-- (!\inst|ball_instance|Ball_X_pos[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(6),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[5]~21\,
	combout => \inst|ball_instance|Ball_X_pos[6]~22_combout\,
	cout => \inst|ball_instance|Ball_X_pos[6]~23\);

-- Location: LCFF_X42_Y28_N17
\inst|ball_instance|Ball_X_pos[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[6]~22_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(6));

-- Location: LCFF_X42_Y28_N9
\inst|ball_instance|Ball_X_pos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[2]~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(2));

-- Location: LCCOMB_X43_Y28_N16
\inst|ball_instance|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~0_combout\ = (\inst|ball_instance|Ball_X_pos\(3) & (\inst|ball_instance|Ball_X_pos\(2) $ (VCC))) # (!\inst|ball_instance|Ball_X_pos\(3) & (\inst|ball_instance|Ball_X_pos\(2) & VCC))
-- \inst|ball_instance|Add2~1\ = CARRY((\inst|ball_instance|Ball_X_pos\(3) & \inst|ball_instance|Ball_X_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(3),
	datab => \inst|ball_instance|Ball_X_pos\(2),
	datad => VCC,
	combout => \inst|ball_instance|Add2~0_combout\,
	cout => \inst|ball_instance|Add2~1\);

-- Location: LCCOMB_X43_Y28_N18
\inst|ball_instance|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~2_combout\ = (\inst|ball_instance|Ball_X_pos\(4) & (!\inst|ball_instance|Add2~1\)) # (!\inst|ball_instance|Ball_X_pos\(4) & ((\inst|ball_instance|Add2~1\) # (GND)))
-- \inst|ball_instance|Add2~3\ = CARRY((!\inst|ball_instance|Add2~1\) # (!\inst|ball_instance|Ball_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|ball_instance|Add2~1\,
	combout => \inst|ball_instance|Add2~2_combout\,
	cout => \inst|ball_instance|Add2~3\);

-- Location: LCCOMB_X43_Y28_N22
\inst|ball_instance|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~6_combout\ = (\inst|ball_instance|Ball_X_pos\(6) & ((\inst|ball_instance|Add2~5\) # (GND))) # (!\inst|ball_instance|Ball_X_pos\(6) & (!\inst|ball_instance|Add2~5\))
-- \inst|ball_instance|Add2~7\ = CARRY((\inst|ball_instance|Ball_X_pos\(6)) # (!\inst|ball_instance|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|ball_instance|Add2~5\,
	combout => \inst|ball_instance|Add2~6_combout\,
	cout => \inst|ball_instance|Add2~7\);

-- Location: LCCOMB_X42_Y28_N18
\inst|ball_instance|Ball_X_pos[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[7]~24_combout\ = (\inst|ball_instance|Ball_X_pos\(7) & ((\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[6]~23\ & VCC)) # (!\inst|ball_instance|Ball_X_motion\(9) & 
-- (!\inst|ball_instance|Ball_X_pos[6]~23\)))) # (!\inst|ball_instance|Ball_X_pos\(7) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[6]~23\)) # (!\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[6]~23\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_X_pos[7]~25\ = CARRY((\inst|ball_instance|Ball_X_pos\(7) & (!\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[6]~23\)) # (!\inst|ball_instance|Ball_X_pos\(7) & ((!\inst|ball_instance|Ball_X_pos[6]~23\) # 
-- (!\inst|ball_instance|Ball_X_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(7),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[6]~23\,
	combout => \inst|ball_instance|Ball_X_pos[7]~24_combout\,
	cout => \inst|ball_instance|Ball_X_pos[7]~25\);

-- Location: LCCOMB_X42_Y28_N20
\inst|ball_instance|Ball_X_pos[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[8]~26_combout\ = (\inst|ball_instance|Ball_X_pos\(8) & ((\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[7]~25\)) # (!\inst|ball_instance|Ball_X_motion\(9) & (\inst|ball_instance|Ball_X_pos[7]~25\ & 
-- VCC)))) # (!\inst|ball_instance|Ball_X_pos\(8) & ((\inst|ball_instance|Ball_X_motion\(9) & ((\inst|ball_instance|Ball_X_pos[7]~25\) # (GND))) # (!\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_pos[7]~25\))))
-- \inst|ball_instance|Ball_X_pos[8]~27\ = CARRY((\inst|ball_instance|Ball_X_pos\(8) & (\inst|ball_instance|Ball_X_motion\(9) & !\inst|ball_instance|Ball_X_pos[7]~25\)) # (!\inst|ball_instance|Ball_X_pos\(8) & ((\inst|ball_instance|Ball_X_motion\(9)) # 
-- (!\inst|ball_instance|Ball_X_pos[7]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(8),
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => VCC,
	cin => \inst|ball_instance|Ball_X_pos[7]~25\,
	combout => \inst|ball_instance|Ball_X_pos[8]~26_combout\,
	cout => \inst|ball_instance|Ball_X_pos[8]~27\);

-- Location: LCCOMB_X42_Y28_N22
\inst|ball_instance|Ball_X_pos[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_pos[9]~28_combout\ = \inst|ball_instance|Ball_X_motion\(9) $ (\inst|ball_instance|Ball_X_pos[8]~27\ $ (\inst|ball_instance|Ball_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datad => \inst|ball_instance|Ball_X_pos\(9),
	cin => \inst|ball_instance|Ball_X_pos[8]~27\,
	combout => \inst|ball_instance|Ball_X_pos[9]~28_combout\);

-- Location: LCFF_X42_Y28_N23
\inst|ball_instance|Ball_X_pos[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[9]~28_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(9));

-- Location: LCFF_X42_Y28_N19
\inst|ball_instance|Ball_X_pos[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[7]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(7));

-- Location: LCCOMB_X43_Y28_N24
\inst|ball_instance|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~8_combout\ = (\inst|ball_instance|Ball_X_pos\(7) & (\inst|ball_instance|Add2~7\ $ (GND))) # (!\inst|ball_instance|Ball_X_pos\(7) & (!\inst|ball_instance|Add2~7\ & VCC))
-- \inst|ball_instance|Add2~9\ = CARRY((\inst|ball_instance|Ball_X_pos\(7) & !\inst|ball_instance|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|ball_instance|Add2~7\,
	combout => \inst|ball_instance|Add2~8_combout\,
	cout => \inst|ball_instance|Add2~9\);

-- Location: LCCOMB_X43_Y28_N26
\inst|ball_instance|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~10_combout\ = (\inst|ball_instance|Ball_X_pos\(8) & ((\inst|ball_instance|Add2~9\) # (GND))) # (!\inst|ball_instance|Ball_X_pos\(8) & (!\inst|ball_instance|Add2~9\))
-- \inst|ball_instance|Add2~11\ = CARRY((\inst|ball_instance|Ball_X_pos\(8)) # (!\inst|ball_instance|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|ball_instance|Add2~9\,
	combout => \inst|ball_instance|Add2~10_combout\,
	cout => \inst|ball_instance|Add2~11\);

-- Location: LCCOMB_X43_Y28_N28
\inst|ball_instance|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add2~12_combout\ = \inst|ball_instance|Add2~11\ $ (!\inst|ball_instance|Ball_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ball_instance|Ball_X_pos\(9),
	cin => \inst|ball_instance|Add2~11\,
	combout => \inst|ball_instance|Add2~12_combout\);

-- Location: LCCOMB_X43_Y28_N0
\inst|ball_instance|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan2~2_combout\ = (\inst|ball_instance|Add2~4_combout\ & (\inst|ball_instance|Add2~6_combout\ & (\inst|ball_instance|Add2~2_combout\ & \inst|ball_instance|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add2~4_combout\,
	datab => \inst|ball_instance|Add2~6_combout\,
	datac => \inst|ball_instance|Add2~2_combout\,
	datad => \inst|ball_instance|Add2~12_combout\,
	combout => \inst|ball_instance|LessThan2~2_combout\);

-- Location: LCCOMB_X43_Y28_N8
\inst|ball_instance|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan2~0_combout\ = (\inst|ball_instance|Add2~12_combout\ & ((\inst|ball_instance|Add2~10_combout\) # (\inst|ball_instance|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Add2~10_combout\,
	datac => \inst|ball_instance|Add2~8_combout\,
	datad => \inst|ball_instance|Add2~12_combout\,
	combout => \inst|ball_instance|LessThan2~0_combout\);

-- Location: LCCOMB_X44_Y28_N24
\inst|ball_instance|Ball_X_motion~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion~2_combout\ = (\inst|ball_instance|Ball_X_motion~1_combout\ & ((\inst|ball_instance|LessThan2~0_combout\) # ((\inst|ball_instance|LessThan2~1_combout\ & \inst|ball_instance|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|LessThan2~1_combout\,
	datab => \inst|ball_instance|Ball_X_motion~1_combout\,
	datac => \inst|ball_instance|LessThan2~2_combout\,
	datad => \inst|ball_instance|LessThan2~0_combout\,
	combout => \inst|ball_instance|Ball_X_motion~2_combout\);

-- Location: LCFF_X42_Y28_N21
\inst|ball_instance|Ball_X_pos[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[8]~26_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(8));

-- Location: LCFF_X42_Y28_N15
\inst|ball_instance|Ball_X_pos[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[5]~20_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(5));

-- Location: LCFF_X42_Y28_N13
\inst|ball_instance|Ball_X_pos[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[4]~18_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(4));

-- Location: LCFF_X42_Y28_N11
\inst|ball_instance|Ball_X_pos[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[3]~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(3));

-- Location: LCCOMB_X41_Y28_N10
\inst|ball_instance|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~1_cout\ = CARRY(\inst|ball_instance|Ball_X_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(2),
	datad => VCC,
	cout => \inst|ball_instance|Add3~1_cout\);

-- Location: LCCOMB_X41_Y28_N12
\inst|ball_instance|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~2_combout\ = (\inst|ball_instance|Ball_X_pos\(3) & (\inst|ball_instance|Add3~1_cout\ & VCC)) # (!\inst|ball_instance|Ball_X_pos\(3) & (!\inst|ball_instance|Add3~1_cout\))
-- \inst|ball_instance|Add3~3\ = CARRY((!\inst|ball_instance|Ball_X_pos\(3) & !\inst|ball_instance|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|ball_instance|Add3~1_cout\,
	combout => \inst|ball_instance|Add3~2_combout\,
	cout => \inst|ball_instance|Add3~3\);

-- Location: LCCOMB_X41_Y28_N14
\inst|ball_instance|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~4_combout\ = (\inst|ball_instance|Ball_X_pos\(4) & ((GND) # (!\inst|ball_instance|Add3~3\))) # (!\inst|ball_instance|Ball_X_pos\(4) & (\inst|ball_instance|Add3~3\ $ (GND)))
-- \inst|ball_instance|Add3~5\ = CARRY((\inst|ball_instance|Ball_X_pos\(4)) # (!\inst|ball_instance|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|ball_instance|Add3~3\,
	combout => \inst|ball_instance|Add3~4_combout\,
	cout => \inst|ball_instance|Add3~5\);

-- Location: LCCOMB_X41_Y28_N18
\inst|ball_instance|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~8_combout\ = (\inst|ball_instance|Ball_X_pos\(6) & (\inst|ball_instance|Add3~7\ $ (GND))) # (!\inst|ball_instance|Ball_X_pos\(6) & ((GND) # (!\inst|ball_instance|Add3~7\)))
-- \inst|ball_instance|Add3~9\ = CARRY((!\inst|ball_instance|Add3~7\) # (!\inst|ball_instance|Ball_X_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|ball_instance|Add3~7\,
	combout => \inst|ball_instance|Add3~8_combout\,
	cout => \inst|ball_instance|Add3~9\);

-- Location: LCCOMB_X41_Y28_N20
\inst|ball_instance|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add3~10_combout\ = (\inst|ball_instance|Ball_X_pos\(7) & (\inst|ball_instance|Add3~9\ & VCC)) # (!\inst|ball_instance|Ball_X_pos\(7) & (!\inst|ball_instance|Add3~9\))
-- \inst|ball_instance|Add3~11\ = CARRY((!\inst|ball_instance|Ball_X_pos\(7) & !\inst|ball_instance|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|ball_instance|Add3~9\,
	combout => \inst|ball_instance|Add3~10_combout\,
	cout => \inst|ball_instance|Add3~11\);

-- Location: LCCOMB_X41_Y28_N8
\inst|ball_instance|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan3~0_combout\ = (\inst|ball_instance|Ball_X_pos\(0)) # ((\inst|ball_instance|Ball_X_pos\(1)) # ((\inst|ball_instance|Add3~2_combout\) # (!\inst|ball_instance|Ball_X_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(0),
	datab => \inst|ball_instance|Ball_X_pos\(1),
	datac => \inst|ball_instance|Ball_X_pos\(2),
	datad => \inst|ball_instance|Add3~2_combout\,
	combout => \inst|ball_instance|LessThan3~0_combout\);

-- Location: LCCOMB_X41_Y28_N2
\inst|ball_instance|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan3~1_combout\ = (\inst|ball_instance|Add3~6_combout\) # ((\inst|ball_instance|Add3~4_combout\) # ((\inst|ball_instance|Add3~10_combout\) # (\inst|ball_instance|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add3~6_combout\,
	datab => \inst|ball_instance|Add3~4_combout\,
	datac => \inst|ball_instance|Add3~10_combout\,
	datad => \inst|ball_instance|Add3~8_combout\,
	combout => \inst|ball_instance|LessThan3~1_combout\);

-- Location: LCCOMB_X41_Y28_N4
\inst|ball_instance|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan3~2_combout\ = (\inst|ball_instance|Add3~14_combout\) # ((\inst|ball_instance|Add3~12_combout\) # ((\inst|ball_instance|LessThan3~0_combout\) # (\inst|ball_instance|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add3~14_combout\,
	datab => \inst|ball_instance|Add3~12_combout\,
	datac => \inst|ball_instance|LessThan3~0_combout\,
	datad => \inst|ball_instance|LessThan3~1_combout\,
	combout => \inst|ball_instance|LessThan3~2_combout\);

-- Location: LCCOMB_X44_Y28_N12
\inst|ball_instance|Ball_X_motion~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion~4_combout\ = (\inst|ball_instance|Ball_Y_motion~2_combout\) # ((\inst|ball_instance|Ball_X_motion~2_combout\) # ((\inst|ball_instance|Ball_X_motion~3_combout\ & !\inst|ball_instance|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_motion~3_combout\,
	datab => \inst|ball_instance|Ball_Y_motion~2_combout\,
	datac => \inst|ball_instance|Ball_X_motion~2_combout\,
	datad => \inst|ball_instance|LessThan3~2_combout\,
	combout => \inst|ball_instance|Ball_X_motion~4_combout\);

-- Location: LCCOMB_X44_Y28_N28
\inst|ball_instance|Ball_X_motion[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[0]~5_combout\ = (\inst|ball_instance|Ball_X_motion~4_combout\ & (!\inst|ball_instance|Ball_X_motion[0]~0_combout\)) # (!\inst|ball_instance|Ball_X_motion~4_combout\ & ((\inst|ball_instance|Ball_X_motion\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_motion[0]~0_combout\,
	datac => \inst|ball_instance|Ball_X_motion\(0),
	datad => \inst|ball_instance|Ball_X_motion~4_combout\,
	combout => \inst|ball_instance|Ball_X_motion[0]~5_combout\);

-- Location: LCFF_X44_Y28_N29
\inst|ball_instance|Ball_X_motion[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_motion[0]~5_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_motion\(0));

-- Location: LCCOMB_X44_Y28_N10
\inst|ball_instance|Ball_X_motion~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion~1_combout\ = (!\inst|ball_instance|Ball_X_motion\(9) & (!\inst|ball_instance|Ball_X_motion\(0) & !\inst|ball_instance|keyAck~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_X_motion\(9),
	datac => \inst|ball_instance|Ball_X_motion\(0),
	datad => \inst|ball_instance|keyAck~regout\,
	combout => \inst|ball_instance|Ball_X_motion~1_combout\);

-- Location: LCCOMB_X44_Y28_N18
\inst|ball_instance|Ball_X_motion[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[9]~6_combout\ = (\inst|ball_instance|Ball_X_motion~1_combout\) # ((\inst|ball_instance|keyAck~regout\ & (!\inst|ball_instance|Equal0~1_combout\ & \inst|ball_instance|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|keyAck~regout\,
	datab => \inst|ball_instance|Equal0~1_combout\,
	datac => \inst|ball_instance|Ball_X_motion~1_combout\,
	datad => \inst|ball_instance|Equal3~0_combout\,
	combout => \inst|ball_instance|Ball_X_motion[9]~6_combout\);

-- Location: LCCOMB_X43_Y28_N30
\inst|ball_instance|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan2~1_combout\ = (\inst|ball_instance|Ball_X_pos\(0) & (\inst|ball_instance|Ball_X_pos\(1) & (\inst|ball_instance|Add2~0_combout\ & !\inst|ball_instance|Ball_X_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(0),
	datab => \inst|ball_instance|Ball_X_pos\(1),
	datac => \inst|ball_instance|Add2~0_combout\,
	datad => \inst|ball_instance|Ball_X_pos\(2),
	combout => \inst|ball_instance|LessThan2~1_combout\);

-- Location: LCCOMB_X44_Y28_N8
\inst|ball_instance|Ball_X_motion[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[9]~7_combout\ = (\inst|ball_instance|Ball_X_motion[9]~6_combout\ & ((\inst|ball_instance|LessThan2~0_combout\) # ((\inst|ball_instance|LessThan2~2_combout\ & \inst|ball_instance|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|LessThan2~2_combout\,
	datab => \inst|ball_instance|Ball_X_motion[9]~6_combout\,
	datac => \inst|ball_instance|LessThan2~1_combout\,
	datad => \inst|ball_instance|LessThan2~0_combout\,
	combout => \inst|ball_instance|Ball_X_motion[9]~7_combout\);

-- Location: LCCOMB_X44_Y28_N2
\inst|ball_instance|Ball_X_motion[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_X_motion[9]~9_combout\ = (\inst|ball_instance|Ball_X_motion~4_combout\ & ((\inst|ball_instance|Ball_X_motion[9]~8_combout\) # ((\inst|ball_instance|Ball_X_motion[9]~7_combout\)))) # (!\inst|ball_instance|Ball_X_motion~4_combout\ & 
-- (((\inst|ball_instance|Ball_X_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_motion[9]~8_combout\,
	datab => \inst|ball_instance|Ball_X_motion[9]~7_combout\,
	datac => \inst|ball_instance|Ball_X_motion\(9),
	datad => \inst|ball_instance|Ball_X_motion~4_combout\,
	combout => \inst|ball_instance|Ball_X_motion[9]~9_combout\);

-- Location: LCFF_X44_Y28_N3
\inst|ball_instance|Ball_X_motion[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_motion[9]~9_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_motion\(9));

-- Location: LCFF_X42_Y28_N7
\inst|ball_instance|Ball_X_pos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_X_pos[1]~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_X_pos\(1));

-- Location: LCCOMB_X40_Y28_N10
\inst|Color_instance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~2_combout\ = (\inst|vgaSync_instance|hc\(1) & ((\inst|ball_instance|Ball_X_pos\(1) & (!\inst|Color_instance|Add0~1\)) # (!\inst|ball_instance|Ball_X_pos\(1) & (\inst|Color_instance|Add0~1\ & VCC)))) # 
-- (!\inst|vgaSync_instance|hc\(1) & ((\inst|ball_instance|Ball_X_pos\(1) & ((\inst|Color_instance|Add0~1\) # (GND))) # (!\inst|ball_instance|Ball_X_pos\(1) & (!\inst|Color_instance|Add0~1\))))
-- \inst|Color_instance|Add0~3\ = CARRY((\inst|vgaSync_instance|hc\(1) & (\inst|ball_instance|Ball_X_pos\(1) & !\inst|Color_instance|Add0~1\)) # (!\inst|vgaSync_instance|hc\(1) & ((\inst|ball_instance|Ball_X_pos\(1)) # (!\inst|Color_instance|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(1),
	datab => \inst|ball_instance|Ball_X_pos\(1),
	datad => VCC,
	cin => \inst|Color_instance|Add0~1\,
	combout => \inst|Color_instance|Add0~2_combout\,
	cout => \inst|Color_instance|Add0~3\);

-- Location: LCCOMB_X40_Y28_N12
\inst|Color_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~4_combout\ = ((\inst|vgaSync_instance|hc\(2) $ (\inst|ball_instance|Ball_X_pos\(2) $ (\inst|Color_instance|Add0~3\)))) # (GND)
-- \inst|Color_instance|Add0~5\ = CARRY((\inst|vgaSync_instance|hc\(2) & ((!\inst|Color_instance|Add0~3\) # (!\inst|ball_instance|Ball_X_pos\(2)))) # (!\inst|vgaSync_instance|hc\(2) & (!\inst|ball_instance|Ball_X_pos\(2) & !\inst|Color_instance|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(2),
	datab => \inst|ball_instance|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|Color_instance|Add0~3\,
	combout => \inst|Color_instance|Add0~4_combout\,
	cout => \inst|Color_instance|Add0~5\);

-- Location: LCFF_X36_Y30_N17
\inst|vgaSync_instance|hc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add0~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(3));

-- Location: LCCOMB_X40_Y28_N14
\inst|Color_instance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~6_combout\ = (\inst|ball_instance|Ball_X_pos\(3) & ((\inst|vgaSync_instance|hc\(3) & (!\inst|Color_instance|Add0~5\)) # (!\inst|vgaSync_instance|hc\(3) & ((\inst|Color_instance|Add0~5\) # (GND))))) # 
-- (!\inst|ball_instance|Ball_X_pos\(3) & ((\inst|vgaSync_instance|hc\(3) & (\inst|Color_instance|Add0~5\ & VCC)) # (!\inst|vgaSync_instance|hc\(3) & (!\inst|Color_instance|Add0~5\))))
-- \inst|Color_instance|Add0~7\ = CARRY((\inst|ball_instance|Ball_X_pos\(3) & ((!\inst|Color_instance|Add0~5\) # (!\inst|vgaSync_instance|hc\(3)))) # (!\inst|ball_instance|Ball_X_pos\(3) & (!\inst|vgaSync_instance|hc\(3) & !\inst|Color_instance|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(3),
	datab => \inst|vgaSync_instance|hc\(3),
	datad => VCC,
	cin => \inst|Color_instance|Add0~5\,
	combout => \inst|Color_instance|Add0~6_combout\,
	cout => \inst|Color_instance|Add0~7\);

-- Location: LCCOMB_X40_Y28_N16
\inst|Color_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~8_combout\ = ((\inst|vgaSync_instance|hc\(4) $ (\inst|ball_instance|Ball_X_pos\(4) $ (\inst|Color_instance|Add0~7\)))) # (GND)
-- \inst|Color_instance|Add0~9\ = CARRY((\inst|vgaSync_instance|hc\(4) & ((!\inst|Color_instance|Add0~7\) # (!\inst|ball_instance|Ball_X_pos\(4)))) # (!\inst|vgaSync_instance|hc\(4) & (!\inst|ball_instance|Ball_X_pos\(4) & !\inst|Color_instance|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(4),
	datab => \inst|ball_instance|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|Color_instance|Add0~7\,
	combout => \inst|Color_instance|Add0~8_combout\,
	cout => \inst|Color_instance|Add0~9\);

-- Location: LCCOMB_X40_Y28_N18
\inst|Color_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~10_combout\ = (\inst|ball_instance|Ball_X_pos\(5) & ((\inst|vgaSync_instance|hc\(5) & (!\inst|Color_instance|Add0~9\)) # (!\inst|vgaSync_instance|hc\(5) & ((\inst|Color_instance|Add0~9\) # (GND))))) # 
-- (!\inst|ball_instance|Ball_X_pos\(5) & ((\inst|vgaSync_instance|hc\(5) & (\inst|Color_instance|Add0~9\ & VCC)) # (!\inst|vgaSync_instance|hc\(5) & (!\inst|Color_instance|Add0~9\))))
-- \inst|Color_instance|Add0~11\ = CARRY((\inst|ball_instance|Ball_X_pos\(5) & ((!\inst|Color_instance|Add0~9\) # (!\inst|vgaSync_instance|hc\(5)))) # (!\inst|ball_instance|Ball_X_pos\(5) & (!\inst|vgaSync_instance|hc\(5) & !\inst|Color_instance|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(5),
	datab => \inst|vgaSync_instance|hc\(5),
	datad => VCC,
	cin => \inst|Color_instance|Add0~9\,
	combout => \inst|Color_instance|Add0~10_combout\,
	cout => \inst|Color_instance|Add0~11\);

-- Location: LCCOMB_X40_Y28_N20
\inst|Color_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~12_combout\ = ((\inst|vgaSync_instance|hc\(6) $ (\inst|ball_instance|Ball_X_pos\(6) $ (!\inst|Color_instance|Add0~11\)))) # (GND)
-- \inst|Color_instance|Add0~13\ = CARRY((\inst|vgaSync_instance|hc\(6) & ((\inst|ball_instance|Ball_X_pos\(6)) # (!\inst|Color_instance|Add0~11\))) # (!\inst|vgaSync_instance|hc\(6) & (\inst|ball_instance|Ball_X_pos\(6) & !\inst|Color_instance|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(6),
	datab => \inst|ball_instance|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Color_instance|Add0~11\,
	combout => \inst|Color_instance|Add0~12_combout\,
	cout => \inst|Color_instance|Add0~13\);

-- Location: LCCOMB_X40_Y28_N22
\inst|Color_instance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~14_combout\ = (\inst|vgaSync_instance|hc\(7) & ((\inst|ball_instance|Ball_X_pos\(7) & (!\inst|Color_instance|Add0~13\)) # (!\inst|ball_instance|Ball_X_pos\(7) & (\inst|Color_instance|Add0~13\ & VCC)))) # 
-- (!\inst|vgaSync_instance|hc\(7) & ((\inst|ball_instance|Ball_X_pos\(7) & ((\inst|Color_instance|Add0~13\) # (GND))) # (!\inst|ball_instance|Ball_X_pos\(7) & (!\inst|Color_instance|Add0~13\))))
-- \inst|Color_instance|Add0~15\ = CARRY((\inst|vgaSync_instance|hc\(7) & (\inst|ball_instance|Ball_X_pos\(7) & !\inst|Color_instance|Add0~13\)) # (!\inst|vgaSync_instance|hc\(7) & ((\inst|ball_instance|Ball_X_pos\(7)) # (!\inst|Color_instance|Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(7),
	datab => \inst|ball_instance|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Color_instance|Add0~13\,
	combout => \inst|Color_instance|Add0~14_combout\,
	cout => \inst|Color_instance|Add0~15\);

-- Location: LCCOMB_X40_Y28_N24
\inst|Color_instance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~16_combout\ = ((\inst|ball_instance|Ball_X_pos\(8) $ (\inst|vgaSync_instance|hc\(8) $ (!\inst|Color_instance|Add0~15\)))) # (GND)
-- \inst|Color_instance|Add0~17\ = CARRY((\inst|ball_instance|Ball_X_pos\(8) & ((\inst|vgaSync_instance|hc\(8)) # (!\inst|Color_instance|Add0~15\))) # (!\inst|ball_instance|Ball_X_pos\(8) & (\inst|vgaSync_instance|hc\(8) & !\inst|Color_instance|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_X_pos\(8),
	datab => \inst|vgaSync_instance|hc\(8),
	datad => VCC,
	cin => \inst|Color_instance|Add0~15\,
	combout => \inst|Color_instance|Add0~16_combout\,
	cout => \inst|Color_instance|Add0~17\);

-- Location: LCCOMB_X40_Y28_N26
\inst|Color_instance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add0~18_combout\ = \inst|vgaSync_instance|hc\(9) $ (\inst|Color_instance|Add0~17\ $ (!\inst|ball_instance|Ball_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|hc\(9),
	datad => \inst|ball_instance|Ball_X_pos\(9),
	cin => \inst|Color_instance|Add0~17\,
	combout => \inst|Color_instance|Add0~18_combout\);

-- Location: DSPMULT_X39_Y28_N0
\inst|Color_instance|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Color_instance|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X55_Y28_N10
\inst|ball_instance|Ball_Y_pos[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[0]~10_combout\ = (\inst|ball_instance|Ball_Y_pos\(0) & (\inst|ball_instance|Ball_Y_motion\(0) $ (VCC))) # (!\inst|ball_instance|Ball_Y_pos\(0) & (\inst|ball_instance|Ball_Y_motion\(0) & VCC))
-- \inst|ball_instance|Ball_Y_pos[0]~11\ = CARRY((\inst|ball_instance|Ball_Y_pos\(0) & \inst|ball_instance|Ball_Y_motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(0),
	datab => \inst|ball_instance|Ball_Y_motion\(0),
	datad => VCC,
	combout => \inst|ball_instance|Ball_Y_pos[0]~10_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[0]~11\);

-- Location: LCCOMB_X55_Y28_N12
\inst|ball_instance|Ball_Y_pos[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[1]~12_combout\ = (\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(1) & (\inst|ball_instance|Ball_Y_pos[0]~11\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(1) & 
-- (!\inst|ball_instance|Ball_Y_pos[0]~11\)))) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(1) & (!\inst|ball_instance|Ball_Y_pos[0]~11\)) # (!\inst|ball_instance|Ball_Y_pos\(1) & ((\inst|ball_instance|Ball_Y_pos[0]~11\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_Y_pos[1]~13\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & (!\inst|ball_instance|Ball_Y_pos\(1) & !\inst|ball_instance|Ball_Y_pos[0]~11\)) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((!\inst|ball_instance|Ball_Y_pos[0]~11\) # 
-- (!\inst|ball_instance|Ball_Y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[0]~11\,
	combout => \inst|ball_instance|Ball_Y_pos[1]~12_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[1]~13\);

-- Location: LCFF_X55_Y28_N13
\inst|ball_instance|Ball_Y_pos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_pos[1]~12_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(1));

-- Location: LCCOMB_X55_Y28_N14
\inst|ball_instance|Ball_Y_pos[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[2]~14_combout\ = ((\inst|ball_instance|Ball_Y_motion\(9) $ (\inst|ball_instance|Ball_Y_pos\(2) $ (!\inst|ball_instance|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst|ball_instance|Ball_Y_pos[2]~15\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(2)) # (!\inst|ball_instance|Ball_Y_pos[1]~13\))) # (!\inst|ball_instance|Ball_Y_motion\(9) & (\inst|ball_instance|Ball_Y_pos\(2) & 
-- !\inst|ball_instance|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[1]~13\,
	combout => \inst|ball_instance|Ball_Y_pos[2]~14_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[2]~15\);

-- Location: LCFF_X54_Y28_N25
\inst|ball_instance|Ball_Y_pos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|Ball_Y_pos[2]~14_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(2));

-- Location: LCCOMB_X55_Y28_N16
\inst|ball_instance|Ball_Y_pos[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[3]~16_combout\ = (\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(3) & (\inst|ball_instance|Ball_Y_pos[2]~15\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(3) & 
-- (!\inst|ball_instance|Ball_Y_pos[2]~15\)))) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(3) & (!\inst|ball_instance|Ball_Y_pos[2]~15\)) # (!\inst|ball_instance|Ball_Y_pos\(3) & ((\inst|ball_instance|Ball_Y_pos[2]~15\) # 
-- (GND)))))
-- \inst|ball_instance|Ball_Y_pos[3]~17\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & (!\inst|ball_instance|Ball_Y_pos\(3) & !\inst|ball_instance|Ball_Y_pos[2]~15\)) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((!\inst|ball_instance|Ball_Y_pos[2]~15\) # 
-- (!\inst|ball_instance|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[2]~15\,
	combout => \inst|ball_instance|Ball_Y_pos[3]~16_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[3]~17\);

-- Location: LCFF_X54_Y28_N3
\inst|ball_instance|Ball_Y_pos[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|Ball_Y_pos[3]~16_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(3));

-- Location: LCCOMB_X55_Y28_N18
\inst|ball_instance|Ball_Y_pos[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[4]~18_combout\ = (\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(4) & (!\inst|ball_instance|Ball_Y_pos[3]~17\)) # (!\inst|ball_instance|Ball_Y_pos\(4) & ((\inst|ball_instance|Ball_Y_pos[3]~17\) # 
-- (GND))))) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(4) & (\inst|ball_instance|Ball_Y_pos[3]~17\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(4) & (!\inst|ball_instance|Ball_Y_pos[3]~17\))))
-- \inst|ball_instance|Ball_Y_pos[4]~19\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & ((!\inst|ball_instance|Ball_Y_pos[3]~17\) # (!\inst|ball_instance|Ball_Y_pos\(4)))) # (!\inst|ball_instance|Ball_Y_motion\(9) & (!\inst|ball_instance|Ball_Y_pos\(4) & 
-- !\inst|ball_instance|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[3]~17\,
	combout => \inst|ball_instance|Ball_Y_pos[4]~18_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[4]~19\);

-- Location: LCFF_X54_Y28_N1
\inst|ball_instance|Ball_Y_pos[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|Ball_Y_pos[4]~18_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(4));

-- Location: LCCOMB_X55_Y28_N20
\inst|ball_instance|Ball_Y_pos[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[5]~20_combout\ = ((\inst|ball_instance|Ball_Y_motion\(9) $ (\inst|ball_instance|Ball_Y_pos\(5) $ (\inst|ball_instance|Ball_Y_pos[4]~19\)))) # (GND)
-- \inst|ball_instance|Ball_Y_pos[5]~21\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & (\inst|ball_instance|Ball_Y_pos\(5) & !\inst|ball_instance|Ball_Y_pos[4]~19\)) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(5)) # 
-- (!\inst|ball_instance|Ball_Y_pos[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[4]~19\,
	combout => \inst|ball_instance|Ball_Y_pos[5]~20_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[5]~21\);

-- Location: LCFF_X54_Y28_N15
\inst|ball_instance|Ball_Y_pos[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|Ball_Y_pos[5]~20_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(5));

-- Location: LCCOMB_X55_Y28_N22
\inst|ball_instance|Ball_Y_pos[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[6]~22_combout\ = (\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(6) & (!\inst|ball_instance|Ball_Y_pos[5]~21\)) # (!\inst|ball_instance|Ball_Y_pos\(6) & ((\inst|ball_instance|Ball_Y_pos[5]~21\) # 
-- (GND))))) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(6) & (\inst|ball_instance|Ball_Y_pos[5]~21\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(6) & (!\inst|ball_instance|Ball_Y_pos[5]~21\))))
-- \inst|ball_instance|Ball_Y_pos[6]~23\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & ((!\inst|ball_instance|Ball_Y_pos[5]~21\) # (!\inst|ball_instance|Ball_Y_pos\(6)))) # (!\inst|ball_instance|Ball_Y_motion\(9) & (!\inst|ball_instance|Ball_Y_pos\(6) & 
-- !\inst|ball_instance|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[5]~21\,
	combout => \inst|ball_instance|Ball_Y_pos[6]~22_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[6]~23\);

-- Location: LCFF_X54_Y28_N11
\inst|ball_instance|Ball_Y_pos[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	sdata => \inst|ball_instance|Ball_Y_pos[6]~22_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(6));

-- Location: LCCOMB_X55_Y28_N24
\inst|ball_instance|Ball_Y_pos[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[7]~24_combout\ = ((\inst|ball_instance|Ball_Y_motion\(9) $ (\inst|ball_instance|Ball_Y_pos\(7) $ (\inst|ball_instance|Ball_Y_pos[6]~23\)))) # (GND)
-- \inst|ball_instance|Ball_Y_pos[7]~25\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & (\inst|ball_instance|Ball_Y_pos\(7) & !\inst|ball_instance|Ball_Y_pos[6]~23\)) # (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(7)) # 
-- (!\inst|ball_instance|Ball_Y_pos[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[6]~23\,
	combout => \inst|ball_instance|Ball_Y_pos[7]~24_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[7]~25\);

-- Location: LCFF_X55_Y28_N25
\inst|ball_instance|Ball_Y_pos[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_pos[7]~24_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(7));

-- Location: LCCOMB_X55_Y28_N26
\inst|ball_instance|Ball_Y_pos[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[8]~26_combout\ = ((\inst|ball_instance|Ball_Y_motion\(9) $ (\inst|ball_instance|Ball_Y_pos\(8) $ (!\inst|ball_instance|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst|ball_instance|Ball_Y_pos[8]~27\ = CARRY((\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Ball_Y_pos\(8)) # (!\inst|ball_instance|Ball_Y_pos[7]~25\))) # (!\inst|ball_instance|Ball_Y_motion\(9) & (\inst|ball_instance|Ball_Y_pos\(8) & 
-- !\inst|ball_instance|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datab => \inst|ball_instance|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|ball_instance|Ball_Y_pos[7]~25\,
	combout => \inst|ball_instance|Ball_Y_pos[8]~26_combout\,
	cout => \inst|ball_instance|Ball_Y_pos[8]~27\);

-- Location: LCFF_X55_Y28_N27
\inst|ball_instance|Ball_Y_pos[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_pos[8]~26_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(8));

-- Location: LCCOMB_X53_Y28_N16
\inst|ball_instance|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~1_cout\ = CARRY(\inst|ball_instance|Ball_Y_pos\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(2),
	datad => VCC,
	cout => \inst|ball_instance|Add1~1_cout\);

-- Location: LCCOMB_X53_Y28_N22
\inst|ball_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~6_combout\ = (\inst|ball_instance|Ball_Y_pos\(5) & (!\inst|ball_instance|Add1~5\)) # (!\inst|ball_instance|Ball_Y_pos\(5) & (\inst|ball_instance|Add1~5\ & VCC))
-- \inst|ball_instance|Add1~7\ = CARRY((\inst|ball_instance|Ball_Y_pos\(5) & !\inst|ball_instance|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|ball_instance|Add1~5\,
	combout => \inst|ball_instance|Add1~6_combout\,
	cout => \inst|ball_instance|Add1~7\);

-- Location: LCCOMB_X53_Y28_N24
\inst|ball_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~8_combout\ = (\inst|ball_instance|Ball_Y_pos\(6) & (\inst|ball_instance|Add1~7\ $ (GND))) # (!\inst|ball_instance|Ball_Y_pos\(6) & ((GND) # (!\inst|ball_instance|Add1~7\)))
-- \inst|ball_instance|Add1~9\ = CARRY((!\inst|ball_instance|Add1~7\) # (!\inst|ball_instance|Ball_Y_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|ball_instance|Add1~7\,
	combout => \inst|ball_instance|Add1~8_combout\,
	cout => \inst|ball_instance|Add1~9\);

-- Location: LCCOMB_X53_Y28_N26
\inst|ball_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~10_combout\ = (\inst|ball_instance|Ball_Y_pos\(7) & (!\inst|ball_instance|Add1~9\)) # (!\inst|ball_instance|Ball_Y_pos\(7) & (\inst|ball_instance|Add1~9\ & VCC))
-- \inst|ball_instance|Add1~11\ = CARRY((\inst|ball_instance|Ball_Y_pos\(7) & !\inst|ball_instance|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|ball_instance|Add1~9\,
	combout => \inst|ball_instance|Add1~10_combout\,
	cout => \inst|ball_instance|Add1~11\);

-- Location: LCCOMB_X53_Y28_N28
\inst|ball_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~12_combout\ = (\inst|ball_instance|Ball_Y_pos\(8) & ((GND) # (!\inst|ball_instance|Add1~11\))) # (!\inst|ball_instance|Ball_Y_pos\(8) & (\inst|ball_instance|Add1~11\ $ (GND)))
-- \inst|ball_instance|Add1~13\ = CARRY((\inst|ball_instance|Ball_Y_pos\(8)) # (!\inst|ball_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|ball_instance|Add1~11\,
	combout => \inst|ball_instance|Add1~12_combout\,
	cout => \inst|ball_instance|Add1~13\);

-- Location: LCCOMB_X53_Y28_N8
\inst|ball_instance|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan1~1_combout\ = (\inst|ball_instance|Add1~4_combout\) # ((\inst|ball_instance|Add1~10_combout\) # ((\inst|ball_instance|Add1~8_combout\) # (\inst|ball_instance|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add1~4_combout\,
	datab => \inst|ball_instance|Add1~10_combout\,
	datac => \inst|ball_instance|Add1~8_combout\,
	datad => \inst|ball_instance|Add1~6_combout\,
	combout => \inst|ball_instance|LessThan1~1_combout\);

-- Location: LCCOMB_X55_Y28_N28
\inst|ball_instance|Ball_Y_pos[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_pos[9]~28_combout\ = \inst|ball_instance|Ball_Y_motion\(9) $ (\inst|ball_instance|Ball_Y_pos[8]~27\ $ (\inst|ball_instance|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(9),
	datad => \inst|ball_instance|Ball_Y_pos\(9),
	cin => \inst|ball_instance|Ball_Y_pos[8]~27\,
	combout => \inst|ball_instance|Ball_Y_pos[9]~28_combout\);

-- Location: LCFF_X55_Y28_N29
\inst|ball_instance|Ball_Y_pos[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_pos[9]~28_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(9));

-- Location: LCCOMB_X53_Y28_N30
\inst|ball_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add1~14_combout\ = \inst|ball_instance|Add1~13\ $ (!\inst|ball_instance|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ball_instance|Ball_Y_pos\(9),
	cin => \inst|ball_instance|Add1~13\,
	combout => \inst|ball_instance|Add1~14_combout\);

-- Location: LCCOMB_X53_Y28_N6
\inst|ball_instance|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan1~2_combout\ = (\inst|ball_instance|LessThan1~0_combout\) # ((\inst|ball_instance|Add1~12_combout\) # ((\inst|ball_instance|LessThan1~1_combout\) # (\inst|ball_instance|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|LessThan1~0_combout\,
	datab => \inst|ball_instance|Add1~12_combout\,
	datac => \inst|ball_instance|LessThan1~1_combout\,
	datad => \inst|ball_instance|Add1~14_combout\,
	combout => \inst|ball_instance|LessThan1~2_combout\);

-- Location: LCCOMB_X54_Y28_N10
\inst|ball_instance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~4_combout\ = (\inst|ball_instance|Ball_Y_pos\(5) & (!\inst|ball_instance|Add0~3\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(5) & (\inst|ball_instance|Add0~3\ $ (GND)))
-- \inst|ball_instance|Add0~5\ = CARRY((!\inst|ball_instance|Ball_Y_pos\(5) & !\inst|ball_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|ball_instance|Add0~3\,
	combout => \inst|ball_instance|Add0~4_combout\,
	cout => \inst|ball_instance|Add0~5\);

-- Location: LCCOMB_X54_Y28_N14
\inst|ball_instance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~8_combout\ = (\inst|ball_instance|Ball_Y_pos\(7) & (!\inst|ball_instance|Add0~7\ & VCC)) # (!\inst|ball_instance|Ball_Y_pos\(7) & (\inst|ball_instance|Add0~7\ $ (GND)))
-- \inst|ball_instance|Add0~9\ = CARRY((!\inst|ball_instance|Ball_Y_pos\(7) & !\inst|ball_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_instance|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|ball_instance|Add0~7\,
	combout => \inst|ball_instance|Add0~8_combout\,
	cout => \inst|ball_instance|Add0~9\);

-- Location: LCCOMB_X54_Y28_N16
\inst|ball_instance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~10_combout\ = (\inst|ball_instance|Ball_Y_pos\(8) & (!\inst|ball_instance|Add0~9\)) # (!\inst|ball_instance|Ball_Y_pos\(8) & ((\inst|ball_instance|Add0~9\) # (GND)))
-- \inst|ball_instance|Add0~11\ = CARRY((!\inst|ball_instance|Add0~9\) # (!\inst|ball_instance|Ball_Y_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|ball_instance|Add0~9\,
	combout => \inst|ball_instance|Add0~10_combout\,
	cout => \inst|ball_instance|Add0~11\);

-- Location: LCCOMB_X54_Y28_N0
\inst|ball_instance|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan0~1_combout\ = ((!\inst|ball_instance|Add0~10_combout\) # (!\inst|ball_instance|Add0~8_combout\)) # (!\inst|ball_instance|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add0~6_combout\,
	datab => \inst|ball_instance|Add0~8_combout\,
	datad => \inst|ball_instance|Add0~10_combout\,
	combout => \inst|ball_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X54_Y28_N24
\inst|ball_instance|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|LessThan0~0_combout\ = (((\inst|ball_instance|Ball_Y_pos\(2)) # (!\inst|ball_instance|Ball_Y_pos\(0))) # (!\inst|ball_instance|Ball_Y_pos\(1))) # (!\inst|ball_instance|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add0~0_combout\,
	datab => \inst|ball_instance|Ball_Y_pos\(1),
	datac => \inst|ball_instance|Ball_Y_pos\(2),
	datad => \inst|ball_instance|Ball_Y_pos\(0),
	combout => \inst|ball_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y28_N2
\inst|ball_instance|Ball_Y_motion[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[9]~8_combout\ = (\inst|ball_instance|Add0~4_combout\) # ((\inst|ball_instance|Add0~2_combout\ & !\inst|ball_instance|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add0~2_combout\,
	datab => \inst|ball_instance|Add0~4_combout\,
	datad => \inst|ball_instance|LessThan0~0_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[9]~8_combout\);

-- Location: LCCOMB_X54_Y28_N28
\inst|ball_instance|Ball_Y_motion[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[9]~9_combout\ = (\inst|ball_instance|Equal2~1_combout\ & ((\inst|ball_instance|Add0~12_combout\) # ((!\inst|ball_instance|LessThan0~1_combout\ & \inst|ball_instance|Ball_Y_motion[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add0~12_combout\,
	datab => \inst|ball_instance|LessThan0~1_combout\,
	datac => \inst|ball_instance|Ball_Y_motion[9]~8_combout\,
	datad => \inst|ball_instance|Equal2~1_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[9]~9_combout\);

-- Location: LCCOMB_X54_Y28_N22
\inst|ball_instance|Ball_Y_motion[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[9]~10_combout\ = (\inst|ball_instance|keyAck~regout\ & ((\inst|ball_instance|Ball_Y_motion[9]~9_combout\) # ((\inst|ball_instance|Equal0~1_combout\ & \inst|ball_instance|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|keyAck~regout\,
	datab => \inst|ball_instance|Equal0~1_combout\,
	datac => \inst|ball_instance|LessThan1~2_combout\,
	datad => \inst|ball_instance|Ball_Y_motion[9]~9_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[9]~10_combout\);

-- Location: LCCOMB_X54_Y28_N18
\inst|ball_instance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Add0~12_combout\ = \inst|ball_instance|Add0~11\ $ (!\inst|ball_instance|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ball_instance|Ball_Y_pos\(9),
	cin => \inst|ball_instance|Add0~11\,
	combout => \inst|ball_instance|Add0~12_combout\);

-- Location: LCCOMB_X54_Y28_N30
\inst|ball_instance|Move_Ball~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Move_Ball~0_combout\ = (!\inst|ball_instance|LessThan0~1_combout\ & ((\inst|ball_instance|Add0~4_combout\) # ((\inst|ball_instance|Add0~2_combout\ & !\inst|ball_instance|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Add0~2_combout\,
	datab => \inst|ball_instance|LessThan0~0_combout\,
	datac => \inst|ball_instance|Add0~4_combout\,
	datad => \inst|ball_instance|LessThan0~1_combout\,
	combout => \inst|ball_instance|Move_Ball~0_combout\);

-- Location: LCCOMB_X54_Y28_N20
\inst|ball_instance|Move_Ball~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Move_Ball~1_combout\ = (\inst|ball_instance|Ball_Y_motion\(0) & (!\inst|ball_instance|Ball_Y_motion\(9) & ((\inst|ball_instance|Add0~12_combout\) # (\inst|ball_instance|Move_Ball~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(0),
	datab => \inst|ball_instance|Add0~12_combout\,
	datac => \inst|ball_instance|Ball_Y_motion\(9),
	datad => \inst|ball_instance|Move_Ball~0_combout\,
	combout => \inst|ball_instance|Move_Ball~1_combout\);

-- Location: LCCOMB_X54_Y28_N26
\inst|ball_instance|Ball_Y_motion[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[9]~7_combout\ = (\inst|ball_instance|Move_Ball~1_combout\ & (((\inst|ball_instance|Equal2~1_combout\ & \inst|ball_instance|LessThan1~2_combout\)) # (!\inst|ball_instance|keyAck~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|keyAck~regout\,
	datab => \inst|ball_instance|Equal2~1_combout\,
	datac => \inst|ball_instance|LessThan1~2_combout\,
	datad => \inst|ball_instance|Move_Ball~1_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[9]~7_combout\);

-- Location: LCCOMB_X54_Y28_N4
\inst|ball_instance|Ball_Y_motion[9]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[9]~11_combout\ = (\inst|ball_instance|Ball_Y_motion~3_combout\ & ((\inst|ball_instance|Ball_Y_motion[9]~10_combout\) # ((\inst|ball_instance|Ball_Y_motion[9]~7_combout\)))) # (!\inst|ball_instance|Ball_Y_motion~3_combout\ 
-- & (((\inst|ball_instance|Ball_Y_motion\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion~3_combout\,
	datab => \inst|ball_instance|Ball_Y_motion[9]~10_combout\,
	datac => \inst|ball_instance|Ball_Y_motion\(9),
	datad => \inst|ball_instance|Ball_Y_motion[9]~7_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[9]~11_combout\);

-- Location: LCFF_X54_Y28_N5
\inst|ball_instance|Ball_Y_motion[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_motion[9]~11_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_motion\(9));

-- Location: LCCOMB_X53_Y28_N2
\inst|ball_instance|Ball_Y_motion~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion~0_combout\ = (\inst|ball_instance|Ball_Y_motion\(0) & (\inst|ball_instance|Ball_Y_motion\(9) & (!\inst|ball_instance|keyAck~regout\ & !\inst|ball_instance|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion\(0),
	datab => \inst|ball_instance|Ball_Y_motion\(9),
	datac => \inst|ball_instance|keyAck~regout\,
	datad => \inst|ball_instance|Add1~14_combout\,
	combout => \inst|ball_instance|Ball_Y_motion~0_combout\);

-- Location: LCCOMB_X53_Y28_N4
\inst|ball_instance|Ball_Y_motion~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion~1_combout\ = (!\inst|ball_instance|LessThan1~0_combout\ & (!\inst|ball_instance|Add1~12_combout\ & (!\inst|ball_instance|LessThan1~1_combout\ & \inst|ball_instance|Ball_Y_motion~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|LessThan1~0_combout\,
	datab => \inst|ball_instance|Add1~12_combout\,
	datac => \inst|ball_instance|LessThan1~1_combout\,
	datad => \inst|ball_instance|Ball_Y_motion~0_combout\,
	combout => \inst|ball_instance|Ball_Y_motion~1_combout\);

-- Location: LCCOMB_X53_Y28_N14
\inst|ball_instance|Ball_Y_motion~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion~3_combout\ = (\inst|ball_instance|Ball_Y_motion~1_combout\) # ((\inst|ball_instance|Ball_Y_motion~2_combout\) # ((!\inst|ball_instance|keyAck~regout\ & \inst|ball_instance|Move_Ball~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|keyAck~regout\,
	datab => \inst|ball_instance|Ball_Y_motion~1_combout\,
	datac => \inst|ball_instance|Ball_Y_motion~2_combout\,
	datad => \inst|ball_instance|Move_Ball~1_combout\,
	combout => \inst|ball_instance|Ball_Y_motion~3_combout\);

-- Location: LCCOMB_X44_Y28_N4
\inst|ball_instance|Ball_Y_motion[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[0]~4_combout\ = (\inst|ball_instance|dataBuff\(3) & (\inst|ball_instance|dataBuff\(0) & (\inst|ball_instance|dataBuff\(2) $ (\inst|ball_instance|dataBuff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|dataBuff\(2),
	datab => \inst|ball_instance|dataBuff\(3),
	datac => \inst|ball_instance|dataBuff\(0),
	datad => \inst|ball_instance|dataBuff\(1),
	combout => \inst|ball_instance|Ball_Y_motion[0]~4_combout\);

-- Location: LCCOMB_X53_Y28_N12
\inst|ball_instance|Ball_Y_motion[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[0]~5_combout\ = (\inst|ball_instance|keyAck~regout\ & (!\inst|ball_instance|dataBuff\(5) & (\inst|ball_instance|Ball_Y_motion[0]~4_combout\))) # (!\inst|ball_instance|keyAck~regout\ & 
-- ((\inst|ball_instance|Move_Ball~1_combout\) # ((!\inst|ball_instance|dataBuff\(5) & \inst|ball_instance|Ball_Y_motion[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|keyAck~regout\,
	datab => \inst|ball_instance|dataBuff\(5),
	datac => \inst|ball_instance|Ball_Y_motion[0]~4_combout\,
	datad => \inst|ball_instance|Move_Ball~1_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[0]~5_combout\);

-- Location: LCCOMB_X53_Y28_N0
\inst|ball_instance|Ball_Y_motion[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ball_instance|Ball_Y_motion[0]~6_combout\ = (\inst|ball_instance|Ball_Y_motion~3_combout\ & ((\inst|ball_instance|Ball_Y_motion~1_combout\) # ((\inst|ball_instance|Ball_Y_motion[0]~5_combout\)))) # (!\inst|ball_instance|Ball_Y_motion~3_combout\ & 
-- (((\inst|ball_instance|Ball_Y_motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_motion~1_combout\,
	datab => \inst|ball_instance|Ball_Y_motion~3_combout\,
	datac => \inst|ball_instance|Ball_Y_motion\(0),
	datad => \inst|ball_instance|Ball_Y_motion[0]~5_combout\,
	combout => \inst|ball_instance|Ball_Y_motion[0]~6_combout\);

-- Location: LCFF_X53_Y28_N1
\inst|ball_instance|Ball_Y_motion[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_motion[0]~6_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_motion\(0));

-- Location: LCFF_X55_Y28_N11
\inst|ball_instance|Ball_Y_pos[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|vs~clkctrl_outclk\,
	datain => \inst|ball_instance|Ball_Y_pos[0]~10_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ball_instance|Ball_Y_pos\(0));

-- Location: LCCOMB_X40_Y29_N0
\inst|Color_instance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~0_combout\ = (\inst|vgaSync_instance|vc\(0) & ((GND) # (!\inst|ball_instance|Ball_Y_pos\(0)))) # (!\inst|vgaSync_instance|vc\(0) & (\inst|ball_instance|Ball_Y_pos\(0) $ (GND)))
-- \inst|Color_instance|Add1~1\ = CARRY((\inst|vgaSync_instance|vc\(0)) # (!\inst|ball_instance|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(0),
	datab => \inst|ball_instance|Ball_Y_pos\(0),
	datad => VCC,
	combout => \inst|Color_instance|Add1~0_combout\,
	cout => \inst|Color_instance|Add1~1\);

-- Location: LCCOMB_X40_Y29_N2
\inst|Color_instance|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~2_combout\ = (\inst|vgaSync_instance|vc\(1) & ((\inst|ball_instance|Ball_Y_pos\(1) & (!\inst|Color_instance|Add1~1\)) # (!\inst|ball_instance|Ball_Y_pos\(1) & (\inst|Color_instance|Add1~1\ & VCC)))) # 
-- (!\inst|vgaSync_instance|vc\(1) & ((\inst|ball_instance|Ball_Y_pos\(1) & ((\inst|Color_instance|Add1~1\) # (GND))) # (!\inst|ball_instance|Ball_Y_pos\(1) & (!\inst|Color_instance|Add1~1\))))
-- \inst|Color_instance|Add1~3\ = CARRY((\inst|vgaSync_instance|vc\(1) & (\inst|ball_instance|Ball_Y_pos\(1) & !\inst|Color_instance|Add1~1\)) # (!\inst|vgaSync_instance|vc\(1) & ((\inst|ball_instance|Ball_Y_pos\(1)) # (!\inst|Color_instance|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(1),
	datab => \inst|ball_instance|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|Color_instance|Add1~1\,
	combout => \inst|Color_instance|Add1~2_combout\,
	cout => \inst|Color_instance|Add1~3\);

-- Location: LCCOMB_X40_Y29_N4
\inst|Color_instance|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~4_combout\ = ((\inst|vgaSync_instance|vc\(2) $ (\inst|ball_instance|Ball_Y_pos\(2) $ (\inst|Color_instance|Add1~3\)))) # (GND)
-- \inst|Color_instance|Add1~5\ = CARRY((\inst|vgaSync_instance|vc\(2) & ((!\inst|Color_instance|Add1~3\) # (!\inst|ball_instance|Ball_Y_pos\(2)))) # (!\inst|vgaSync_instance|vc\(2) & (!\inst|ball_instance|Ball_Y_pos\(2) & !\inst|Color_instance|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(2),
	datab => \inst|ball_instance|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|Color_instance|Add1~3\,
	combout => \inst|Color_instance|Add1~4_combout\,
	cout => \inst|Color_instance|Add1~5\);

-- Location: LCCOMB_X40_Y29_N6
\inst|Color_instance|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~6_combout\ = (\inst|vgaSync_instance|vc\(3) & ((\inst|ball_instance|Ball_Y_pos\(3) & (!\inst|Color_instance|Add1~5\)) # (!\inst|ball_instance|Ball_Y_pos\(3) & (\inst|Color_instance|Add1~5\ & VCC)))) # 
-- (!\inst|vgaSync_instance|vc\(3) & ((\inst|ball_instance|Ball_Y_pos\(3) & ((\inst|Color_instance|Add1~5\) # (GND))) # (!\inst|ball_instance|Ball_Y_pos\(3) & (!\inst|Color_instance|Add1~5\))))
-- \inst|Color_instance|Add1~7\ = CARRY((\inst|vgaSync_instance|vc\(3) & (\inst|ball_instance|Ball_Y_pos\(3) & !\inst|Color_instance|Add1~5\)) # (!\inst|vgaSync_instance|vc\(3) & ((\inst|ball_instance|Ball_Y_pos\(3)) # (!\inst|Color_instance|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(3),
	datab => \inst|ball_instance|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|Color_instance|Add1~5\,
	combout => \inst|Color_instance|Add1~6_combout\,
	cout => \inst|Color_instance|Add1~7\);

-- Location: LCCOMB_X40_Y29_N8
\inst|Color_instance|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~8_combout\ = ((\inst|vgaSync_instance|vc\(4) $ (\inst|ball_instance|Ball_Y_pos\(4) $ (!\inst|Color_instance|Add1~7\)))) # (GND)
-- \inst|Color_instance|Add1~9\ = CARRY((\inst|vgaSync_instance|vc\(4) & ((\inst|ball_instance|Ball_Y_pos\(4)) # (!\inst|Color_instance|Add1~7\))) # (!\inst|vgaSync_instance|vc\(4) & (\inst|ball_instance|Ball_Y_pos\(4) & !\inst|Color_instance|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|vc\(4),
	datab => \inst|ball_instance|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|Color_instance|Add1~7\,
	combout => \inst|Color_instance|Add1~8_combout\,
	cout => \inst|Color_instance|Add1~9\);

-- Location: LCCOMB_X40_Y29_N10
\inst|Color_instance|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~10_combout\ = (\inst|ball_instance|Ball_Y_pos\(5) & ((\inst|vgaSync_instance|vc\(5) & (\inst|Color_instance|Add1~9\ & VCC)) # (!\inst|vgaSync_instance|vc\(5) & (!\inst|Color_instance|Add1~9\)))) # 
-- (!\inst|ball_instance|Ball_Y_pos\(5) & ((\inst|vgaSync_instance|vc\(5) & (!\inst|Color_instance|Add1~9\)) # (!\inst|vgaSync_instance|vc\(5) & ((\inst|Color_instance|Add1~9\) # (GND)))))
-- \inst|Color_instance|Add1~11\ = CARRY((\inst|ball_instance|Ball_Y_pos\(5) & (!\inst|vgaSync_instance|vc\(5) & !\inst|Color_instance|Add1~9\)) # (!\inst|ball_instance|Ball_Y_pos\(5) & ((!\inst|Color_instance|Add1~9\) # (!\inst|vgaSync_instance|vc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(5),
	datab => \inst|vgaSync_instance|vc\(5),
	datad => VCC,
	cin => \inst|Color_instance|Add1~9\,
	combout => \inst|Color_instance|Add1~10_combout\,
	cout => \inst|Color_instance|Add1~11\);

-- Location: LCCOMB_X40_Y29_N12
\inst|Color_instance|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~12_combout\ = ((\inst|ball_instance|Ball_Y_pos\(6) $ (\inst|vgaSync_instance|vc\(6) $ (!\inst|Color_instance|Add1~11\)))) # (GND)
-- \inst|Color_instance|Add1~13\ = CARRY((\inst|ball_instance|Ball_Y_pos\(6) & ((\inst|vgaSync_instance|vc\(6)) # (!\inst|Color_instance|Add1~11\))) # (!\inst|ball_instance|Ball_Y_pos\(6) & (\inst|vgaSync_instance|vc\(6) & !\inst|Color_instance|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(6),
	datab => \inst|vgaSync_instance|vc\(6),
	datad => VCC,
	cin => \inst|Color_instance|Add1~11\,
	combout => \inst|Color_instance|Add1~12_combout\,
	cout => \inst|Color_instance|Add1~13\);

-- Location: LCCOMB_X40_Y29_N14
\inst|Color_instance|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~14_combout\ = (\inst|ball_instance|Ball_Y_pos\(7) & ((\inst|vgaSync_instance|vc\(7) & (\inst|Color_instance|Add1~13\ & VCC)) # (!\inst|vgaSync_instance|vc\(7) & (!\inst|Color_instance|Add1~13\)))) # 
-- (!\inst|ball_instance|Ball_Y_pos\(7) & ((\inst|vgaSync_instance|vc\(7) & (!\inst|Color_instance|Add1~13\)) # (!\inst|vgaSync_instance|vc\(7) & ((\inst|Color_instance|Add1~13\) # (GND)))))
-- \inst|Color_instance|Add1~15\ = CARRY((\inst|ball_instance|Ball_Y_pos\(7) & (!\inst|vgaSync_instance|vc\(7) & !\inst|Color_instance|Add1~13\)) # (!\inst|ball_instance|Ball_Y_pos\(7) & ((!\inst|Color_instance|Add1~13\) # (!\inst|vgaSync_instance|vc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(7),
	datab => \inst|vgaSync_instance|vc\(7),
	datad => VCC,
	cin => \inst|Color_instance|Add1~13\,
	combout => \inst|Color_instance|Add1~14_combout\,
	cout => \inst|Color_instance|Add1~15\);

-- Location: LCCOMB_X40_Y29_N16
\inst|Color_instance|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~16_combout\ = ((\inst|ball_instance|Ball_Y_pos\(8) $ (\inst|vgaSync_instance|vc\(8) $ (\inst|Color_instance|Add1~15\)))) # (GND)
-- \inst|Color_instance|Add1~17\ = CARRY((\inst|ball_instance|Ball_Y_pos\(8) & (\inst|vgaSync_instance|vc\(8) & !\inst|Color_instance|Add1~15\)) # (!\inst|ball_instance|Ball_Y_pos\(8) & ((\inst|vgaSync_instance|vc\(8)) # (!\inst|Color_instance|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_instance|Ball_Y_pos\(8),
	datab => \inst|vgaSync_instance|vc\(8),
	datad => VCC,
	cin => \inst|Color_instance|Add1~15\,
	combout => \inst|Color_instance|Add1~16_combout\,
	cout => \inst|Color_instance|Add1~17\);

-- Location: LCCOMB_X40_Y29_N18
\inst|Color_instance|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add1~18_combout\ = \inst|vgaSync_instance|vc\(9) $ (\inst|Color_instance|Add1~17\ $ (!\inst|ball_instance|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|vgaSync_instance|vc\(9),
	datad => \inst|ball_instance|Ball_Y_pos\(9),
	cin => \inst|Color_instance|Add1~17\,
	combout => \inst|Color_instance|Add1~18_combout\);

-- Location: DSPMULT_X39_Y29_N0
\inst|Color_instance|Mult1|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Color_instance|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X38_Y29_N20
\inst|Color_instance|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~8_combout\ = ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ $ (!\inst|Color_instance|Add2~7\)))) # (GND)
-- \inst|Color_instance|Add2~9\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\) # (!\inst|Color_instance|Add2~7\))) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\ & !\inst|Color_instance|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~7\,
	combout => \inst|Color_instance|Add2~8_combout\,
	cout => \inst|Color_instance|Add2~9\);

-- Location: LCCOMB_X38_Y29_N22
\inst|Color_instance|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~10_combout\ = (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & (\inst|Color_instance|Add2~9\ & VCC)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & (!\inst|Color_instance|Add2~9\)))) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\inst|Color_instance|Add2~9\)) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & ((\inst|Color_instance|Add2~9\) # (GND)))))
-- \inst|Color_instance|Add2~11\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\ & !\inst|Color_instance|Add2~9\)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((!\inst|Color_instance|Add2~9\) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~9\,
	combout => \inst|Color_instance|Add2~10_combout\,
	cout => \inst|Color_instance|Add2~11\);

-- Location: LCCOMB_X38_Y29_N24
\inst|Color_instance|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~12_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\inst|Color_instance|Add2~11\)))) # (GND)
-- \inst|Color_instance|Add2~13\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\inst|Color_instance|Add2~11\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\inst|Color_instance|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT6\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~11\,
	combout => \inst|Color_instance|Add2~12_combout\,
	cout => \inst|Color_instance|Add2~13\);

-- Location: LCCOMB_X38_Y29_N28
\inst|Color_instance|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~16_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\inst|Color_instance|Add2~15\)))) # (GND)
-- \inst|Color_instance|Add2~17\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\inst|Color_instance|Add2~15\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\inst|Color_instance|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~15\,
	combout => \inst|Color_instance|Add2~16_combout\,
	cout => \inst|Color_instance|Add2~17\);

-- Location: LCCOMB_X38_Y28_N0
\inst|Color_instance|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~20_combout\ = ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ $ (!\inst|Color_instance|Add2~19\)))) # (GND)
-- \inst|Color_instance|Add2~21\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\) # (!\inst|Color_instance|Add2~19\))) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\ & (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\ & !\inst|Color_instance|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT10\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~19\,
	combout => \inst|Color_instance|Add2~20_combout\,
	cout => \inst|Color_instance|Add2~21\);

-- Location: LCCOMB_X38_Y28_N2
\inst|Color_instance|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~22_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & (\inst|Color_instance|Add2~21\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\inst|Color_instance|Add2~21\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (!\inst|Color_instance|Add2~21\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\inst|Color_instance|Add2~21\) # (GND)))))
-- \inst|Color_instance|Add2~23\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\ & !\inst|Color_instance|Add2~21\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\ & ((!\inst|Color_instance|Add2~21\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~21\,
	combout => \inst|Color_instance|Add2~22_combout\,
	cout => \inst|Color_instance|Add2~23\);

-- Location: LCCOMB_X38_Y28_N4
\inst|Color_instance|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~24_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (!\inst|Color_instance|Add2~23\)))) # (GND)
-- \inst|Color_instance|Add2~25\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\) # (!\inst|Color_instance|Add2~23\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\ & !\inst|Color_instance|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT12\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~23\,
	combout => \inst|Color_instance|Add2~24_combout\,
	cout => \inst|Color_instance|Add2~25\);

-- Location: LCCOMB_X38_Y28_N6
\inst|Color_instance|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~26_combout\ = (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & (\inst|Color_instance|Add2~25\ & VCC)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & (!\inst|Color_instance|Add2~25\)))) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\inst|Color_instance|Add2~25\)) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & ((\inst|Color_instance|Add2~25\) # (GND)))))
-- \inst|Color_instance|Add2~27\ = CARRY((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\ & !\inst|Color_instance|Add2~25\)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((!\inst|Color_instance|Add2~25\) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~25\,
	combout => \inst|Color_instance|Add2~26_combout\,
	cout => \inst|Color_instance|Add2~27\);

-- Location: LCCOMB_X38_Y28_N8
\inst|Color_instance|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~28_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (!\inst|Color_instance|Add2~27\)))) # (GND)
-- \inst|Color_instance|Add2~29\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\) # (!\inst|Color_instance|Add2~27\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\ & !\inst|Color_instance|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~27\,
	combout => \inst|Color_instance|Add2~28_combout\,
	cout => \inst|Color_instance|Add2~29\);

-- Location: LCCOMB_X38_Y28_N12
\inst|Color_instance|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~32_combout\ = ((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ $ (!\inst|Color_instance|Add2~31\)))) # (GND)
-- \inst|Color_instance|Add2~33\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\) # (!\inst|Color_instance|Add2~31\))) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\ & (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\inst|Color_instance|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT16\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~31\,
	combout => \inst|Color_instance|Add2~32_combout\,
	cout => \inst|Color_instance|Add2~33\);

-- Location: LCCOMB_X38_Y28_N14
\inst|Color_instance|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~34_combout\ = (\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & (\inst|Color_instance|Add2~33\ & VCC)) # 
-- (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & (!\inst|Color_instance|Add2~33\)))) # (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & 
-- (!\inst|Color_instance|Add2~33\)) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & ((\inst|Color_instance|Add2~33\) # (GND)))))
-- \inst|Color_instance|Add2~35\ = CARRY((\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\inst|Color_instance|Add2~33\)) # 
-- (!\inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\ & ((!\inst|Color_instance|Add2~33\) # (!\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT17\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \inst|Color_instance|Add2~33\,
	combout => \inst|Color_instance|Add2~34_combout\,
	cout => \inst|Color_instance|Add2~35\);

-- Location: LCCOMB_X38_Y28_N18
\inst|Color_instance|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Add2~38_combout\ = \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\ $ (\inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (\inst|Color_instance|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst|Color_instance|Mult0|auto_generated|mac_out2~DATAOUT19\,
	cin => \inst|Color_instance|Add2~37\,
	combout => \inst|Color_instance|Add2~38_combout\);

-- Location: LCCOMB_X38_Y29_N4
\inst|Color_instance|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~0_combout\ = (\inst|Color_instance|Add2~14_combout\) # ((\inst|Color_instance|Add2~16_combout\) # ((\inst|Color_instance|Add2~12_combout\) # (\inst|Color_instance|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Add2~14_combout\,
	datab => \inst|Color_instance|Add2~16_combout\,
	datac => \inst|Color_instance|Add2~12_combout\,
	datad => \inst|Color_instance|Add2~10_combout\,
	combout => \inst|Color_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y28_N24
\inst|Color_instance|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~1_combout\ = (\inst|Color_instance|Add2~18_combout\) # ((\inst|Color_instance|Add2~22_combout\) # ((\inst|Color_instance|Add2~24_combout\) # (\inst|Color_instance|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Add2~18_combout\,
	datab => \inst|Color_instance|Add2~22_combout\,
	datac => \inst|Color_instance|Add2~24_combout\,
	datad => \inst|Color_instance|Add2~20_combout\,
	combout => \inst|Color_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y29_N0
\inst|Color_instance|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~3_combout\ = (\inst|Color_instance|LessThan0~0_combout\) # ((\inst|Color_instance|LessThan0~1_combout\) # ((\inst|Color_instance|LessThan0~2_combout\ & \inst|Color_instance|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|LessThan0~2_combout\,
	datab => \inst|Color_instance|LessThan0~0_combout\,
	datac => \inst|Color_instance|Add2~8_combout\,
	datad => \inst|Color_instance|LessThan0~1_combout\,
	combout => \inst|Color_instance|LessThan0~3_combout\);

-- Location: LCCOMB_X38_Y28_N26
\inst|Color_instance|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~4_combout\ = (\inst|Color_instance|Add2~30_combout\) # ((\inst|Color_instance|Add2~26_combout\) # ((\inst|Color_instance|Add2~28_combout\) # (\inst|Color_instance|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Add2~30_combout\,
	datab => \inst|Color_instance|Add2~26_combout\,
	datac => \inst|Color_instance|Add2~28_combout\,
	datad => \inst|Color_instance|Add2~32_combout\,
	combout => \inst|Color_instance|LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y28_N28
\inst|Color_instance|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|LessThan0~5_combout\ = (\inst|Color_instance|Add2~36_combout\) # ((\inst|Color_instance|Add2~34_combout\) # (\inst|Color_instance|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|Add2~36_combout\,
	datac => \inst|Color_instance|Add2~34_combout\,
	datad => \inst|Color_instance|LessThan0~4_combout\,
	combout => \inst|Color_instance|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y30_N18
\inst|Color_instance|Blue[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[9]~0_combout\ = (\inst|vgaSync_instance|hc\(9) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~3_combout\) # (\inst|Color_instance|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(9),
	datab => \inst|Color_instance|Add2~38_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|LessThan0~5_combout\,
	combout => \inst|Color_instance|Blue[9]~0_combout\);

-- Location: LCCOMB_X37_Y30_N28
\inst|Color_instance|Blue[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[8]~1_combout\ = (\inst|vgaSync_instance|hc\(8) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|LessThan0~5_combout\,
	datab => \inst|vgaSync_instance|hc\(8),
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[8]~1_combout\);

-- Location: LCCOMB_X28_Y32_N8
\inst|Color_instance|Blue[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[7]~2_combout\ = (\inst|vgaSync_instance|hc\(7) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(7),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[7]~2_combout\);

-- Location: LCCOMB_X28_Y32_N10
\inst|Color_instance|Blue[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[6]~3_combout\ = (\inst|vgaSync_instance|hc\(6) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(6),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[6]~3_combout\);

-- Location: LCCOMB_X28_Y32_N4
\inst|Color_instance|Blue[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[5]~4_combout\ = (\inst|vgaSync_instance|hc\(5) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(5),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[5]~4_combout\);

-- Location: LCCOMB_X28_Y32_N22
\inst|Color_instance|Blue[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[4]~5_combout\ = (\inst|vgaSync_instance|hc\(4) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(4),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[4]~5_combout\);

-- Location: LCCOMB_X28_Y32_N20
\inst|Color_instance|Blue[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[3]~6_combout\ = (\inst|vgaSync_instance|hc\(3) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(3),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[3]~6_combout\);

-- Location: LCCOMB_X28_Y32_N14
\inst|Color_instance|Blue[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[2]~7_combout\ = (\inst|vgaSync_instance|hc\(2) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(2),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[2]~7_combout\);

-- Location: LCFF_X36_Y30_N13
\inst|vgaSync_instance|hc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|vgaSync_instance|clkdiv~clkctrl_outclk\,
	datain => \inst|vgaSync_instance|Add0~2_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|vgaSync_instance|hc\(1));

-- Location: LCCOMB_X28_Y32_N28
\inst|Color_instance|Blue[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[1]~8_combout\ = (\inst|vgaSync_instance|hc\(1) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(1),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[1]~8_combout\);

-- Location: LCCOMB_X28_Y32_N26
\inst|Color_instance|Blue[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Blue[0]~9_combout\ = (\inst|vgaSync_instance|hc\(0) & (!\inst|Color_instance|Add2~38_combout\ & ((\inst|Color_instance|LessThan0~5_combout\) # (\inst|Color_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(0),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Blue[0]~9_combout\);

-- Location: LCCOMB_X64_Y7_N0
\inst3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst1|ins3t|keyData\(0) & ((\inst1|ins3t|keyData\(3)) # (\inst1|ins3t|keyData\(1) $ (\inst1|ins3t|keyData\(2))))) # (!\inst1|ins3t|keyData\(0) & ((\inst1|ins3t|keyData\(1)) # (\inst1|ins3t|keyData\(3) $ 
-- (\inst1|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(3) $ (((\inst1|ins3t|keyData\(1)) # (!\inst1|ins3t|keyData\(2)))))) # (!\inst1|ins3t|keyData\(0) & (!\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(1) & 
-- !\inst1|ins3t|keyData\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\inst3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst1|ins3t|keyData\(1) & (!\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(0)))) # (!\inst1|ins3t|keyData\(1) & ((\inst1|ins3t|keyData\(2) & (!\inst1|ins3t|keyData\(3))) # (!\inst1|ins3t|keyData\(2) & 
-- ((\inst1|ins3t|keyData\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\inst3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst1|ins3t|keyData\(1) & ((\inst1|ins3t|keyData\(0) & ((\inst1|ins3t|keyData\(2)))) # (!\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(3) & !\inst1|ins3t|keyData\(2))))) # (!\inst1|ins3t|keyData\(1) & 
-- (!\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(0) $ (\inst1|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(2) & ((\inst1|ins3t|keyData\(1)) # (!\inst1|ins3t|keyData\(0))))) # (!\inst1|ins3t|keyData\(3) & (!\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(1) & 
-- !\inst1|ins3t|keyData\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst1|ins3t|keyData\(3) & ((\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(1))) # (!\inst1|ins3t|keyData\(0) & ((\inst1|ins3t|keyData\(2)))))) # (!\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(2) & 
-- (\inst1|ins3t|keyData\(0) $ (\inst1|ins3t|keyData\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N8
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst1|ins3t|keyData\(3) & (\inst1|ins3t|keyData\(0) & (\inst1|ins3t|keyData\(1) $ (\inst1|ins3t|keyData\(2))))) # (!\inst1|ins3t|keyData\(3) & (!\inst1|ins3t|keyData\(1) & (\inst1|ins3t|keyData\(0) $ 
-- (\inst1|ins3t|keyData\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(3),
	datab => \inst1|ins3t|keyData\(0),
	datac => \inst1|ins3t|keyData\(1),
	datad => \inst1|ins3t|keyData\(2),
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst1|ins3t|keyData\(4) & ((\inst1|ins3t|keyData\(7)) # (\inst1|ins3t|keyData\(6) $ (\inst1|ins3t|keyData\(5))))) # (!\inst1|ins3t|keyData\(4) & ((\inst1|ins3t|keyData\(5)) # (\inst1|ins3t|keyData\(7) $ 
-- (\inst1|ins3t|keyData\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\inst2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst1|ins3t|keyData\(6) & (\inst1|ins3t|keyData\(4) & (\inst1|ins3t|keyData\(7) $ (\inst1|ins3t|keyData\(5))))) # (!\inst1|ins3t|keyData\(6) & (!\inst1|ins3t|keyData\(7) & ((\inst1|ins3t|keyData\(5)) # 
-- (\inst1|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\inst2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst1|ins3t|keyData\(5) & (!\inst1|ins3t|keyData\(7) & ((\inst1|ins3t|keyData\(4))))) # (!\inst1|ins3t|keyData\(5) & ((\inst1|ins3t|keyData\(6) & (!\inst1|ins3t|keyData\(7))) # (!\inst1|ins3t|keyData\(6) & 
-- ((\inst1|ins3t|keyData\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\inst2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst1|ins3t|keyData\(5) & ((\inst1|ins3t|keyData\(6) & ((\inst1|ins3t|keyData\(4)))) # (!\inst1|ins3t|keyData\(6) & (\inst1|ins3t|keyData\(7) & !\inst1|ins3t|keyData\(4))))) # (!\inst1|ins3t|keyData\(5) & 
-- (!\inst1|ins3t|keyData\(7) & (\inst1|ins3t|keyData\(6) $ (\inst1|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst1|ins3t|keyData\(7) & (\inst1|ins3t|keyData\(6) & ((\inst1|ins3t|keyData\(5)) # (!\inst1|ins3t|keyData\(4))))) # (!\inst1|ins3t|keyData\(7) & (!\inst1|ins3t|keyData\(6) & (\inst1|ins3t|keyData\(5) & 
-- !\inst1|ins3t|keyData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst1|ins3t|keyData\(7) & ((\inst1|ins3t|keyData\(4) & ((\inst1|ins3t|keyData\(5)))) # (!\inst1|ins3t|keyData\(4) & (\inst1|ins3t|keyData\(6))))) # (!\inst1|ins3t|keyData\(7) & (\inst1|ins3t|keyData\(6) & 
-- (\inst1|ins3t|keyData\(5) $ (\inst1|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst1|ins3t|keyData\(7) & (\inst1|ins3t|keyData\(4) & (\inst1|ins3t|keyData\(6) $ (\inst1|ins3t|keyData\(5))))) # (!\inst1|ins3t|keyData\(7) & (!\inst1|ins3t|keyData\(5) & (\inst1|ins3t|keyData\(6) $ 
-- (\inst1|ins3t|keyData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ins3t|keyData\(7),
	datab => \inst1|ins3t|keyData\(6),
	datac => \inst1|ins3t|keyData\(5),
	datad => \inst1|ins3t|keyData\(4),
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y30_N6
\inst|Color_instance|Green[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[9]~0_combout\ = (\inst|vgaSync_instance|hc\(9)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~3_combout\ & !\inst|Color_instance|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(9),
	datab => \inst|Color_instance|Add2~38_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|LessThan0~5_combout\,
	combout => \inst|Color_instance|Green[9]~0_combout\);

-- Location: LCCOMB_X37_Y30_N20
\inst|Color_instance|Green[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[8]~1_combout\ = (\inst|vgaSync_instance|hc\(8)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Color_instance|LessThan0~5_combout\,
	datab => \inst|vgaSync_instance|hc\(8),
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[8]~1_combout\);

-- Location: LCCOMB_X28_Y32_N16
\inst|Color_instance|Green[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[7]~2_combout\ = (\inst|vgaSync_instance|hc\(7)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(7),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[7]~2_combout\);

-- Location: LCCOMB_X28_Y32_N2
\inst|Color_instance|Green[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[6]~3_combout\ = (\inst|vgaSync_instance|hc\(6)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(6),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[6]~3_combout\);

-- Location: LCCOMB_X28_Y32_N0
\inst|Color_instance|Green[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[5]~4_combout\ = (\inst|vgaSync_instance|hc\(5)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(5),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[5]~4_combout\);

-- Location: LCCOMB_X28_Y32_N30
\inst|Color_instance|Green[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[4]~5_combout\ = (\inst|vgaSync_instance|hc\(4)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(4),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[4]~5_combout\);

-- Location: LCCOMB_X28_Y32_N24
\inst|Color_instance|Green[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[3]~6_combout\ = (\inst|vgaSync_instance|hc\(3)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(3),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[3]~6_combout\);

-- Location: LCCOMB_X28_Y32_N6
\inst|Color_instance|Green[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[2]~7_combout\ = (\inst|vgaSync_instance|hc\(2)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(2),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[2]~7_combout\);

-- Location: LCCOMB_X28_Y32_N12
\inst|Color_instance|Green[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[1]~8_combout\ = (\inst|vgaSync_instance|hc\(1)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(1),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[1]~8_combout\);

-- Location: LCCOMB_X28_Y32_N18
\inst|Color_instance|Green[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Color_instance|Green[0]~9_combout\ = (\inst|vgaSync_instance|hc\(0)) # ((\inst|Color_instance|Add2~38_combout\) # ((!\inst|Color_instance|LessThan0~5_combout\ & !\inst|Color_instance|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vgaSync_instance|hc\(0),
	datab => \inst|Color_instance|LessThan0~5_combout\,
	datac => \inst|Color_instance|LessThan0~3_combout\,
	datad => \inst|Color_instance|Add2~38_combout\,
	combout => \inst|Color_instance|Green[0]~9_combout\);

-- Location: LCCOMB_X44_Y26_N0
\inst4|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~1_combout\ = (!\inst1|inst3|state.d~regout\ & ((\inst1|inst3|state.w~regout\) # ((\inst1|inst3|state.a~regout\) # (\inst1|inst3|state.s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst4|Mux1~1_combout\);

-- Location: LCCOMB_X44_Y26_N18
\inst4|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~2_combout\ = (!\inst1|inst3|state.w~regout\ & (\inst1|inst3|state.d~regout\ & (!\inst1|inst3|state.a~regout\ & !\inst1|inst3|state.s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst4|Mux1~2_combout\);

-- Location: LCCOMB_X44_Y26_N26
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst1|inst3|state.s~regout\ & ((\inst1|inst3|state.w~regout\ & (!\inst1|inst3|state.d~regout\)) # (!\inst1|inst3|state.w~regout\ & (\inst1|inst3|state.d~regout\ & !\inst1|inst3|state.a~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y26_N28
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst1|inst3|state.w~regout\ & ((\inst1|inst3|state.d~regout\) # ((\inst1|inst3|state.s~regout\)))) # (!\inst1|inst3|state.w~regout\ & (((\inst1|inst3|state.a~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y26_N6
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst1|inst3|state.s~regout\) # ((\inst1|inst3|state.w~regout\ & (\inst1|inst3|state.d~regout\)) # (!\inst1|inst3|state.w~regout\ & ((\inst1|inst3|state.a~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y26_N24
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst1|inst3|state.w~regout\ & (!\inst1|inst3|state.d~regout\ & ((!\inst1|inst3|state.s~regout\)))) # (!\inst1|inst3|state.w~regout\ & (((!\inst1|inst3|state.a~regout\ & \inst1|inst3|state.s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3|state.w~regout\,
	datab => \inst1|inst3|state.d~regout\,
	datac => \inst1|inst3|state.a~regout\,
	datad => \inst1|inst3|state.s~regout\,
	combout => \inst5|Mux6~0_combout\);

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
	datain => \inst|vgaSync_instance|clkdiv~regout\,
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
	datain => \inst|vgaSync_instance|ALT_INV_blank_proc~1_combout\,
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
	datain => \inst|vgaSync_instance|vs~regout\,
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
	datain => \inst|vgaSync_instance|hs~regout\,
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
	datain => \inst|Color_instance|Blue[9]~0_combout\,
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
	datain => \inst|Color_instance|Blue[8]~1_combout\,
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
	datain => \inst|Color_instance|Blue[7]~2_combout\,
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
	datain => \inst|Color_instance|Blue[6]~3_combout\,
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
	datain => \inst|Color_instance|Blue[5]~4_combout\,
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
	datain => \inst|Color_instance|Blue[4]~5_combout\,
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
	datain => \inst|Color_instance|Blue[3]~6_combout\,
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
	datain => \inst|Color_instance|Blue[2]~7_combout\,
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
	datain => \inst|Color_instance|Blue[1]~8_combout\,
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
	datain => \inst|Color_instance|Blue[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Blue(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[6]~I\ : cycloneii_io
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
	padio => ww_Code0(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[5]~I\ : cycloneii_io
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
	padio => ww_Code0(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[4]~I\ : cycloneii_io
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
	padio => ww_Code0(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[3]~I\ : cycloneii_io
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
	padio => ww_Code0(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[2]~I\ : cycloneii_io
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
	padio => ww_Code0(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[1]~I\ : cycloneii_io
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
	padio => ww_Code0(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code0[0]~I\ : cycloneii_io
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
	padio => ww_Code0(0));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[6]~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[5]~I\ : cycloneii_io
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
	datain => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(5));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[4]~I\ : cycloneii_io
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
	datain => \inst2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(4));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[3]~I\ : cycloneii_io
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
	datain => \inst2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[2]~I\ : cycloneii_io
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
	datain => \inst2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(2));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[1]~I\ : cycloneii_io
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
	datain => \inst2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(1));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Code1[0]~I\ : cycloneii_io
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
	datain => \inst2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Code1(0));

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
	datain => \inst|Color_instance|Green[9]~0_combout\,
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
	datain => \inst|Color_instance|Green[8]~1_combout\,
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
	datain => \inst|Color_instance|Green[7]~2_combout\,
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
	datain => \inst|Color_instance|Green[6]~3_combout\,
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
	datain => \inst|Color_instance|Green[5]~4_combout\,
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
	datain => \inst|Color_instance|Green[4]~5_combout\,
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
	datain => \inst|Color_instance|Green[3]~6_combout\,
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
	datain => \inst|Color_instance|Green[2]~7_combout\,
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
	datain => \inst|Color_instance|Green[1]~8_combout\,
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
	datain => \inst|Color_instance|Green[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Green(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[6]~I\ : cycloneii_io
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
	datain => \inst1|inst3|ALT_INV_state.d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyh(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[5]~I\ : cycloneii_io
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
	padio => ww_keyh(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[4]~I\ : cycloneii_io
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
	datain => \inst1|inst3|ALT_INV_WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyh(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[3]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyh(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[2]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyh(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[1]~I\ : cycloneii_io
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
	padio => ww_keyh(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyh[0]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyh(0));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[6]~I\ : cycloneii_io
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
	datain => \inst1|inst3|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[5]~I\ : cycloneii_io
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
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[4]~I\ : cycloneii_io
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
	datain => \inst4|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[3]~I\ : cycloneii_io
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
	padio => ww_keyl(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[2]~I\ : cycloneii_io
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
	datain => \inst5|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[1]~I\ : cycloneii_io
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
	datain => \inst5|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyl[0]~I\ : cycloneii_io
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
	datain => \inst5|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyl(0));

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
	datain => \inst|Color_instance|Green[9]~0_combout\,
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
	datain => \inst|Color_instance|Green[8]~1_combout\,
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
	datain => \inst|Color_instance|Green[7]~2_combout\,
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
	datain => \inst|Color_instance|Green[6]~3_combout\,
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
	datain => \inst|Color_instance|Green[5]~4_combout\,
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
	datain => \inst|Color_instance|Green[4]~5_combout\,
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
	datain => \inst|Color_instance|Green[3]~6_combout\,
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
	datain => \inst|Color_instance|Green[2]~7_combout\,
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
	datain => \inst|Color_instance|Green[1]~8_combout\,
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
	datain => \inst|Color_instance|Green[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Red(0));
END structure;


