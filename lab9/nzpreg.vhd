library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NZPreg is 
	port(loadNZP, clk : in std_logic;
			genCCout : in std_logic_vector(2 downto 0);
			NZPout : out std_logic_vector(2 downto 0));
end entity;

architecture behavioral of NZPreg is
begin

	regop : process(clk, loadNZP)
	variable NZP : std_logic_vector(2 downto 0);
	begin
		if(rising_edge(clk) and loadNZP = '1') then
			NZP <= genCCout;
		end if;
		NZPout <= NZP;
	end process;
end behavioral;