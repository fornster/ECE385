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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Thu Mar 13 08:30:53 2014"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY keyboard IS 
	PORT
	(
		Clk :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		ps2clk :  IN  STD_LOGIC;
		psData :  IN  STD_LOGIC;
		keyAck :  IN  STD_LOGIC;
		newKey :  OUT  STD_LOGIC;
		KeyCode :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		KeyData :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END keyboard;

ARCHITECTURE bdf_type OF keyboard IS 

COMPONENT keycapture
	PORT(psdata : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 keyData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clkdiv
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clk_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT psclk
	PORT(ps2clk : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 fall_edge : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT keymap
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 keyAck : IN STD_LOGIC;
		 dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 newKey : OUT STD_LOGIC;
		 dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
KeyData <= SYNTHESIZED_WIRE_6;



b2v_ins3t : keycapture
PORT MAP(psdata => psData,
		 clk => SYNTHESIZED_WIRE_0,
		 reset => SYNTHESIZED_WIRE_7,
		 keyData => SYNTHESIZED_WIRE_6);


b2v_inst : clkdiv
PORT MAP(clk => Clk,
		 reset => SYNTHESIZED_WIRE_7,
		 clk_out => SYNTHESIZED_WIRE_3);


b2v_inst2 : psclk
PORT MAP(ps2clk => ps2clk,
		 clk => SYNTHESIZED_WIRE_3,
		 reset => SYNTHESIZED_WIRE_7,
		 fall_edge => SYNTHESIZED_WIRE_0);


b2v_inst3 : keymap
PORT MAP(clk => Clk,
		 reset => SYNTHESIZED_WIRE_7,
		 keyAck => keyAck,
		 dataIn => SYNTHESIZED_WIRE_6,
		 newKey => newKey,
		 dataOut => KeyCode);


SYNTHESIZED_WIRE_7 <= NOT(Reset);



END bdf_type;