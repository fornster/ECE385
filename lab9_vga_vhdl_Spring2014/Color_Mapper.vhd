---------------------------------------------------------------------------
--    Color_Mapper.vhd                                                   --
--    Stephen Kempf                                                      --
--    3-1-06                                                             --
--												                         --
--    Modified by David Kesler - 7-16-08					           	 --
--                                                                       --
--    Spring 2014 Distribution                                           --
--                                                                       --
--    For use with ECE 385 Lab 9                                         --
--    University of Illinois ECE Department                              --
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Color_Mapper is
   Port ( BallX : in std_logic_vector(9 downto 0);
          BallY : in std_logic_vector(9 downto 0);
          DrawX : in std_logic_vector(9 downto 0);
          DrawY : in std_logic_vector(9 downto 0);
          Ball_size : in std_logic_vector(9 downto 0);
          Red   : out std_logic_vector(9 downto 0);
          Green : out std_logic_vector(9 downto 0);
          Blue  : out std_logic_vector(9 downto 0));
end Color_Mapper;

architecture Behavioral of Color_Mapper is

signal Ball_on : std_logic;

begin

  Ball_on_proc : process (BallX, BallY, DrawX, DrawY, Ball_size)
  begin
  -- Old Ball: Generated square box by checking if the current pixel is within a square of length
  -- 2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons, by using
  -- IEEE.STD_LOGIC_UNSIGNED.ALL at the top.
--   if ((DrawX >= BallX - Ball_size) AND
--      (DrawX <= BallX + Ball_size) AND
--      (DrawY >= BallY - Ball_size) AND
--      (DrawY <= BallY + Ball_size)) then

  -- New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
  -- this single line is quite powerful descriptively, it causes the synthesis tool to use up three
  -- of the 12 available multipliers on the chip!  It also requires IEEE.STD_LOGIC_SIGNED.ALL for
  -- the signed multiplication to operate correctly.
    if ((((DrawX - BallX) * (DrawX - BallX)) + ((DrawY - BallY) * (DrawY - BallY))) <= (Ball_Size*Ball_Size)) then
      Ball_on <= '1';
    else
      Ball_on <= '0';
    end if;
  end process Ball_on_proc;

  RGB_Display : process (Ball_on, DrawX, DrawY)
    variable GreenVar, BlueVar : std_logic_vector(22 downto 0);
  begin
    if (Ball_on = '1') then -- blue ball
      Red <= "1111111111";
      Green <= "1111111111";
      Blue <= "0000000000";
    else          -- gradient background
      Red   <= DrawX(9 downto 0);
      Green <= DrawX(9 downto 0);
      Blue  <= DrawX(9 downto 0);
    end if;
  end process RGB_Display;

end Behavioral;
