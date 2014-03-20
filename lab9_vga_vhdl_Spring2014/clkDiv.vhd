library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clkDiv is
	Port(clk, reset : in std_logic;
			clk_out : out std_logic);
			
end entity;

architecture Behavioral of clkDiv is
signal temp : std_logic;
signal count : integer range 0 to 255 := 0;
begin
	freq_div : process(reset, clk)
	begin
		if(reset = '1') then
			temp <= '0';
			count <= 0;
		elsif rising_edge(clk) then
			if(count = 255) then
				temp <= not(temp);
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	clk_out <= temp;
end Behavioral;