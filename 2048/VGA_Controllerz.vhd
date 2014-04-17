--VGA_Controller

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--renamed with an appended z to fix errors
entity vga_controllerz is 
  Port ( clk       			: in  std_logic;  -- 50 MHz clock
         reset    			: in  std_logic;  -- reset signal
         hs        : out std_logic;  -- Horizontal sync pulse.  Active low
         vs         : out std_logic;  -- Vertical sync pulse.  Active low
         pixel_clk 			: out std_logic;  -- 25 MHz pixel clock output
         blank     		: out std_logic;  -- Blanking interval indicator.  Active low.
         sync      			: out std_logic;  -- Composite Sync signal.  Active low.  We don't use it in this lab,
															-- but the video DAC on the DE2 board requires an input for it.
         DrawX     			: out std_logic_vector(9 downto 0);   -- horizontal coordinate
         DrawY     			: out std_logic_vector(9 downto 0) ); -- vertical coordinate
end vga_controllerz;

architecture Behavioral of vga_controllerz is

  --800 horizontal pixels indexed 0 to 799
  --525 vertical pixels indexed 0 to 524
  constant hpixels : std_logic_vector(9 downto 0) := "1100011111";
  constant vlines  : std_logic_vector(9 downto 0) := "1000001100";
  
  --horizontal pixel and vertical line counters
  signal horiz_count, vert_count : std_logic_vector(9 downto 0);
  signal clkdiv : std_logic;

  --signal indicates if ok to display color for a pixel
  signal display : std_logic;

begin
  -- Disable Composite Sync
  sync <= '0';
  --This cuts the 50 Mhz clock in half to generate a 25 MHz pixel clock
  process(clk, reset)
  begin
    if (reset = '1') then
      clkdiv <= '0';
    elsif (rising_edge(clk)) then
      clkdiv <= not clkdiv;
    end if;
  end process;

  --Runs the horizontal counter  when it resets vertical counter is incremented
  counter_proc : process(clkdiv, reset)
  begin
    if (reset = '1') then
      horiz_count <= "0000000000";
      vert_count <= "0000000000";
    elsif (rising_edge(clkdiv)) then
      if (horiz_count = hpixels) then    --If hc has reached the end of pixel count
        horiz_count <= "0000000000";
        if (vert_count = vlines) then      -- if vc has reached end of line count
          vert_count <= "0000000000";
        else
          vert_count <= vert_count + 1;
        end if;
      else
        horiz_count <= horiz_count + 1; -- no statement about vc, implied vc <= vc;
      end if;
    end if;
  end process;
  
  DrawX <= horiz_count;
  DrawY <= vert_count;

  -- horizontal sync pulse is 96 pixels long at pixels 656-752
  -- (signal is registered to ensure clean output waveform)
  hsync_proc : process (reset, clkdiv, horiz_count)
 begin
    if (reset = '1') then
      hs <= '0';
    elsif (rising_edge(clkdiv)) then
      if ((horiz_count + 1) >= "1010010000" and (horiz_count + 1) < "1011110000") then -- must check next value of hc
        hs <= '0';
      else
        hs <= '1';
      end if;
    end if;
  end process;

  -- vertical sync pulse is 2 lines(800 pixels) long at line 490-491
  --   (signal is registered to ensure clean output waveform)
  vsync_proc : process(reset, clkdiv, vert_count)
  begin
    if (reset = '1') then
      vs <= '0';
    elsif (rising_edge(clkdiv)) then
      if ((vert_count + 1) = "111101010" or (vert_count + 1) = "111101011") then -- must check next value of vc
        vs <= '0';
      else
        vs <= '1';
      end if;
    end if;
  end process;

  -- only display pixels between horizontal 0-639 and vertical 0-479 (640x480)
  -- (This signal is registered within the DAC chip, so we can leave it as pure combinational logic here)
  blank_proc : process(horiz_count, vert_count)
  begin
    if  ((horiz_count >= "1010000000") or (vert_count >= "0111100000")) then
      display <= '0';
    else
      display <= '1';
    end if;
  end process;
  
  blank <= display;
  pixel_clk <= clkdiv;

end Behavioral;      
