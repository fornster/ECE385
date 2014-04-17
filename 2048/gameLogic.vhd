library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity gameLogic is
	port(newKey, clk : in std_logic;
		  keyCode : in std_logic_vector(7 downto 0);
		  newTileVal, newTile : in std_logic;
		  tileLoc : in std_logic_vector(15 downto 0); --location of the new tile
		  keyAck, needTile : out std_logic;
		  freeTiles : out std_logic_vector(15 downto 0));
end entity;
architecture behavioral of gameLogic is

	signal tile_size : std_logic_vector(9 downto 0);
	
	--constant boardTop : std_logic_vector(9 downto 0) := -----THINGS TO DECIDE: assign spots to each slot on board or keep track by keeping 
	--constant boardLeft : std_logic_vector(9 downto 0) :=
	--constant boardRight : std_logic_vector(9 downto 0) :=
	--constant boardBottom : std_logic_vector(9 downto 0) :=
	
	constant stepSize : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(1, 10);
	
	type board is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
	type freeSpaces is array(0 to 3, 0 to 3) of std_logic;
	shared variable gb : board := (("00000000000", "00000000000", "00000000000", "00000000000"), 
	("00000000000", "00000000000", "00000000000", "00000000000"), ("00000000000", "00000000000", "00000000000", "00000000000"), ("00000000000", "00000000000", "00000000000", "00000000000")); --GameBoard
	shared variable gbFree : freeSpaces := (('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0')); --keeps track of free spaces
	signal ack : std_logic := '0';
begin
	tile_size <= CONV_STD_LOGIC_VECTOR(6, 10);
	
end behavioral;