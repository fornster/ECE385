library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity newTile is
	port(openTiles : in std_logic_vector(15 downto 0);
			randomIn : in std_logic_vector(7 downto 0);
			tileLoc : out std_logic_vector(15 downto 0));
end entity;			
architecture behavioral of newTile is

begin
	
	process(randomIn, openTiles)--takes the open tiles, and chooses one by random outputting the location of the new tile
	
	begin	--uses same random number for new tile location and new tile value
		
	
	end process;
end behavioral;