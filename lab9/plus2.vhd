library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity plus2 is
	port(dataIn : in std_logic_vector(15 downto 0);
			dataOut : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of plus2 is
begin
	dataOut <= dataIn + 1;
end behavioral;