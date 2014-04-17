--Tiles.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.game_board_array.all;

entity Tiles is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
			  --need some Tiles stuff
			  outboard : out gameBoard;
			  tileMove : in std_logic_vector(1 downto 0);
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic);
end Tiles;

--only dealing with one tile initially
--and assuming board is empty
architecture Behavioral of Tiles is

signal Tile_X_Pos, Tile_Y_Pos, Tile_X_motion, Tile_Y_motion : std_logic_vector (9 downto 0);
signal Tile_Size : std_logic_vector (10 downto 0); --made 10 to 0 for placing in gb


constant Tile_X_Step : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(2, 10);
constant Tile_Y_Step : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(2, 10);

constant X_Min    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(0, 10);  --Leftmost point on the X axis
constant X_Max    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(639, 10);  --Rightmost point on the X axis
constant Y_Min    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(0, 10);   --Topmost point on the Y axis
constant Y_Max    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(479, 10);  --Bottommost point on the Y axis


constant Tile_X_Center : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(320, 10);  --Center position on the X axis
constant Tile_Y_Center : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(240, 10);  --Center position on the Y axis


signal dataAck : std_logic := '0';
shared variable dataBuff : std_logic_vector(7 downto 0);
signal dataReady : std_logic := '0';

Begin

	Tile_Size <= CONV_STD_LOGIC_VECTOR(100, 11);
	
	interface : process(Reset, frame_clk, dataReady, newKey, dataAck)
	Begin
		--if(reset <= '1') then
			--dataReady <= '0';
			--keyAck <= '1';
			--dataBuff := conv_STD_LOGIC_VECTOR(0, 8);
		if(dataReady = '1' and dataAck = '0') then
			dataReady <= '0';
			keyAck <= '1';
		elsif(rising_edge(frame_clk) and (dataReady = '0') and (newKey = '1')) then
			dataBuff := keyCode;
			dataReady <= '1';
			keyAck <= '0';
		end if;
	end process;

	Move_tiles : process(Reset, frame_clk, Tile_Size, keyCode, dataReady)
	Begin
		if(Reset = '1') then   --Asynchronous Reset
			Tile_Y_Motion <= "0000000000";
			Tile_X_Motion <= "0000000000";
			Tile_Y_Pos <= Tile_Y_Center; --to change later with random insertion
			Tile_X_pos <= Tile_X_Center; --change later with randomness

		 elsif(rising_edge(frame_clk)) then
			if(dataReady = '1') then
				if(dataBuff = "00011101") then ---W
					if(Tile_Y_Pos - Tile_Size <= Y_Min) then
						Tile_Y_Motion <= Tile_Y_Step;
					else
						Tile_Y_Motion <= not(Tile_Y_Step) + 1;
					end if;
					Tile_X_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
				elsif(dataBuff = "00011100") then ---A
					if(Tile_X_Pos - Tile_Size <= X_Min) then
						Tile_X_Motion <= Tile_X_Step;
					else
						Tile_X_Motion <= not(Tile_X_Step) + 1;
					end if;
					Tile_Y_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
				elsif(dataBuff = "00011011") then ---S
					if   (Tile_Y_Pos + Tile_Size >= Y_Max) then
						Tile_Y_Motion <= not(Tile_Y_Step) + 1;
					else
						Tile_Y_Motion <= Tile_Y_Step;
					end if;
					Tile_X_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
				elsif(dataBuff = "00100011") then ---D
					if(Tile_X_Pos + Tile_Size >= X_Max) then
						Tile_X_Motion <= not(Tile_X_Step) + 1;
					else
						Tile_X_Motion <= Tile_X_Step;
					end if;
					Tile_Y_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
				---else
				---	Tile_Y_Motion <= Tile_Y_Motion;
				---	Tile_X_Motion <= Tile_X_Motion;
				end if;
				dataAck <= '0';
			else
				dataAck <= '1';
				if   (Tile_Y_Pos + Tile_Size >= Y_Max and Tile_Y_Motion = Tile_Y_Step) then 
					Tile_Y_Motion <= "0000000000"; --2's complement.
				elsif(Tile_Y_Pos - Tile_Size <= Y_Min and Tile_Y_Motion = not(Tile_Y_Step) + 1) then 
					Tile_Y_Motion <= "0000000000"; 
				else
					Tile_Y_Motion <= Tile_Y_Motion; -- Tile is in the middle
				end if;
				if   (Tile_X_Pos + Tile_Size >= X_Max and Tile_X_Motion = Tile_X_Step) then 
					Tile_X_Motion <= "0000000000"; --2's complement.
				elsif(Tile_X_Pos - Tile_Size <= X_Min and Tile_X_Motion = not(Tile_X_Step) + 1) then  
					Tile_X_Motion <= "0000000000";             
				else
					Tile_X_Motion <= Tile_X_Motion; -- Tile is in middle
				end if;
			end if;

			Tile_Y_pos <= Tile_Y_pos + Tile_Y_Motion; -- Update Tile position 
			Tile_X_pos <= Tile_X_pos + Tile_X_Motion;
			 
		 end if;
  
  end process Move_Tiles;

  --TileX <= Tile_X_Pos;
  --TileY <= Tile_Y_Pos;
  --TileS <= Tile_Size;

end Behavioral;