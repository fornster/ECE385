library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity gameBoard is
	port(reset : in std_logic;
			
				);
end entity;

architecture behavioral of gameBoard is
	
	board_state : process(reset) is
	type board is array(15 downto 0) of std_logic_vector(10 downto 0);
	variable currBoard : board;
	begin
		if(reset = '1') then
			for index in integer range 0 to 15:
				currBoard(index) = "00000000000";
		else
			