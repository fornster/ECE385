library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wordMux2 is
	port( a, b : in std_logic_vector(15 downto 0);
			sel : in std_logic;
			f : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of wordMux2 is
begin
	with sel select
	f <=  b when '0',
			a when '1'
			'X' when others;
end Behavioral;