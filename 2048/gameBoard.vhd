library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.math_real.uniform;

entity gameBoard is
	port(reset : in std_logic;
			tile0, tile1, tile2, tile3, tile4, tile5 : out std_logic_vector(10 downto 0);
			tile6, tile7, tile8, tile9, tile10, tile11 : out std_logic_vector(10 downto 0);
			tile12, tile13, tile14, tile15 : out std_logic_vector(10 downto 0));
end entity;

architecture behavioral of gameBoard is
	
	/*board_state : process(reset) is
	type board is array(15 downto 0) of std_logic_vector(10 downto 0);
	variable currBoard : board;
	variable freeTiles : std_logic_vector(15 downto 0);
	variable numFree : integer;
	variable random : integer;
	
	procedure newTile is
	begin
		getRandom;
		
	end procedure newTile;
	
	procedure getRandom is
		begin;
		--random := 
	end procedure getRandom;
	
	begin
		if(reset = '1') then
			for index in integer range 0 to 15 loop:
				currBoard(index) = "00000000000";
			end loop;
			numFree := 16;
			freeTiles := "1111111111111111";
			newTile;
			newTile;
		end if;
	end process;*/
end behavioral;