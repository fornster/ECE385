library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regMux is 
	port(A, B : in std_logic_vector(2 downto 0);
			Sel : in std_logic;
			F	 : out std_logic_vector(2 downto 0));
end entity;

architecture behavioral of regMux is
begin
	with sel select
	f <= B when '1',
		  A when '0',
		  "XXX" when others;
end behavioral;