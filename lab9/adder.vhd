library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity adder is
	port(a, b : in std_logic_vector(15 downto 0);
			f   : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of adder is
begin

f <= a + b;

end behavioral;