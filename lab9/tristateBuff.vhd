library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tristateBuff is
	port(dataIn : in std_logic_vector(15 downto 0); 
			sel : in std_logic;
			dataOut: out std_logic_vector(15 downto 0));
end entity;

architecture Behavioral of tristateBuff is
begin
	with sel select
	dataOut <= dataIn when '1',
					"ZZZZZZZZZZZZZZZZ" when '0',
					"XXXXXXXXXXXXXXXX" when others;
end behavioral;