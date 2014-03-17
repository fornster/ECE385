---------------------------------------------------------------------------
--      test_memory.vhd                                                  --
--      Stephen Kempf                                                    --
--      Summer 2005                                                      --
--                                                                       --
--      Revised 3-15-2006                                                --
--              3-22-2007                                                --
--      Spring 2014 Distribution                                         --
--                                                                       --
--      For use with ECE 385 Lab 9                                       --
--      UIUC ECE Department                                              --
---------------------------------------------------------------------------

-- This memory has similar behavior to the SRAM IC on the DE2 board.  This
-- file should be used for simulations only.  In simulation, this memory is
-- guaranteed to work at least as well as the actual memory (that is, the
-- actual memory may require more careful treatment than this test memory).

-- To use, you should create a seperate top-level entity for simulation
-- that connects this memory module to your computer.  You can create this
-- extra entity either in the same project (temporarily setting it to be the
-- top module) or in a new one, and create a new vector waveform file for it.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_memory is
   Port ( Reset : in std_logic;
          I_O  : inout std_logic_vector(15 downto 0);
          A    : in std_logic_vector(17 downto 0);
          CE   : in std_logic;
          UB   : in std_logic;
          LB   : in std_logic;
          WE   : in std_logic;
          OE   : in std_logic);
end test_memory;

architecture Behavioral of test_memory is

constant size : integer := 64; -- expand memory as needed (current is 64 words)
type mem_type is array (0 to size-1) of std_logic_vector(15 downto 0);
signal mem_array : mem_type;

signal mem_out : std_logic_vector(15 downto 0);

begin
   mem_out <= mem_array(conv_integer(A(5 downto 0)));  -- ATTENTION: Size here must correspond to size of
              -- memory vector above.  Current size is 64, so the slice must be 6 bits.  If size were 1024,
              -- slice would have to be 10 bits.  (There are three more places below where values must stay
              -- consistent as well.)

   memory_output : process (CE, OE, UB, LB, WE, mem_out)
   begin
      I_O <= "ZZZZZZZZZZZZZZZZ";

      if (CE = '0' and OE = '0' and WE = '1') then
         if (UB = '0') then
            I_O(15 downto 8) <= mem_out(15 downto 8);
         end if;
         if (LB = '0') then
            I_O(7 downto 0) <= mem_out(7 downto 0);
         end if;
      end if;
   end process;

   memory_input : process (Reset, I_O, A, CE, UB, LB, WE)
   begin
      if (Reset = '1') then -- Insert initial memory contents here

         mem_array(0) <= "0101000000100000"; -- examples of instructions
         mem_array(1) <= "0001001000101010";

      elsif (CE = '0' and WE = '0' and A(15 downto 6) = "0000000000") then -- A(15 downto X+1): X must
                                                                           -- be the same as above
         if (UB = '0') then
            mem_array(conv_integer(A(5 downto 0)))(15 downto 8) <= I_O(15 downto 8); -- A(X downto 0): X
                                                                            -- must be the same as above
         end if;
         if (LB = '0') then
            mem_array(conv_integer(A(5 downto 0)))(7 downto 0) <= I_O(7 downto 0); -- A(X downto 0): X
                                                                            -- must be the same as above
         end if;
      end if;
   end process;

end Behavioral;