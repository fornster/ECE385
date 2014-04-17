--gameboard array

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package game_board_array is
	type gameBoard is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
end package game_board_array;