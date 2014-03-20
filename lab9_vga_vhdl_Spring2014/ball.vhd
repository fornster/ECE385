---------------------------------------------------------------------------
---------------------------------------------------------------------------
--    Ball.vhd                                                           --
--    Viral Mehta                                                        --
--    Spring 2005                                                        --
--                                                                       --
--    Modified by Stephen Kempf 03-01-2006                               --
--                              03-12-2007                               --
--    Spring 2014 Distribution                                             --
--                                                                       --
--    For use with ECE 385 Lab 9                                         --
--    UIUC ECE Department                                                --
---------------------------------------------------------------------------
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ball is
   Port ( Reset : in std_logic;
        frame_clk : in std_logic;
		  newKey : in std_logic;
		  keyCode : in std_logic_vector(7 downto 0);
		  keyAck : out std_logic;
        BallX : out std_logic_vector(9 downto 0);
        BallY : out std_logic_vector(9 downto 0);
        BallS : out std_logic_vector(9 downto 0));
end ball;

architecture Behavioral of ball is

signal Ball_X_pos, Ball_X_motion, Ball_Y_pos, Ball_Y_motion : std_logic_vector(9 downto 0);
signal Ball_Size : std_logic_vector(9 downto 0);

constant Ball_X_Center : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(320, 10);  --Center position on the X axis
constant Ball_Y_Center : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(240, 10);  --Center position on the Y axis

constant Ball_X_Min    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(0, 10);  --Leftmost point on the X axis
constant Ball_X_Max    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(639, 10);  --Rightmost point on the X axis
constant Ball_Y_Min    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(0, 10);   --Topmost point on the Y axis
constant Ball_Y_Max    : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(479, 10);  --Bottommost point on the Y axis
                              
constant Ball_X_Step   : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(1, 10);  --Step size on the X axis
constant Ball_Y_Step   : std_logic_vector(9 downto 0) := CONV_STD_LOGIC_VECTOR(1, 10);  --Step size on the Y axis

signal dataAck : std_logic := '0';
shared variable dataBuff : std_logic_vector(7 downto 0);
signal dataReady : std_logic := '0';

begin
	
  Ball_Size <= CONV_STD_LOGIC_VECTOR(4, 10); -- assigns the value 4 as a 10-digit binary number, ie "0000000100"

-------------------------------------------------

	interface : process(Reset, frame_clk, dataReady, newKey,dataAck)
	begin
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
		
  Move_Ball: process(Reset, frame_clk, Ball_Size, keyCode, dataReady)
  begin
    if(Reset = '1') then   --Asynchronous Reset
      Ball_Y_Motion <= conv_STD_LOGIC_VECTOR(0, 10);
      Ball_X_Motion <= Ball_X_Step;
      Ball_Y_Pos <= Ball_Y_Center;
      Ball_X_pos <= Ball_X_Center;

    elsif(rising_edge(frame_clk)) then
		if(dataReady = '1') then
			if(dataBuff = "00011101") then ---W
				if(Ball_Y_Pos - Ball_Size <= Ball_Y_Min) then
					Ball_Y_Motion <= Ball_Y_Step;
				else
					Ball_Y_Motion <= not(Ball_Y_Step) + 1;
				end if;
				Ball_X_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
			elsif(dataBuff = "00011100") then ---A
				if(Ball_X_Pos - Ball_Size <= Ball_X_Min) then
					Ball_X_Motion <= Ball_X_Step;
				else
					Ball_X_Motion <= not(Ball_X_Step) + 1;
				end if;
				Ball_Y_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
			elsif(dataBuff = "00011011") then ---S
				if   (Ball_Y_Pos + Ball_Size >= Ball_Y_Max) then
					Ball_Y_Motion <= not(Ball_Y_Step) + 1;
				else
					Ball_Y_Motion <= Ball_Y_Step;
				end if;
				Ball_X_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
			elsif(dataBuff = "00100011") then ---D
				if(Ball_X_Pos + Ball_Size >= Ball_X_Max) then
					Ball_X_Motion <= not(Ball_X_Step) + 1;
				else
					Ball_X_Motion <= Ball_X_Step;
				end if;
				Ball_Y_Motion <= CONV_STD_LOGIC_VECTOR(0, 10);
			---else
			---	Ball_Y_Motion <= Ball_Y_Motion;
			---	Ball_X_Motion <= Ball_X_Motion;
			end if;
			dataAck <= '0';
		else
			dataAck <= '1';
			if   (Ball_Y_Pos + Ball_Size >= Ball_Y_Max and Ball_Y_Motion = Ball_Y_Step) then -- Ball is at the bottom edge, BOUNCE!
				Ball_Y_Motion <= not(Ball_Y_Step) + '1'; --2's complement.
			elsif(Ball_Y_Pos - Ball_Size <= Ball_Y_Min and Ball_Y_Motion = not(Ball_Y_Step) + 1) then  -- Ball is at the top edge, BOUNCE!
				Ball_Y_Motion <= Ball_Y_Step; 
			else
				Ball_Y_Motion <= Ball_Y_Motion; -- Ball is somewhere in the middle, don't bounce, just keep moving
			end if;
			if   (Ball_X_Pos + Ball_Size >= Ball_X_Max and Ball_X_Motion = Ball_X_Step) then -- Ball is at the bottom edge, BOUNCE!
				Ball_X_Motion <= not(Ball_X_Step) + '1'; --2's complement.
			elsif(Ball_X_Pos - Ball_Size <= Ball_X_Min and Ball_X_Motion = not(Ball_X_Step) + 1) then  -- Ball is at the top edge, BOUNCE!
				Ball_X_Motion <= Ball_X_Step;             
			else
				Ball_X_Motion <= Ball_X_Motion; -- Ball is somewhere in the middle, don't bounce, just keep moving
			end if;
		end if;

      Ball_Y_pos <= Ball_Y_pos + Ball_Y_Motion; -- Update ball position 
      Ball_X_pos <= Ball_X_pos + Ball_X_Motion;

	--******************************************
	  --ATTENTION! Please answer the following quesiton in your lab report!
        -- Note that Ball_Y_Motion in the above statement may have been changed at the same clock edge
        --  that is causing the assignment of Ball_Y_pos.  Will the new value of Ball_Y_Motion be used,
        --  or the old?  How will this impact behavior of the ball during a bounce, and how might that 
        --  interact with a response to a keypress?  Can you fix it?  Give an answer in your postlab.
      --******************************************
       
    end if;
  
  end process Move_Ball;

  BallX <= Ball_X_Pos;
  BallY <= Ball_Y_Pos;
  BallS <= Ball_Size;
 
end Behavioral;      
