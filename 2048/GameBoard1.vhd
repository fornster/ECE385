--Gameboard1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.game_board_array.all;
--type std_logic_vector(10 downto 0) [3:0][3:0] board;
--type board is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);

--package board_pkg is
	--type board_array is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
--end board_pkg;

entity GameBoard1 is
    Port ( clk : in std_logic;
           reset : in std_logic;
			  newKey : in std_logic;
			  keyCode : in std_logic_vector(7 downto 0);
			  tileMove : in std_logic_vector(1 downto 0);
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0);
			  keyAck : out std_logic;
			  moveAck : out std_logic;
           VGA_clk : out std_logic; 
           sync : out std_logic;
           blank : out std_logic;
           vs : out std_logic;
           hs : out std_logic);
end GameBoard1;

architecture Behavioral of GameBoard1 is

component Tiles is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
			  tileMove : in std_logic_vector(1 downto 0);
			  --need some Tiles stuff
			  outboard : out gameBoard; 
			  --outboard : out array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic);
end component;

component vga_controllerz is
    Port ( clk : in std_logic;
           reset : in std_logic;
           hs : out std_logic;
           vs : out std_logic;
           pixel_clk : out std_logic;
           blank : out std_logic;
           sync : out std_logic;
           DrawX : out std_logic_vector(9 downto 0);
           DrawY : out std_logic_vector(9 downto 0));
end component;

component Color_Mapper is
    Port ( --need Tile stuff
           DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0));
end component;

signal Reset_h, vsSig : std_logic;
signal DrawXSig, DrawYSig : std_logic_vector(9 downto 0);
signal keyIn : std_logic_vector(7 downto 0);
begin

Reset_h <= not Reset; -- The push buttons are active low

vgaSync_instance : vga_controllerz
   Port map(clk => clk,
            reset => Reset_h,
            hs => hs,
            vs => vsSig,
            pixel_clk => VGA_clk,
            blank => blank,
            sync => sync,
            DrawX => DrawXSig,
            DrawY => DrawYSig);

tiles_instance : Tiles
   Port map(Reset => Reset_h,
            frame_clk => vsSig, 
            newKey => newKey,
				keyCode => keyCode,
				tileMove => tileMove,
				--need Tiles stuff here
				keyAck => keyAck);

color_instance : Color_Mapper
   Port Map(--again, need Tiles stuff here
				
            DrawX => DrawXSig,
            DrawY => DrawYSig,
            Red => Red,
            Green => Green,
            Blue => Blue);

vs <= vsSig;

end Behavioral;      


