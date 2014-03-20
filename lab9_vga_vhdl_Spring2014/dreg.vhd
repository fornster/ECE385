library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Dreg is
	port(D, clk, reset: in std_logic;
			Q : out std_logic);
end entity;

architecture Behavioral of Dreg is
begin
	process(reset, clk)
	begin
		if reset = '1' then
			Q <= '0';
		elsif (rising_edge(clk)) then
			Q <= D;
		end if;
	end process;
end Behavioral;