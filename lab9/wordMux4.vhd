library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wordMux4 is
	port( a, b, c, d : in std_logic_vector(15 downto 0);
			sel : in std_logic_vector(1 downto 0);
			f : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of wordMux4 is
begin
	with sel select
	f <=  d when "11",
			c when "10",
			b when "01",
			a when "00",
			"XXXXXXXXXXXXXXXX" when others;
end Behavioral;