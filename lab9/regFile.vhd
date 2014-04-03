library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regFile is
	port(dataIn : in std_logic_vector(15 downto 0);
			DR, SR1, SR2 : in std_logic_vector(2 downto 0);
			LDR, clk, reset : in std_logic;
			SR1out, SR2out : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of regFile is
type RamMemory is array(7 downto 0) of std_logic_vector(15 downto 0);
signal ram : ramMemory;
begin
	ReadReg : process(clk, SR1, SR2)
	begin
		if(rising_edge(clk)) then
			SR1out <= ram(conv_integer(unsigned(SR1)));
			SR2out <= ram(CONV_integer(unsigned(SR2)));
		end if;
	end process;
	
	WriteReg : process(clk, reset, dataIn, DR, LDR)
	begin
		if(reset = '1') then
			ram(0) <= "0000000000000000";
			ram(1) <= "0000000000000000";
			ram(2) <= "0000000000000000";
			ram(3) <= "0000000000000000";
			ram(4) <= "0000000000000000";
			ram(5) <= "0000000000000000";
			ram(6) <= "0000000000000000";
			ram(7) <= "0000000000000000";
		elsif(rising_edge(clk) and LDR = '1') then
			ram(conv_integer(unsigned(DR))) <= dataIn;
		end if;
	end process;
end behavioral;