library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity keyCapture is
	Port(psdata, clk, reset, keyAck : in std_logic;
			keyReady : out std_logic;
			keyData : out std_logic_vector(7 downto 0));
end entity;

architecture Behavioral of keyCapture is

signal dataIn : std_logic_vector(10 downto 0) := "00000000000";
signal count : integer range 11 downto 0 := 0;
signal keyRed : std_logic := '0';
begin
	shift_in : process(clk, reset, dataIn, keyRed, keyAck)
	begin
		if(reset = '1') then
			dataIn <= "00000000000";
		elsif(rising_edge(clk)) then
			dataIn <= psdata & dataIn(10 downto 1);
			if(count = 10) then
				keyData <= dataIn(9 downto 2);
				count <= 0;
				keyRed <= '1';
			else
				count <= count + 1;
				keyRed <= '0';
			end if;
		else
			dataIn <= dataIn;
		end if;
		if(keyRed = '1') then
			keyReady <= '1';
			keyRed <= '0';
		elsif(keyAck = '1') then
			keyReady <= '0';
		end if;
		
	end process;
	
end Behavioral;