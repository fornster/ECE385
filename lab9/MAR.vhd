library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MAR is
	port( dataIn : in std_logic_vector(15 downto 0);
			reset, ld, clk: in std_logic;
			dataOut : out std_logic_vector(17 downto 0));
end entity;

architecture behavioral of MAR is
begin
	regOp : process(clk, reset)
	variable ram : std_logic_vector(15 downto 0);
	begin
		if(reset = '1') then
			ram := "0000000000000000";
		elsif(rising_edge(clk)) then
			if(ld = '1') then
			ram := dataIn;
			else
				ram := ram;
			end if;
		end if;
		dataOut <= "00" & ram;
	end process;
end behavioral;