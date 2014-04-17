library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity gameBoardH is
	port(newTileVal, newTile, clk: in std_logic; --whether new tile is 2 or 4 
			reset : in std_logic;
		  tileLoc : in std_logic_vector(15 downto 0); --location of the new tile
		  tileMove : in std_logic_vector(1 downto 0); --direction to move current tiles
		  move : in std_logic;
		  freeTiles : out std_logic_vector(15 downto 0);
		  needTile, moveAck : out std_logic
		  );
end entity;

architecture behavioral of gameBoardH is

begin
	process(reset, newTile, tileLoc, tileMove, move) is
	type row is range 3 to 0;
	type board is array(0 to 3, 0 to 3) of std_logic_vector(10 downto 0);
	type freeSpaces is array(0 to 3, 0 to 3) of std_logic;
	variable gb : board := (("00000000000", "00000000000", "00000000000", "00000000000"), 
	("00000000000", "00000000000", "00000000000", "00000000000"), ("00000000000", "00000000000", "00000000000", "00000000000"), ("00000000000", "00000000000", "00000000000", "00000000000")); --GameBoard
	variable gbFree : freeSpaces := (('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0'), ('0', '0', '0', '0')); --keeps track of free spaces
	variable ack : std_logic := '0';
	begin
		
		if (reset = '1') then
			for index in 0 to 3 loop
				for jndex in 0 to 3 loop
					gb(index, jndex) := "00000000000";
					gbFree(index, jndex) := '0';
				end loop;
			end loop;
		--elsif ((move = '1') and rising_edge(clk)) then
			--ack := '1';
			--gb(0,0) := "00000000001";
			--gbFree(0,0) := '1';
			--if(tileMove = "00") then --down
				--for index in  0 to 3 loop
					--for jndex in 2 downto 0 loop
						--if(gbFree(jndex, index) = '1') then
							--for kndex in jndex + 1 to 3 loop
								--if(gbFree(kndex, index) = '0') then
									--gbFree(kndex - 1, index) := '0';
									--gbFree(kndex, index) := '1';
									--gb(kndex, index) := gb(kndex-1, index);
									--gb(kndex-1, index) := "00000000000";
								--end if;
							--end loop;
						--end if;
					--end loop;
				--end loop; 
			--end if;
		elsif(tileMove = "01") then
			for index in  0 to 3 loop
				for jndex in 2 downto 0 loop
					if(gbFree(jndex, index) = '1') then
						for kndex in jndex + 1 to 3 loop
							if(gbFree(kndex, index) = '0') then
								gbFree(kndex - 1, index) := '0';
								gbFree(kndex, index) := '1';
								gb(kndex, index) := gb(kndex-1, index);
								gb(kndex-1, index) := "00000000000";
							end if;
						end loop;
					end if;
				end loop;
			end loop;
		--end if;
		else
			ack := '0';
		end if;
		--end if;
		moveAck <= ack;
		freeTiles(0) <= gbFree(0, 0);
		freeTiles(1) <= gbFree(0, 1);
		freeTiles(2) <= gbFree(0, 2);
		freeTiles(3) <= gbFree(0, 3);
		freeTiles(4) <= gbFree(1, 0);
		freeTiles(5) <= gbFree(1, 1);
		freeTiles(6) <= gbFree(1, 2);
		freeTiles(7) <= gbFree(1, 3);
		freeTiles(8) <= gbFree(2, 0);
		freeTiles(9) <= gbFree(2, 1);
		freeTiles(10) <= gbFree(2, 2);
		freeTiles(11) <= gbFree(2, 3);
		freeTiles(12) <= gbFree(3, 0);
		freeTiles(13) <= gbFree(3, 1);
		freeTiles(14) <= gbFree(3, 2);
		freeTiles(15) <= gbFree(3, 3);
	end process;
end behavioral;
						