---------------------------------------------------------------------------
--      Mem2IO.vhd                                                       --
--      Stephen Kempf                                                    --
--      Spring 2006                                                      --
--                                                                       --
--      Revised 3-15-2006                                                --
--              3-22-2007                                                --
--      Spring 2014 Distribution                                         --
--                                                                       --
--      For use with ECE 385 Experiment 9                                --
--      UIUC ECE Department                                              --
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mem2IO is
    Port ( clk : in std_logic;
           reset : in std_logic;
           A : in std_logic_vector(17 downto 0);
           CE : in std_logic;
           UB : in std_logic;
           LB : in std_logic;
           OE : in std_logic;
           WE : in std_logic;
           Switches : in std_logic_vector(15 downto 0);
           Data_CPU : inout std_logic_vector(15 downto 0);
           Data_Mem : inout std_logic_vector(15 downto 0);
           HEX0 : out std_logic_vector(3 downto 0);
           HEX1 : out std_logic_vector(3 downto 0);
           HEX2 : out std_logic_vector(3 downto 0);
           HEX3 : out std_logic_vector(3 downto 0));
end Mem2IO;

architecture Behavioral of Mem2IO is

signal hex_data : std_logic_vector(15 downto 0);

begin

Mem_Read : process (oe, we, Data_Mem, A, Switches) is
begin
   Data_CPU <= "ZZZZZZZZZZZZZZZZ";

   if (we = '1' and oe = '0') then
      if (A(15 downto 0) = x"FFFF") then -- Switch Read
         Data_CPU <= Switches;
      else                    -- Memory Read
         Data_CPU <= Data_Mem;
      end if;
   else
      null;
   end if;
end process;

Mem_Write : process (we, Data_CPU) is
begin
   Data_Mem <= "ZZZZZZZZZZZZZZZZ";

   if (we = '0') then   -- Memory write
      Data_Mem <= Data_CPU;
   else
      null;
   end if;
end process;

Hex_Write : process (clk, reset, we, A, Data_CPU) is
begin
   if (reset = '1') then
      hex_data <= x"0000";
   elsif (rising_edge(clk)) then
      if (we = '0' and A(15 downto 0) = x"FFFF") then
         hex_data <= Data_CPU;
      end if;
   end if;
end process;

HEX0 <= hex_data(3 downto 0);
HEX1 <= hex_data(7 downto 4);
HEX2 <= hex_data(11 downto 8);
HEX3 <= hex_data(15 downto 12);

end Behavioral;