library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity keyMap is
	port(clk, reset, keyAck, keyPress : in std_logic;
			dataIn : in std_logic_vector(7 downto 0);
			dataOut : out std_logic_vector(7 downto 0);
			keyAckout : out std_logic;
			newKey : out std_logic);
end entity;

architecture Behavioral of keyMap is

type cntrl_state is (idle, w, a, s, d, wEnd, aEnd, sEnd, dEnd);
signal state, next_state : cntrl_state;
signal key : std_logic := '0';
begin
	control_reg : process(reset, clk, keyPress)

	begin
		if(Reset = '1') then 
			state <= Idle;
		elsif(keyPress = '0' and rising_edge(clk)) then
			key <= '0';
			keyAckout <= '0';
		elsif(rising_edge(clk) and keyPress = '1' and key = '0') then
			state <= next_state;
			key <= '1';
			keyAckout <= '1';

		end if;
	end process;
	
	get_next_state: process(state, dataIn, keyAck)
	variable data : std_logic_vector(7 downto 0);
	begin
		case state is
			when idle =>
				if(dataIn = "00011101") then
					next_state <= w;
				elsif(dataIn = "00011100") then 
					next_state <= a;
				elsif(dataIn = "00011011") then
					next_state <= s;
				elsif(dataIn = "00100011") then
					next_state <= d;
				else
					next_state <= idle;
				end if;
				data := "00000000";
				newKey <= '0';
			when w =>
				data := "00011101";
				if(keyAck = '1') then
					newKey <= '1';
				else 
					newKey <= '0';
					
				end if;
				
				if(dataIn = "11110000") then
					next_state <= wEnd;
				elsif(dataIn = "00011100") then 
					next_state <= a;
				elsif(dataIn = "00011011") then
					next_state <= s;
				elsif(dataIn = "00100011") then
					next_state <= d;
				else
					next_state <= w;
				end if;
			when wEnd =>
				data := "00000000";
				newKey <= '1';
				if(dataIn = "00011101") then
					next_state <= idle;
				else
					next_state <= wEnd;
				end if;
			when a =>
				data := "00011100";
				if(keyAck = '1') then
					newKey <= '1';
				else 
					newKey <= '0';
				end if;
				if(dataIn = "11110000") then
					next_state <= aEnd;
				elsif(dataIn = "00011101") then
					next_state <= w;
				elsif(dataIn = "00011011") then
					next_state <= s;
				elsif(dataIn = "00100011") then
					next_state <= d;
				else
					next_state <= a;
				end if;
			when aEnd =>
				newKey <= '0';
				data := "00000000";
				if(dataIn = "00011100") then
					next_state <= idle;
				else
					next_state <= aEnd;
				end if;
			when s =>
				data := "00011011";
				if(keyAck = '1') then
					newKey <= '1';
				else 
					newKey <= '0';
				end if;
				if(dataIn = "11110000") then
					next_state <= sEnd;
				elsif(dataIn = "00011101") then
					next_state <= w;
				elsif(dataIn = "00011100") then 
					next_state <= a;
				elsif(dataIn = "00100011") then
					next_state <= d;
				else
					next_state <= s;
				end if;
			when sEnd =>
				data := "00000000";
				newKey <= '0';
				if(dataIn = "00011011") then
					next_state <= idle;
				else
					next_state <= sEnd;
				end if;	
			when d =>
				data := "00100011";
				if(keyAck = '1') then
					newKey <= '1';
				else 
					newKey <= '0';
				end if;
				if(dataIn = "11110000") then
					next_state <= dEnd;
				elsif(dataIn = "00011101") then
					next_state <= w;
				elsif(dataIn = "00011100") then 
					next_state <= a;
				elsif(dataIn = "00011011") then
					next_state <= s;
				else
					next_state <= d;
				end if;
			when dEnd =>
				data := "00000000";
				newKey <= '0';
				if(dataIn = "00100011") then
					next_state <= idle;
				else
					next_state <= dEnd;
				end if;	
		end case;
		dataOut <= data;
	end process;
end Behavioral;
					
					
					