---------------------------------------------------------------------------
--      BouncingBall.vhd                                                 --
--      Viral Mehta                                                      --
--      Spring 2005                                                      --
--                                                                       --
--      Modified by Stephen Kempf 03-01-2006                             --
--                                03-12-2007                             --
--      Spring 2014 Distribution                                           --
--                                                                       --
--      For use with ECE 385 Lab 9                                       --
--      UIUC ECE Department                                              --
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BouncingBall is
    Port ( Clk : in std_logic;
           Reset : in std_logic;
			  newKey : in std_logic;
			  keyCode : in std_logic_vector(7 downto 0);
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0);
			  keyAck : out std_logic;
           VGA_clk : out std_logic; 
           sync : out std_logic;
           blank : out std_logic;
           vs : out std_logic;
           hs : out std_logic);
end BouncingBall;

architecture Behavioral of BouncingBall is

component ball is
    Port ( Reset : in std_logic;
			  frame_clk : in std_logic;
		     newKey : in std_logic;
		     keyCode : in std_logic_vector(7 downto 0);
			  keyAck : out std_logic;
			  BallX : out std_logic_vector(9 downto 0);
			  BallY : out std_logic_vector(9 downto 0);
			  BallS : out std_logic_vector(9 downto 0));
end component;

component vga_controller is
    Port ( clk : in std_logic;
           reset : in std_logic;
           hs : out std_logic;
           vs : out std_logic;
           pixel_clk : out std_logic;
           blank : out std_logic;
           sync : out std_logic;
           DrawX : out std_logic_vector(9 downto 0);
           DrawY : out std_logic_vector(9 downto 0));
end component;

component Color_Mapper is
    Port ( BallX : in std_logic_vector(9 downto 0);
           BallY : in std_logic_vector(9 downto 0);
           DrawX : in std_logic_vector(9 downto 0);
           DrawY : in std_logic_vector(9 downto 0);
           Ball_size : in std_logic_vector(9 downto 0);
           Red   : out std_logic_vector(9 downto 0);
           Green : out std_logic_vector(9 downto 0);
           Blue  : out std_logic_vector(9 downto 0));
end component;

signal Reset_h, vsSig : std_logic;
signal DrawXSig, DrawYSig, BallXSig, BallYSig, BallSSig : std_logic_vector(9 downto 0);
signal keyIn : std_logic_vector(7 downto 0);
begin

Reset_h <= not Reset; -- The push buttons are active low

vgaSync_instance : vga_controller
   Port map(clk => clk,
            reset => Reset_h,
            hs => hs,
            vs => vsSig,
            pixel_clk => VGA_clk,
            blank => blank,
            sync => sync,
            DrawX => DrawXSig,
            DrawY => DrawYSig);

ball_instance : ball
   Port map(Reset => Reset_h,
            frame_clk => vsSig, -- Vertical Sync used as an "ad hoc" 60 Hz clock signal
            newKey => newKey,
				keyCode => keyCode,
				keyAck => keyAck,
				BallX => BallXSig,  --   (This is why we registered it in the vga controller!)
            BallY => BallYSig,
            BallS => BallSSig);

Color_instance : Color_Mapper
   Port Map(BallX => BallXSig,
            BallY => BallYSig,
            DrawX => DrawXSig,
            DrawY => DrawYSig,
            Ball_size => BallSSig,
            Red => Red,
            Green => Green,
            Blue => Blue);

vs <= vsSig;

end Behavioral;      
