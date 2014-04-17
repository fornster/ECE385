library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity keyInterface is
	port(newKey, MoveAck, clk: in std_logic;
			keyCode : in std_logic_vector(7 downto 0);
			keyAck, newMove : out std_logic;
			keyReset : out std_logic;
			moveDir : out std_logic_vector(1 downto 0)); --direction of move 0=down counterclockwise from there
end entity;

architecture behavioral of keyInterface is

begin
	handshake : process(newKey, MoveAck, keyCode, clk)
	--variable currKey : std_logic_vector(7 downto 0) := "00000000";
	variable move : std_logic := '0';
	variable reset, ack : std_logic := '0';
	variable dir : std_logic_vector(1 downto 0) := "00";
	begin
		--ack := '0';
		
		if((moveAck = '1') and rising_edge(clk)) then-- and move = '1') then  --Need to figure out handshake protocol
			move := '0';
			ack := '1';
			reset := '0';
		elsif((newKey = '1') and rising_edge(clk)) then -- and move = '0'
			
			--currKey := keyCode;
			if(keyCode = "00011011") then --S
				move := '1';
				dir := "00";
			elsif (keyCode = "00100011") then --D
				move := '1';
				dir := "01";
			elsif (keyCode = "00011101") then --W
				move := '1';
				dir := "10";
			elsif (keyCode = "00011100") then	--A
				move := '1';
				dir := "11";
			elsif (keyCode = "00101101") then--R, keyboard restart
				reset := '1';
			end if;
			ack := '0';
		end if;
		newMove <= move;
		keyAck <= ack;
		keyReset <= reset;
		moveDir <= dir;
	end process;
end behavioral;