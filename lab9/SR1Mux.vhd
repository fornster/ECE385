library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sr1Mux is 
	port(A, B : in std_logic_vector(2 downto 0);
			Sel : in std_logic_vector(1 downto 0);
			F	 : out std_logic_vector(2 downto 0));
end entity;

architecture behavioral of sr1Mux is
begin
	with sel select
	f <= "000" when "11",
			"110" when "10",
			B when "01",
		  A when "00",
		  "XXX" when others;
end behavioral;