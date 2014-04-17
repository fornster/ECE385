--Color_Mapper

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Color_Mapper is
   Port ( 
          DrawX : in std_logic_vector(9 downto 0);
          DrawY : in std_logic_vector(9 downto 0);
          Red   : out std_logic_vector(9 downto 0);
          Green : out std_logic_vector(9 downto 0);
          Blue  : out std_logic_vector(9 downto 0));
end Color_Mapper;

architecture Behavioral of Color_Mapper is

signal Tile_on : std_logic := '1';

begin

  RGB_Display : process (Tile_on, DrawX, DrawY)
    --variable GreenVar, BlueVar : std_logic_vector(22 downto 0);
  begin
    if (Tile_on = '1') then -- tile in that spot
      Red <= "0000000000";
      Green <= "1111111111";
      Blue <= "0000000000";
    else          -- gradient background
		--change depending on where we are vertically or horizontally
      Red   <= DrawX(9 downto 0);
      Green <= DrawX(9 downto 0);
      Blue  <= DrawX(9 downto 0);
    end if;
  end process RGB_Display;

end Behavioral;
