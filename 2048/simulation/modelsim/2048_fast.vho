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

-- DATE "04/17/2014 00:47:49"

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
	dir : OUT std_logic_vector(1 DOWNTO 0);
	freeTiles : OUT std_logic_vector(15 DOWNTO 0);
	keyPressH : OUT std_logic_vector(6 DOWNTO 0);
	keyPressL : OUT std_logic_vector(6 DOWNTO 0);
	moveAck : IN std_logic
	);
END \2048\;

-- Design Ports Information
-- newMove	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_dir : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_freeTiles : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_keyPressH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_keyPressL : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_moveAck : std_logic;
SIGNAL \inst|inst|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst2|fall_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|count[1]~10_combout\ : std_logic;
SIGNAL \inst|inst|count[4]~16_combout\ : std_logic;
SIGNAL \inst|inst3|state.aEnd~regout\ : std_logic;
SIGNAL \inst|inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst|inst3|state.sEnd~regout\ : std_logic;
SIGNAL \inst|inst3|state.dEnd~regout\ : std_logic;
SIGNAL \inst|inst3|Selector0~2_combout\ : std_logic;
SIGNAL \inst|inst2|reg2|Q~regout\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~regout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~combout\ : std_logic;
SIGNAL \inst|inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector8~0_combout\ : std_logic;
SIGNAL \ps2clk~combout\ : std_logic;
SIGNAL \inst|inst2|fall_edge~clkctrl_outclk\ : std_logic;
SIGNAL \inst|inst2|reg1|Q~feeder_combout\ : std_logic;
SIGNAL \inst|inst|count[0]~8_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst|inst|count[0]~9\ : std_logic;
SIGNAL \inst|inst|count[1]~11\ : std_logic;
SIGNAL \inst|inst|count[2]~12_combout\ : std_logic;
SIGNAL \inst|inst|count[2]~13\ : std_logic;
SIGNAL \inst|inst|count[3]~15\ : std_logic;
SIGNAL \inst|inst|count[4]~17\ : std_logic;
SIGNAL \inst|inst|count[5]~18_combout\ : std_logic;
SIGNAL \inst|inst|count[5]~19\ : std_logic;
SIGNAL \inst|inst|count[6]~20_combout\ : std_logic;
SIGNAL \inst|inst|count[6]~21\ : std_logic;
SIGNAL \inst|inst|count[7]~22_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|count[3]~14_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|temp~0_combout\ : std_logic;
SIGNAL \inst|inst|temp~regout\ : std_logic;
SIGNAL \inst|inst|temp~clkctrl_outclk\ : std_logic;
SIGNAL \psData~combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|count~1_combout\ : std_logic;
SIGNAL \inst|ins3t|count~0_combout\ : std_logic;
SIGNAL \inst|ins3t|count~2_combout\ : std_logic;
SIGNAL \inst|ins3t|count[2]~3_combout\ : std_logic;
SIGNAL \inst|ins3t|Equal0~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyData[7]~0_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ins3t|dataIn[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst3|Selector4~1_combout\ : std_logic;
SIGNAL \inst|inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst|inst3|WideOr5~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector4~2_combout\ : std_logic;
SIGNAL \inst|ins3t|keyRed~regout\ : std_logic;
SIGNAL \inst|inst3|key~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|key~regout\ : std_logic;
SIGNAL \inst|ins3t|comb~0_combout\ : std_logic;
SIGNAL \inst|ins3t|keyReady~combout\ : std_logic;
SIGNAL \inst|inst3|control_reg~0_combout\ : std_logic;
SIGNAL \inst|inst3|state.d~regout\ : std_logic;
SIGNAL \inst|inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst|inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst|inst3|Selector3~3_combout\ : std_logic;
SIGNAL \inst|inst3|state.s~regout\ : std_logic;
SIGNAL \inst|inst3|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst|inst3|state.a~regout\ : std_logic;
SIGNAL \inst|inst3|Selector0~1_combout\ : std_logic;
SIGNAL \inst|inst3|next_state~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector0~3_combout\ : std_logic;
SIGNAL \inst|inst3|state.idle~regout\ : std_logic;
SIGNAL \inst|inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst|inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst|inst3|state.w~regout\ : std_logic;
SIGNAL \inst|inst3|WideOr5~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst1|handshake:ack~0_combout\ : std_logic;
SIGNAL \inst|inst1|handshake:ack~1_combout\ : std_logic;
SIGNAL \inst|inst1|handshake:ack~regout\ : std_logic;
SIGNAL \inst|inst1|handshake:dir[1]~0_combout\ : std_logic;
SIGNAL \inst|inst1|handshake:dir[0]~regout\ : std_logic;
SIGNAL \inst|inst1|handshake:dir[1]~regout\ : std_logic;
SIGNAL \inst8|gbFree[3][0]~0_combout\ : std_logic;
SIGNAL \inst8|ack~0_combout\ : std_logic;
SIGNAL \inst8|ack~regout\ : std_logic;
SIGNAL \inst|inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst3|state.wEnd~regout\ : std_logic;
SIGNAL \inst|inst1|handshake:move~0_combout\ : std_logic;
SIGNAL \inst|inst1|handshake:move~1_combout\ : std_logic;
SIGNAL \inst|inst1|newMove~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|gbFree[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst8|gbFree[3][0]~regout\ : std_logic;
SIGNAL \inst8|gbFree[1][0]~2_combout\ : std_logic;
SIGNAL \inst8|gbFree[1][0]~regout\ : std_logic;
SIGNAL \inst8|gbFree~1_combout\ : std_logic;
SIGNAL \inst8|gbFree[2][0]~regout\ : std_logic;
SIGNAL \inst8|gbFree[0][0]~3_combout\ : std_logic;
SIGNAL \inst8|gbFree[0][0]~4_combout\ : std_logic;
SIGNAL \inst8|gbFree[0][0]~regout\ : std_logic;
SIGNAL \inst3|Mux1~1_combout\ : std_logic;
SIGNAL \inst3|Mux1~2_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst|inst3|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|keyData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ins3t|dataIn\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|ins3t|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst3|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst|inst3|ALT_INV_state.d~regout\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

newMove <= ww_newMove;
ww_psData <= psData;
ww_ps2clk <= ps2clk;
ww_clk <= clk;
ww_reset <= reset;
dir <= ww_dir;
freeTiles <= ww_freeTiles;
keyPressH <= ww_keyPressH;
keyPressL <= ww_keyPressL;
ww_moveAck <= moveAck;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|inst|temp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst|temp~regout\);

\inst|inst2|fall_edge~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|inst2|fall_edge~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst|inst3|ALT_INV_WideOr5~0_combout\ <= NOT \inst|inst3|WideOr5~0_combout\;
\inst|inst3|ALT_INV_state.d~regout\ <= NOT \inst|inst3|state.d~regout\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCFF_X63_Y19_N7
\inst|inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[1]~10_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(1));

-- Location: LCFF_X63_Y19_N13
\inst|inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[4]~16_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(4));

-- Location: LCCOMB_X63_Y19_N6
\inst|inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[1]~10_combout\ = (\inst|inst|count\(1) & (!\inst|inst|count[0]~9\)) # (!\inst|inst|count\(1) & ((\inst|inst|count[0]~9\) # (GND)))
-- \inst|inst|count[1]~11\ = CARRY((!\inst|inst|count[0]~9\) # (!\inst|inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(1),
	datad => VCC,
	cin => \inst|inst|count[0]~9\,
	combout => \inst|inst|count[1]~10_combout\,
	cout => \inst|inst|count[1]~11\);

-- Location: LCCOMB_X63_Y19_N12
\inst|inst|count[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[4]~16_combout\ = (\inst|inst|count\(4) & (\inst|inst|count[3]~15\ $ (GND))) # (!\inst|inst|count\(4) & (!\inst|inst|count[3]~15\ & VCC))
-- \inst|inst|count[4]~17\ = CARRY((\inst|inst|count\(4) & !\inst|inst|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(4),
	datad => VCC,
	cin => \inst|inst|count[3]~15\,
	combout => \inst|inst|count[4]~16_combout\,
	cout => \inst|inst|count[4]~17\);

-- Location: LCFF_X63_Y3_N25
\inst|inst3|state.aEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector6~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.aEnd~regout\);

-- Location: LCCOMB_X63_Y3_N30
\inst|inst3|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector0~0_combout\ = (\inst|ins3t|keyData\(0) & (\inst|inst3|state.wEnd~regout\)) # (!\inst|ins3t|keyData\(0) & ((\inst|inst3|state.aEnd~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.wEnd~regout\,
	datac => \inst|inst3|state.aEnd~regout\,
	datad => \inst|ins3t|keyData\(0),
	combout => \inst|inst3|Selector0~0_combout\);

-- Location: LCFF_X63_Y3_N29
\inst|inst3|state.sEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector7~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.sEnd~regout\);

-- Location: LCFF_X63_Y3_N15
\inst|inst3|state.dEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector8~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.dEnd~regout\);

-- Location: LCCOMB_X62_Y3_N2
\inst|inst3|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector0~2_combout\ = (\inst|inst3|Equal3~2_combout\ & ((\inst|inst3|state.dEnd~regout\) # ((\inst|inst3|Equal2~1_combout\ & \inst|inst3|state.sEnd~regout\)))) # (!\inst|inst3|Equal3~2_combout\ & (((\inst|inst3|Equal2~1_combout\ & 
-- \inst|inst3|state.sEnd~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal3~2_combout\,
	datab => \inst|inst3|state.dEnd~regout\,
	datac => \inst|inst3|Equal2~1_combout\,
	datad => \inst|inst3|state.sEnd~regout\,
	combout => \inst|inst3|Selector0~2_combout\);

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

-- Location: LCFF_X63_Y19_N31
\inst|inst2|reg1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst2|reg1|Q~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst2|reg1|Q~regout\);

-- Location: LCCOMB_X64_Y19_N30
\inst|inst2|fall_edge\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst2|fall_edge~combout\ = LCELL((!\inst|inst2|reg1|Q~regout\ & \inst|inst2|reg2|Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg1|Q~regout\,
	datac => \inst|inst2|reg2|Q~regout\,
	combout => \inst|inst2|fall_edge~combout\);

-- Location: LCCOMB_X63_Y3_N24
\inst|inst3|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector6~0_combout\ = (\inst|inst3|Equal4~1_combout\ & ((\inst|inst3|state.a~regout\) # ((\inst|inst3|state.aEnd~regout\ & !\inst|inst3|Equal1~0_combout\)))) # (!\inst|inst3|Equal4~1_combout\ & (((\inst|inst3|state.aEnd~regout\ & 
-- !\inst|inst3|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal4~1_combout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.aEnd~regout\,
	datad => \inst|inst3|Equal1~0_combout\,
	combout => \inst|inst3|Selector6~0_combout\);

-- Location: LCCOMB_X63_Y3_N28
\inst|inst3|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector7~0_combout\ = (\inst|inst3|Equal4~1_combout\ & ((\inst|inst3|state.s~regout\) # ((!\inst|inst3|Equal2~1_combout\ & \inst|inst3|state.sEnd~regout\)))) # (!\inst|inst3|Equal4~1_combout\ & (!\inst|inst3|Equal2~1_combout\ & 
-- (\inst|inst3|state.sEnd~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal4~1_combout\,
	datab => \inst|inst3|Equal2~1_combout\,
	datac => \inst|inst3|state.sEnd~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst|inst3|Selector7~0_combout\);

-- Location: LCCOMB_X63_Y3_N14
\inst|inst3|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector8~0_combout\ = (\inst|inst3|Equal3~2_combout\ & (\inst|inst3|Equal4~1_combout\ & ((\inst|inst3|state.d~regout\)))) # (!\inst|inst3|Equal3~2_combout\ & ((\inst|inst3|state.dEnd~regout\) # ((\inst|inst3|Equal4~1_combout\ & 
-- \inst|inst3|state.d~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal3~2_combout\,
	datab => \inst|inst3|Equal4~1_combout\,
	datac => \inst|inst3|state.dEnd~regout\,
	datad => \inst|inst3|state.d~regout\,
	combout => \inst|inst3|Selector8~0_combout\);

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

-- Location: LCCOMB_X63_Y19_N30
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

-- Location: LCCOMB_X63_Y19_N4
\inst|inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[0]~8_combout\ = \inst|inst|count\(0) $ (VCC)
-- \inst|inst|count[0]~9\ = CARRY(\inst|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(0),
	datad => VCC,
	combout => \inst|inst|count[0]~8_combout\,
	cout => \inst|inst|count[0]~9\);

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

-- Location: LCFF_X63_Y19_N5
\inst|inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[0]~8_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(0));

-- Location: LCCOMB_X63_Y19_N8
\inst|inst|count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[2]~12_combout\ = (\inst|inst|count\(2) & (\inst|inst|count[1]~11\ $ (GND))) # (!\inst|inst|count\(2) & (!\inst|inst|count[1]~11\ & VCC))
-- \inst|inst|count[2]~13\ = CARRY((\inst|inst|count\(2) & !\inst|inst|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(2),
	datad => VCC,
	cin => \inst|inst|count[1]~11\,
	combout => \inst|inst|count[2]~12_combout\,
	cout => \inst|inst|count[2]~13\);

-- Location: LCFF_X63_Y19_N9
\inst|inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[2]~12_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(2));

-- Location: LCCOMB_X63_Y19_N10
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

-- Location: LCCOMB_X63_Y19_N14
\inst|inst|count[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[5]~18_combout\ = (\inst|inst|count\(5) & (!\inst|inst|count[4]~17\)) # (!\inst|inst|count\(5) & ((\inst|inst|count[4]~17\) # (GND)))
-- \inst|inst|count[5]~19\ = CARRY((!\inst|inst|count[4]~17\) # (!\inst|inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|count\(5),
	datad => VCC,
	cin => \inst|inst|count[4]~17\,
	combout => \inst|inst|count[5]~18_combout\,
	cout => \inst|inst|count[5]~19\);

-- Location: LCFF_X63_Y19_N15
\inst|inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[5]~18_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(5));

-- Location: LCCOMB_X63_Y19_N16
\inst|inst|count[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[6]~20_combout\ = (\inst|inst|count\(6) & (\inst|inst|count[5]~19\ $ (GND))) # (!\inst|inst|count\(6) & (!\inst|inst|count[5]~19\ & VCC))
-- \inst|inst|count[6]~21\ = CARRY((\inst|inst|count\(6) & !\inst|inst|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(6),
	datad => VCC,
	cin => \inst|inst|count[5]~19\,
	combout => \inst|inst|count[6]~20_combout\,
	cout => \inst|inst|count[6]~21\);

-- Location: LCFF_X63_Y19_N17
\inst|inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[6]~20_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(6));

-- Location: LCCOMB_X63_Y19_N18
\inst|inst|count[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|count[7]~22_combout\ = \inst|inst|count[6]~21\ $ (\inst|inst|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|count\(7),
	cin => \inst|inst|count[6]~21\,
	combout => \inst|inst|count[7]~22_combout\);

-- Location: LCFF_X63_Y19_N19
\inst|inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[7]~22_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(7));

-- Location: LCCOMB_X63_Y19_N24
\inst|inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (\inst|inst|count\(4) & (\inst|inst|count\(5) & (\inst|inst|count\(6) & \inst|inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(4),
	datab => \inst|inst|count\(5),
	datac => \inst|inst|count\(6),
	datad => \inst|inst|count\(7),
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCFF_X63_Y19_N11
\inst|inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|count[3]~14_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|count\(3));

-- Location: LCCOMB_X63_Y19_N26
\inst|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|count\(1) & (\inst|inst|count\(0) & (\inst|inst|count\(2) & \inst|inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|count\(1),
	datab => \inst|inst|count\(0),
	datac => \inst|inst|count\(2),
	datad => \inst|inst|count\(3),
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y19_N14
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

-- Location: LCFF_X64_Y19_N15
\inst|inst|temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|inst|temp~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst|temp~regout\);

-- Location: CLKCTRL_G7
\inst|inst|temp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst|temp~clkctrl_outclk\);

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

-- Location: LCCOMB_X61_Y3_N10
\inst|ins3t|dataIn[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[10]~feeder_combout\ = \psData~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \psData~combout\,
	combout => \inst|ins3t|dataIn[10]~feeder_combout\);

-- Location: LCFF_X61_Y3_N11
\inst|ins3t|dataIn[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[10]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(10));

-- Location: LCCOMB_X61_Y3_N26
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

-- Location: LCFF_X61_Y3_N27
\inst|ins3t|dataIn[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[9]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(9));

-- Location: LCCOMB_X61_Y3_N4
\inst|ins3t|dataIn[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[8]~feeder_combout\ = \inst|ins3t|dataIn\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(9),
	combout => \inst|ins3t|dataIn[8]~feeder_combout\);

-- Location: LCFF_X61_Y3_N5
\inst|ins3t|dataIn[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[8]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(8));

-- Location: LCCOMB_X61_Y3_N16
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

-- Location: LCFF_X61_Y3_N17
\inst|ins3t|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~1_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(1));

-- Location: LCCOMB_X61_Y3_N14
\inst|ins3t|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~0_combout\ = (\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) $ (((\inst|ins3t|count\(0) & \inst|ins3t|count\(1)))))) # (!\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) & ((\inst|ins3t|count\(0)) # (!\inst|ins3t|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(2),
	datab => \inst|ins3t|count\(0),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(1),
	combout => \inst|ins3t|count~0_combout\);

-- Location: LCFF_X61_Y3_N15
\inst|ins3t|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~0_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(3));

-- Location: LCCOMB_X61_Y3_N6
\inst|ins3t|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count~2_combout\ = (!\inst|ins3t|count\(0) & ((\inst|ins3t|count\(2)) # ((!\inst|ins3t|count\(1)) # (!\inst|ins3t|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(2),
	datab => \inst|ins3t|count\(3),
	datac => \inst|ins3t|count\(0),
	datad => \inst|ins3t|count\(1),
	combout => \inst|ins3t|count~2_combout\);

-- Location: LCFF_X61_Y3_N7
\inst|ins3t|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count~2_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(0));

-- Location: LCCOMB_X61_Y3_N8
\inst|ins3t|count[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|count[2]~3_combout\ = \inst|ins3t|count\(2) $ (((\reset~combout\ & (\inst|ins3t|count\(0) & \inst|ins3t|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst|ins3t|count\(0),
	datac => \inst|ins3t|count\(2),
	datad => \inst|ins3t|count\(1),
	combout => \inst|ins3t|count[2]~3_combout\);

-- Location: LCFF_X61_Y3_N9
\inst|ins3t|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|count[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|count\(2));

-- Location: LCCOMB_X61_Y3_N2
\inst|ins3t|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|Equal0~0_combout\ = (\inst|ins3t|count\(1) & (!\inst|ins3t|count\(2) & (\inst|ins3t|count\(3) & !\inst|ins3t|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|count\(1),
	datab => \inst|ins3t|count\(2),
	datac => \inst|ins3t|count\(3),
	datad => \inst|ins3t|count\(0),
	combout => \inst|ins3t|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y3_N20
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

-- Location: LCFF_X62_Y3_N31
\inst|ins3t|keyData[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(8),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(6));

-- Location: LCFF_X61_Y3_N23
\inst|ins3t|dataIn[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(8),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(7));

-- Location: LCFF_X61_Y3_N31
\inst|ins3t|dataIn[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(7),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(6));

-- Location: LCFF_X62_Y3_N1
\inst|ins3t|keyData[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(6),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(4));

-- Location: LCCOMB_X61_Y3_N12
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

-- Location: LCFF_X61_Y3_N13
\inst|ins3t|dataIn[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[5]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(5));

-- Location: LCCOMB_X61_Y3_N28
\inst|ins3t|dataIn[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[4]~feeder_combout\ = \inst|ins3t|dataIn\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(5),
	combout => \inst|ins3t|dataIn[4]~feeder_combout\);

-- Location: LCFF_X61_Y3_N29
\inst|ins3t|dataIn[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[4]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(4));

-- Location: LCCOMB_X61_Y3_N24
\inst|ins3t|dataIn[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|dataIn[3]~feeder_combout\ = \inst|ins3t|dataIn\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|dataIn\(4),
	combout => \inst|ins3t|dataIn[3]~feeder_combout\);

-- Location: LCFF_X61_Y3_N25
\inst|ins3t|dataIn[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	datain => \inst|ins3t|dataIn[3]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(3));

-- Location: LCFF_X62_Y3_N29
\inst|ins3t|keyData[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(1));

-- Location: LCFF_X61_Y3_N21
\inst|ins3t|dataIn[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(3),
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|dataIn\(2));

-- Location: LCFF_X62_Y3_N27
\inst|ins3t|keyData[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(2),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(0));

-- Location: LCCOMB_X62_Y3_N14
\inst|inst3|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal4~0_combout\ = (!\inst|ins3t|keyData\(2) & (\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(1) & !\inst|ins3t|keyData\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(2),
	datab => \inst|ins3t|keyData\(4),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(0),
	combout => \inst|inst3|Equal4~0_combout\);

-- Location: LCFF_X62_Y3_N19
\inst|ins3t|keyData[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(5),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(3));

-- Location: LCFF_X62_Y3_N21
\inst|ins3t|keyData[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(7),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(5));

-- Location: LCCOMB_X62_Y3_N18
\inst|inst3|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal3~1_combout\ = (!\inst|ins3t|keyData\(3) & \inst|ins3t|keyData\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ins3t|keyData\(3),
	datad => \inst|ins3t|keyData\(5),
	combout => \inst|inst3|Equal3~1_combout\);

-- Location: LCCOMB_X62_Y3_N8
\inst|inst3|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal4~1_combout\ = (\inst|ins3t|keyData\(7) & (\inst|ins3t|keyData\(6) & (\inst|inst3|Equal4~0_combout\ & \inst|inst3|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(7),
	datab => \inst|ins3t|keyData\(6),
	datac => \inst|inst3|Equal4~0_combout\,
	datad => \inst|inst3|Equal3~1_combout\,
	combout => \inst|inst3|Equal4~1_combout\);

-- Location: LCFF_X62_Y3_N5
\inst|ins3t|keyData[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(9),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(7));

-- Location: LCCOMB_X62_Y3_N4
\inst|inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal0~0_combout\ = (!\inst|ins3t|keyData\(5) & (\inst|ins3t|keyData\(4) & (!\inst|ins3t|keyData\(7) & !\inst|ins3t|keyData\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(5),
	datab => \inst|ins3t|keyData\(4),
	datac => \inst|ins3t|keyData\(7),
	datad => \inst|ins3t|keyData\(6),
	combout => \inst|inst3|Equal0~0_combout\);

-- Location: LCFF_X62_Y3_N7
\inst|ins3t|keyData[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|dataIn\(4),
	sload => VCC,
	ena => \inst|ins3t|keyData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyData\(2));

-- Location: LCCOMB_X62_Y3_N28
\inst|inst3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal2~0_combout\ = (\inst|ins3t|keyData\(0) & (\inst|ins3t|keyData\(1) & !\inst|ins3t|keyData\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ins3t|keyData\(0),
	datac => \inst|ins3t|keyData\(1),
	datad => \inst|ins3t|keyData\(2),
	combout => \inst|inst3|Equal2~0_combout\);

-- Location: LCCOMB_X62_Y3_N0
\inst|inst3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal2~1_combout\ = (\inst|ins3t|keyData\(3) & (\inst|inst3|Equal0~0_combout\ & \inst|inst3|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(3),
	datab => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Equal2~0_combout\,
	combout => \inst|inst3|Equal2~1_combout\);

-- Location: LCCOMB_X62_Y3_N6
\inst|inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal0~1_combout\ = (\inst|ins3t|keyData\(2) & !\inst|ins3t|keyData\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ins3t|keyData\(2),
	datad => \inst|ins3t|keyData\(1),
	combout => \inst|inst3|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y3_N12
\inst|inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal0~2_combout\ = (\inst|ins3t|keyData\(3) & (\inst|ins3t|keyData\(0) & (\inst|inst3|Equal0~0_combout\ & \inst|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(3),
	datab => \inst|ins3t|keyData\(0),
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Equal0~1_combout\,
	combout => \inst|inst3|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y3_N22
\inst|inst3|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector4~1_combout\ = (!\inst|inst3|Equal4~1_combout\ & (!\inst|inst3|Equal2~1_combout\ & !\inst|inst3|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|Equal4~1_combout\,
	datac => \inst|inst3|Equal2~1_combout\,
	datad => \inst|inst3|Equal0~2_combout\,
	combout => \inst|inst3|Selector4~1_combout\);

-- Location: LCCOMB_X62_Y3_N26
\inst|inst3|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal3~0_combout\ = (\inst|ins3t|keyData\(1) & (!\inst|ins3t|keyData\(4) & (\inst|ins3t|keyData\(0) & !\inst|ins3t|keyData\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(1),
	datab => \inst|ins3t|keyData\(4),
	datac => \inst|ins3t|keyData\(0),
	datad => \inst|ins3t|keyData\(2),
	combout => \inst|inst3|Equal3~0_combout\);

-- Location: LCCOMB_X62_Y3_N30
\inst|inst3|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal3~2_combout\ = (!\inst|ins3t|keyData\(7) & (\inst|inst3|Equal3~1_combout\ & (!\inst|ins3t|keyData\(6) & \inst|inst3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(7),
	datab => \inst|inst3|Equal3~1_combout\,
	datac => \inst|ins3t|keyData\(6),
	datad => \inst|inst3|Equal3~0_combout\,
	combout => \inst|inst3|Equal3~2_combout\);

-- Location: LCCOMB_X63_Y3_N22
\inst|inst3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|WideOr5~0_combout\ = (!\inst|inst3|state.s~regout\ & (!\inst|inst3|state.w~regout\ & !\inst|inst3|state.a~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.s~regout\,
	datab => \inst|inst3|state.w~regout\,
	datad => \inst|inst3|state.a~regout\,
	combout => \inst|inst3|WideOr5~0_combout\);

-- Location: LCCOMB_X63_Y3_N0
\inst|inst3|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector4~0_combout\ = (\inst|inst3|Equal3~2_combout\ & ((!\inst|inst3|WideOr5~0_combout\) # (!\inst|inst3|state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.idle~regout\,
	datac => \inst|inst3|Equal3~2_combout\,
	datad => \inst|inst3|WideOr5~0_combout\,
	combout => \inst|inst3|Selector4~0_combout\);

-- Location: LCCOMB_X63_Y3_N16
\inst|inst3|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector4~2_combout\ = (\inst|inst3|Selector4~0_combout\) # ((!\inst|inst3|Equal1~0_combout\ & (\inst|inst3|state.d~regout\ & \inst|inst3|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal1~0_combout\,
	datab => \inst|inst3|Selector4~0_combout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|Selector4~1_combout\,
	combout => \inst|inst3|Selector4~2_combout\);

-- Location: LCFF_X62_Y3_N17
\inst|ins3t|keyRed\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst2|fall_edge~clkctrl_outclk\,
	sdata => \inst|ins3t|Equal0~0_combout\,
	aclr => \inst|ins3t|keyRed~regout\,
	sload => VCC,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|ins3t|keyRed~regout\);

-- Location: LCCOMB_X64_Y3_N18
\inst|inst3|key~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|key~feeder_combout\ = \inst|ins3t|keyReady~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ins3t|keyReady~combout\,
	combout => \inst|inst3|key~feeder_combout\);

-- Location: LCFF_X64_Y3_N19
\inst|inst3|key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|key~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|key~regout\);

-- Location: LCCOMB_X64_Y3_N4
\inst|ins3t|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|comb~0_combout\ = (!\inst|ins3t|keyRed~regout\ & \inst|inst3|key~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ins3t|keyRed~regout\,
	datad => \inst|inst3|key~regout\,
	combout => \inst|ins3t|comb~0_combout\);

-- Location: LCCOMB_X64_Y3_N26
\inst|ins3t|keyReady\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|ins3t|keyReady~combout\ = (!\inst|ins3t|comb~0_combout\ & ((\inst|ins3t|keyRed~regout\) # (\inst|ins3t|keyReady~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyRed~regout\,
	datac => \inst|ins3t|comb~0_combout\,
	datad => \inst|ins3t|keyReady~combout\,
	combout => \inst|ins3t|keyReady~combout\);

-- Location: LCCOMB_X64_Y3_N0
\inst|inst3|control_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|control_reg~0_combout\ = (\inst|ins3t|keyReady~combout\ & !\inst|inst3|key~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ins3t|keyReady~combout\,
	datad => \inst|inst3|key~regout\,
	combout => \inst|inst3|control_reg~0_combout\);

-- Location: LCFF_X63_Y3_N17
\inst|inst3|state.d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector4~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.d~regout\);

-- Location: LCCOMB_X64_Y3_N28
\inst|inst3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector3~0_combout\ = ((\inst|inst3|state.a~regout\) # ((\inst|inst3|state.w~regout\) # (\inst|inst3|state.d~regout\))) # (!\inst|inst3|state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.idle~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.w~regout\,
	datad => \inst|inst3|state.d~regout\,
	combout => \inst|inst3|Selector3~0_combout\);

-- Location: LCCOMB_X64_Y3_N30
\inst|inst3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector3~1_combout\ = (\inst|ins3t|keyData\(3) & (\inst|inst3|Equal2~0_combout\ & (\inst|inst3|Selector3~0_combout\ & \inst|inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(3),
	datab => \inst|inst3|Equal2~0_combout\,
	datac => \inst|inst3|Selector3~0_combout\,
	datad => \inst|inst3|Equal0~0_combout\,
	combout => \inst|inst3|Selector3~1_combout\);

-- Location: LCCOMB_X62_Y3_N16
\inst|inst3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector3~2_combout\ = (!\inst|inst3|Equal1~0_combout\ & (!\inst|inst3|Equal3~2_combout\ & !\inst|inst3|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal1~0_combout\,
	datab => \inst|inst3|Equal3~2_combout\,
	datad => \inst|inst3|Equal0~2_combout\,
	combout => \inst|inst3|Selector3~2_combout\);

-- Location: LCCOMB_X63_Y3_N10
\inst|inst3|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector3~3_combout\ = (\inst|inst3|Selector3~1_combout\) # ((!\inst|inst3|Equal4~1_combout\ & (\inst|inst3|state.s~regout\ & \inst|inst3|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal4~1_combout\,
	datab => \inst|inst3|Selector3~1_combout\,
	datac => \inst|inst3|state.s~regout\,
	datad => \inst|inst3|Selector3~2_combout\,
	combout => \inst|inst3|Selector3~3_combout\);

-- Location: LCFF_X63_Y3_N11
\inst|inst3|state.s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector3~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.s~regout\);

-- Location: LCCOMB_X63_Y3_N20
\inst|inst3|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|WideOr7~0_combout\ = (!\inst|inst3|state.d~regout\ & (!\inst|inst3|state.w~regout\ & !\inst|inst3|state.s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.d~regout\,
	datab => \inst|inst3|state.w~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst|inst3|WideOr7~0_combout\);

-- Location: LCCOMB_X62_Y3_N24
\inst|inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal1~0_combout\ = (\inst|ins3t|keyData\(3) & (!\inst|ins3t|keyData\(0) & (\inst|inst3|Equal0~0_combout\ & \inst|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(3),
	datab => \inst|ins3t|keyData\(0),
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Equal0~1_combout\,
	combout => \inst|inst3|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y3_N18
\inst|inst3|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector2~0_combout\ = (\inst|inst3|Equal1~0_combout\ & ((!\inst|inst3|WideOr7~0_combout\) # (!\inst|inst3|state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.idle~regout\,
	datac => \inst|inst3|WideOr7~0_combout\,
	datad => \inst|inst3|Equal1~0_combout\,
	combout => \inst|inst3|Selector2~0_combout\);

-- Location: LCCOMB_X63_Y3_N6
\inst|inst3|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector2~1_combout\ = (\inst|inst3|Selector2~0_combout\) # ((!\inst|inst3|Equal3~2_combout\ & (\inst|inst3|Selector4~1_combout\ & \inst|inst3|state.a~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal3~2_combout\,
	datab => \inst|inst3|Selector4~1_combout\,
	datac => \inst|inst3|state.a~regout\,
	datad => \inst|inst3|Selector2~0_combout\,
	combout => \inst|inst3|Selector2~1_combout\);

-- Location: LCFF_X63_Y3_N7
\inst|inst3|state.a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector2~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.a~regout\);

-- Location: LCCOMB_X64_Y3_N8
\inst|inst3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector0~1_combout\ = (\inst|inst3|Selector0~0_combout\ & (\inst|ins3t|keyData\(3) & (\inst|inst3|Equal0~0_combout\ & \inst|inst3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector0~0_combout\,
	datab => \inst|ins3t|keyData\(3),
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Equal0~1_combout\,
	combout => \inst|inst3|Selector0~1_combout\);

-- Location: LCCOMB_X64_Y3_N14
\inst|inst3|next_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|next_state~0_combout\ = (!\inst|inst3|state.idle~regout\ & (((!\inst|inst3|Equal2~0_combout\) # (!\inst|inst3|Equal0~0_combout\)) # (!\inst|ins3t|keyData\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ins3t|keyData\(3),
	datab => \inst|inst3|state.idle~regout\,
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Equal2~0_combout\,
	combout => \inst|inst3|next_state~0_combout\);

-- Location: LCCOMB_X63_Y3_N26
\inst|inst3|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector0~3_combout\ = (!\inst|inst3|Selector0~2_combout\ & (!\inst|inst3|Selector0~1_combout\ & ((!\inst|inst3|Selector3~2_combout\) # (!\inst|inst3|next_state~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector0~2_combout\,
	datab => \inst|inst3|Selector0~1_combout\,
	datac => \inst|inst3|next_state~0_combout\,
	datad => \inst|inst3|Selector3~2_combout\,
	combout => \inst|inst3|Selector0~3_combout\);

-- Location: LCFF_X63_Y3_N27
\inst|inst3|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector0~3_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.idle~regout\);

-- Location: LCCOMB_X64_Y3_N22
\inst|inst3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector1~0_combout\ = (\inst|inst3|state.s~regout\) # ((\inst|inst3|state.a~regout\) # ((\inst|inst3|state.d~regout\) # (!\inst|inst3|state.idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.s~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.idle~regout\,
	datad => \inst|inst3|state.d~regout\,
	combout => \inst|inst3|Selector1~0_combout\);

-- Location: LCCOMB_X62_Y3_N10
\inst|inst3|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector1~1_combout\ = (!\inst|inst3|Equal3~2_combout\ & (!\inst|inst3|Equal1~0_combout\ & (!\inst|inst3|Equal4~1_combout\ & !\inst|inst3|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal3~2_combout\,
	datab => \inst|inst3|Equal1~0_combout\,
	datac => \inst|inst3|Equal4~1_combout\,
	datad => \inst|inst3|Equal2~1_combout\,
	combout => \inst|inst3|Selector1~1_combout\);

-- Location: LCCOMB_X63_Y3_N4
\inst|inst3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector1~2_combout\ = (\inst|inst3|Equal0~2_combout\ & ((\inst|inst3|Selector1~0_combout\) # ((\inst|inst3|state.w~regout\ & \inst|inst3|Selector1~1_combout\)))) # (!\inst|inst3|Equal0~2_combout\ & (((\inst|inst3|state.w~regout\ & 
-- \inst|inst3|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Equal0~2_combout\,
	datab => \inst|inst3|Selector1~0_combout\,
	datac => \inst|inst3|state.w~regout\,
	datad => \inst|inst3|Selector1~1_combout\,
	combout => \inst|inst3|Selector1~2_combout\);

-- Location: LCFF_X63_Y3_N5
\inst|inst3|state.w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector1~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.w~regout\);

-- Location: LCCOMB_X64_Y3_N16
\inst|inst3|WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|WideOr5~1_combout\ = (!\inst|inst3|state.w~regout\ & !\inst|inst3|state.s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3|state.w~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst|inst3|WideOr5~1_combout\);

-- Location: LCCOMB_X63_Y3_N8
\inst3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst|inst3|state.a~regout\) # ((\inst|inst3|state.w~regout\) # ((\inst|inst3|state.d~regout\) # (\inst|inst3|state.s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.a~regout\,
	datab => \inst|inst3|state.w~regout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y2_N28
\inst|inst1|handshake:ack~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|handshake:ack~0_combout\ = (\inst8|ack~regout\) # ((\inst|inst1|handshake:ack~regout\ & \inst|inst1|newMove~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|handshake:ack~regout\,
	datac => \inst|inst1|newMove~regout\,
	datad => \inst8|ack~regout\,
	combout => \inst|inst1|handshake:ack~0_combout\);

-- Location: LCCOMB_X63_Y2_N2
\inst|inst1|handshake:ack~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|handshake:ack~1_combout\ = (\inst|inst1|handshake:ack~0_combout\) # ((!\inst|inst3|state.wEnd~regout\ & (!\inst3|Mux1~0_combout\ & \inst|inst1|handshake:ack~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.wEnd~regout\,
	datab => \inst3|Mux1~0_combout\,
	datac => \inst|inst1|handshake:ack~regout\,
	datad => \inst|inst1|handshake:ack~0_combout\,
	combout => \inst|inst1|handshake:ack~1_combout\);

-- Location: LCFF_X63_Y2_N3
\inst|inst1|handshake:ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst1|handshake:ack~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst1|handshake:ack~regout\);

-- Location: LCCOMB_X63_Y3_N12
\inst|inst1|handshake:dir[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|handshake:dir[1]~0_combout\ = (!\inst|inst1|newMove~regout\ & (\inst3|Mux1~0_combout\ & ((\inst|inst3|state.wEnd~regout\) # (\inst|inst1|handshake:ack~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.wEnd~regout\,
	datab => \inst|inst1|newMove~regout\,
	datac => \inst3|Mux1~0_combout\,
	datad => \inst|inst1|handshake:ack~regout\,
	combout => \inst|inst1|handshake:dir[1]~0_combout\);

-- Location: LCFF_X63_Y3_N23
\inst|inst1|handshake:dir[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	sdata => \inst|inst3|WideOr5~1_combout\,
	sload => VCC,
	ena => \inst|inst1|handshake:dir[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst1|handshake:dir[0]~regout\);

-- Location: LCCOMB_X64_Y3_N10
\inst|inst3|dataOut[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|dataOut\(1) = (!\inst|inst3|state.s~regout\ & !\inst|inst3|state.d~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.s~regout\,
	datad => \inst|inst3|state.d~regout\,
	combout => \inst|inst3|dataOut\(1));

-- Location: LCFF_X63_Y3_N21
\inst|inst1|handshake:dir[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	sdata => \inst|inst3|dataOut\(1),
	sload => VCC,
	ena => \inst|inst1|handshake:dir[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst1|handshake:dir[1]~regout\);

-- Location: LCCOMB_X62_Y2_N24
\inst8|gbFree[3][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree[3][0]~0_combout\ = (\inst|inst1|newMove~regout\ & (!\inst|inst1|handshake:dir[0]~regout\ & !\inst|inst1|handshake:dir[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|newMove~regout\,
	datac => \inst|inst1|handshake:dir[0]~regout\,
	datad => \inst|inst1|handshake:dir[1]~regout\,
	combout => \inst8|gbFree[3][0]~0_combout\);

-- Location: LCCOMB_X63_Y2_N18
\inst8|ack~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|ack~0_combout\ = (\reset~combout\ & ((\inst8|gbFree[3][0]~0_combout\) # ((!\inst|inst1|newMove~regout\ & \inst8|ack~regout\)))) # (!\reset~combout\ & (((\inst8|ack~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst|inst1|newMove~regout\,
	datac => \inst8|ack~regout\,
	datad => \inst8|gbFree[3][0]~0_combout\,
	combout => \inst8|ack~0_combout\);

-- Location: LCFF_X63_Y2_N19
\inst8|ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|ack~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|ack~regout\);

-- Location: LCCOMB_X63_Y3_N2
\inst|inst3|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector5~0_combout\ = (\inst|inst3|state.w~regout\ & ((\inst|inst3|Equal4~1_combout\) # ((\inst|inst3|state.wEnd~regout\ & !\inst|inst3|Equal0~2_combout\)))) # (!\inst|inst3|state.w~regout\ & (((\inst|inst3|state.wEnd~regout\ & 
-- !\inst|inst3|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.w~regout\,
	datab => \inst|inst3|Equal4~1_combout\,
	datac => \inst|inst3|state.wEnd~regout\,
	datad => \inst|inst3|Equal0~2_combout\,
	combout => \inst|inst3|Selector5~0_combout\);

-- Location: LCFF_X63_Y3_N3
\inst|inst3|state.wEnd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst3|Selector5~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst|inst3|control_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst3|state.wEnd~regout\);

-- Location: LCCOMB_X63_Y2_N12
\inst|inst1|handshake:move~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|handshake:move~0_combout\ = (\inst|inst1|newMove~regout\) # ((\inst3|Mux1~0_combout\ & ((\inst|inst3|state.wEnd~regout\) # (\inst|inst1|handshake:ack~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|newMove~regout\,
	datab => \inst|inst3|state.wEnd~regout\,
	datac => \inst|inst1|handshake:ack~regout\,
	datad => \inst3|Mux1~0_combout\,
	combout => \inst|inst1|handshake:move~0_combout\);

-- Location: LCCOMB_X63_Y2_N16
\inst|inst1|handshake:move~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst1|handshake:move~1_combout\ = (!\inst8|ack~regout\ & \inst|inst1|handshake:move~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|ack~regout\,
	datad => \inst|inst1|handshake:move~0_combout\,
	combout => \inst|inst1|handshake:move~1_combout\);

-- Location: LCFF_X63_Y2_N17
\inst|inst1|newMove\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|inst|temp~clkctrl_outclk\,
	datain => \inst|inst1|handshake:move~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|inst1|newMove~regout\);

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

-- Location: LCCOMB_X62_Y2_N28
\inst8|gbFree[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree[3][0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst8|gbFree[3][0]~feeder_combout\);

-- Location: LCFF_X62_Y2_N29
\inst8|gbFree[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|gbFree[3][0]~feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst8|gbFree[3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|gbFree[3][0]~regout\);

-- Location: LCCOMB_X62_Y2_N0
\inst8|gbFree[1][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree[1][0]~2_combout\ = (\inst8|gbFree[2][0]~regout\ & ((\inst8|gbFree[1][0]~regout\) # ((\inst8|gbFree[3][0]~regout\ & \inst8|gbFree[3][0]~0_combout\)))) # (!\inst8|gbFree[2][0]~regout\ & (\inst8|gbFree[1][0]~regout\ & 
-- ((\inst8|gbFree[3][0]~regout\) # (!\inst8|gbFree[3][0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|gbFree[2][0]~regout\,
	datab => \inst8|gbFree[3][0]~regout\,
	datac => \inst8|gbFree[1][0]~regout\,
	datad => \inst8|gbFree[3][0]~0_combout\,
	combout => \inst8|gbFree[1][0]~2_combout\);

-- Location: LCFF_X62_Y2_N1
\inst8|gbFree[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|gbFree[1][0]~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|gbFree[1][0]~regout\);

-- Location: LCCOMB_X62_Y2_N14
\inst8|gbFree~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree~1_combout\ = (\inst8|gbFree[3][0]~regout\) # ((\inst8|gbFree[2][0]~regout\) # (\inst8|gbFree[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|gbFree[3][0]~regout\,
	datac => \inst8|gbFree[2][0]~regout\,
	datad => \inst8|gbFree[1][0]~regout\,
	combout => \inst8|gbFree~1_combout\);

-- Location: LCFF_X62_Y2_N15
\inst8|gbFree[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|gbFree~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	ena => \inst8|gbFree[3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|gbFree[2][0]~regout\);

-- Location: LCCOMB_X62_Y2_N22
\inst8|gbFree[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree[0][0]~3_combout\ = (\inst|inst1|handshake:dir[0]~regout\) # ((\inst8|gbFree[1][0]~regout\ & (\inst8|gbFree[2][0]~regout\ & \inst8|gbFree[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|handshake:dir[0]~regout\,
	datab => \inst8|gbFree[1][0]~regout\,
	datac => \inst8|gbFree[2][0]~regout\,
	datad => \inst8|gbFree[3][0]~regout\,
	combout => \inst8|gbFree[0][0]~3_combout\);

-- Location: LCCOMB_X62_Y2_N26
\inst8|gbFree[0][0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|gbFree[0][0]~4_combout\ = (\inst|inst1|newMove~regout\ & ((\inst|inst1|handshake:dir[1]~regout\) # ((\inst8|gbFree[0][0]~3_combout\)))) # (!\inst|inst1|newMove~regout\ & (((\inst8|gbFree[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|newMove~regout\,
	datab => \inst|inst1|handshake:dir[1]~regout\,
	datac => \inst8|gbFree[0][0]~regout\,
	datad => \inst8|gbFree[0][0]~3_combout\,
	combout => \inst8|gbFree[0][0]~4_combout\);

-- Location: LCFF_X62_Y2_N27
\inst8|gbFree[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst8|gbFree[0][0]~4_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|gbFree[0][0]~regout\);

-- Location: LCCOMB_X64_Y3_N24
\inst3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~1_combout\ = (!\inst|inst3|state.d~regout\ & ((\inst|inst3|state.s~regout\) # ((\inst|inst3|state.w~regout\) # (\inst|inst3|state.a~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.s~regout\,
	datab => \inst|inst3|state.w~regout\,
	datac => \inst|inst3|state.a~regout\,
	datad => \inst|inst3|state.d~regout\,
	combout => \inst3|Mux1~1_combout\);

-- Location: LCCOMB_X63_Y4_N24
\inst3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~2_combout\ = (!\inst|inst3|state.w~regout\ & (!\inst|inst3|state.a~regout\ & (\inst|inst3|state.d~regout\ & !\inst|inst3|state.s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.w~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst3|Mux1~2_combout\);

-- Location: LCCOMB_X63_Y4_N14
\inst4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst|inst3|state.w~regout\ & (((!\inst|inst3|state.d~regout\ & !\inst|inst3|state.s~regout\)))) # (!\inst|inst3|state.w~regout\ & (!\inst|inst3|state.a~regout\ & ((\inst|inst3|state.d~regout\) # (\inst|inst3|state.s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.w~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y4_N4
\inst4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (!\inst|inst3|state.w~regout\ & (!\inst|inst3|state.a~regout\ & ((\inst|inst3|state.d~regout\) # (\inst|inst3|state.s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.w~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y4_N22
\inst4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst|inst3|state.w~regout\ & (((\inst|inst3|state.d~regout\) # (\inst|inst3|state.s~regout\)))) # (!\inst|inst3|state.w~regout\ & (\inst|inst3|state.a~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.w~regout\,
	datab => \inst|inst3|state.a~regout\,
	datac => \inst|inst3|state.d~regout\,
	datad => \inst|inst3|state.s~regout\,
	combout => \inst4|Mux4~0_combout\);

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
	datain => \inst|inst1|newMove~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_newMove);

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
	datain => \inst|inst1|handshake:dir[1]~regout\,
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
	datain => \inst|inst1|handshake:dir[0]~regout\,
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
	datain => \inst8|gbFree[3][0]~regout\,
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
	datain => \inst8|gbFree[2][0]~regout\,
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
	datain => \inst8|gbFree[1][0]~regout\,
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
	datain => \inst8|gbFree[0][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_freeTiles(0));

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
	datain => \inst|inst3|ALT_INV_state.d~regout\,
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
	datain => \inst|inst3|ALT_INV_WideOr5~0_combout\,
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
	datain => \inst3|Mux1~1_combout\,
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
	datain => \inst3|Mux1~2_combout\,
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
	datain => GND,
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
	datain => \inst3|Mux1~1_combout\,
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
	datain => \inst|inst3|WideOr7~0_combout\,
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
	datain => GND,
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
	datain => \inst4|Mux4~0_combout\,
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
	datain => \inst|inst3|state.w~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyPressL(0));

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


