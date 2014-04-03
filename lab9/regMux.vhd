library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regMux is 
	port(A : in std_logic_vector(2 downto 0);
			Sel : in std_logic_vector(1 downto 0);
			F	 : out std_logic_vector(2 downto 0));
end entity;

architecture behavioral of regMux is
begin
	with sel select
	f <= "000" when "11",
			"110" when "10",
			"111" when "01",
		  A when "00",
		  "XXX" when others;
end behavioral;