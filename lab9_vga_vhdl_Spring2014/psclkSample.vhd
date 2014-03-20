library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity psclk is
	port( ps2clk, clk, reset: in std_logic;
			fall_edge : out std_logic);
end entity;

architecture Behavioral of psclk is

	component Dreg is
		port(D, clk, reset: in std_logic;
			Q : out std_logic);
	end component;
		
signal q0, q1 : std_logic;	
begin
	reg1: Dreg
		port map(D => ps2clk,
					clk => clk,
					reset => reset,
					Q => q0);
	reg2 : Dreg
		port map(D => q0,
					clk => clk,
					reset => reset,
					Q => q1);
					
fall_edge <= q1 and not(q0);

end Behavioral;