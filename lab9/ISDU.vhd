-------------------------------------------------------------------------------
-- Company: 		 UIUC ECE Dept.                                          --
-- Engineer:		 Stephen Kempf                                           --
--                                                                           --
-- Create Date:    17:44:03 10/08/06                                         --
-- Design Name:    ECE 385 Lab 10 Given Code - Incomplete ISDU               --
-- Module Name:    ISDU - Behavioral                                         --
--                                                                           --
-- Comments:                                                                 --
--    Revised 3-22-2007                                                      --
--    Spring 2007 Distribution                                               --
--    Revised 10-22-2010                                                     --
--    Spring 2014 Distribution                                               --
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ISDU is
    Port( clk           : in std_logic;
          Reset         : in std_logic;
          Run           : in std_logic;
          Continue      : in std_logic;
          ContinueIR    : in std_logic;  -- For partial testing in Week 1

          Opcode        : in std_logic_vector(3 downto 0);
          IR_5          : in std_logic;
 
          LD_MAR        : out std_logic;
          LD_MDR        : out std_logic;
          LD_IR         : out std_logic;
          LD_BEN        : out std_logic;
          LD_CC         : out std_logic;
          LD_REG        : out std_logic;
          LD_PC         : out std_logic;

          GatePC        : out std_logic;
          GateMDR       : out std_logic;
          GateALU       : out std_logic;
          GateMARMUX    : out std_logic;

          PCMUX         : out std_logic_vector(1 downto 0);
          DRMUX         : out std_logic_vector(1 downto 0);
          SR1MUX        : out std_logic_vector(1 downto 0);
          SR2MUX        : out std_logic;
          ADDR1MUX      : out std_logic;
          ADDR2MUX      : out std_logic_vector(1 downto 0);
          MARMUX        : out std_logic;

          ALUK          : out std_logic_vector(1 downto 0);

          Mem_CE        : out std_logic;  -- The memory signals are active-low
          Mem_UB        : out std_logic;
          Mem_LB        : out std_logic;
          Mem_OE        : out std_logic;  -- "MIO.EN", but active-low
          Mem_WE        : out std_logic);
end ISDU;

architecture Behavioral of ISDU is

type ctrl_state is (Halted, PauseIR1, PauseIR2, PCtoMAR, LoadMDR, LoadMDR_2, LoadIR, Decode, add0, and0, not0, BR0, JMP0, JSR0, JSR1, LDR0, LDR1, LDR2, LDR3, STR0, STR1, STR2, STR3);
signal State, Next_state : ctrl_state;

begin

Assign_Next_State : process (clk, reset)
begin
  if (Reset = '1') then
    State <= Halted;
  elsif (rising_edge(clk)) then
    State <= Next_state;
  end if;
end process;

Get_Next_State : process (State, Opcode, Run)
begin
  case State is
    when Halted => 
      if (run = '0') then
        Next_state <= Halted;
      else
        Next_state <= PCtoMAR;
      end if;
    when PCtoMAR =>
      Next_state <= LoadMDR;
    when LoadMDR =>
      Next_state <= LoadMDR_2;
    when LoadMDR_2 =>
      Next_state <= LoadIR;
    when LoadIR =>
      --Next_state <= PauseIR1;
      Next_state <= Decode;  -- Bypass PauseIR in Week 2.
    when PauseIR1 =>  -- Pause to display IR on HEX. (Week 1)
      if (ContinueIR = '0') then
        Next_state <= PauseIR1;
      else
        Next_state <= PauseIR2;
      end if;
    when PauseIR2 =>  -- Wait for ContinueIR to be released. (Week 1)
      if (ContinueIR = '1') then
        Next_state <= PauseIR2;
      else
        Next_state <= PCtoMAR;
      end if;
    when Decode =>
      case Opcode is
        when "0001" =>  -- ADD 
          Next_state <= add0;
			when "0101" => --AND
				Next_state <= and0;
			when "1001" => --NOT
				Next_state <= not0;
			---when "0000" => --BR
				---Next_state <= BR0;
			when "0110" => --LDR
				Next_state <= LDR0;
			when "0111" => --str
				Next_state <= STR0;
			when "1101" => --pause
				next_state <= pauseIR1;
			when "1100" => ---jmp
				next_state <= jmp0;
			when "0100" => ---jsr
				next_state <= jsr0;
        when others =>
          Next_state <= PCtoMAR;
      end case;
    when add0 =>
      Next_state <= PCtoMAR;
	 when str0 =>
		Next_state <= str1;
	 when str1 =>
		Next_state <= str2;
	 when str2 =>
		Next_state <= str3;
	 when str3 =>
		Next_state <= PCtoMAR;
	 when not0 =>
		next_state <= PCtoMAR;
	 when ldr0 =>
		next_state <= ldr1;
	 when ldr1 =>
		next_state <= ldr2;
	 when ldr2 =>
		next_state <= ldr3;
	 when ldr3 =>
		next_state <= PCtoMAR;
	 when jsr0 =>
		next_state <= jsr1;
	 when jsr1 =>
		next_state <= PCtoMAR;
	 when jmp0 =>
		next_state <= PCtoMAR;
    when others =>
      NULL;
  end case;
end process;

Assign_Control_Signals : process (state)
begin
  -- default controls signal values; within a process, these can be
  -- overridden further down (in the case statement, in this case)
  LD_MAR <= '0';
  LD_MDR <= '0';
  LD_IR  <= '0';
  LD_BEN <= '0';
  LD_CC  <= '0';
  LD_REG <= '0';
  LD_PC  <= '0';

  GatePC     <= '0';
  GateMDR    <= '0';
  GateALU    <= '0';
  GateMARMUX <= '0';

  PCMUX    <= "00";
  DRMUX    <= "00"; -- By default sends IR(11:9) to DR 
  SR1MUX   <= "00"; -- By default sends IR(8:6) to SR1 
  SR2MUX   <= '0';
  ADDR1MUX <= '0';
  ADDR2MUX <= "00";
  MARMUX   <= '0';

  Mem_OE   <= '1'; -- These signals are active low
  Mem_WE   <= '1';

  case State is
    when Halted =>    -- Do nothing
    when PCtoMAR =>      -- Fetch 1 (Week 1)
      GatePC <= '1';     -- PC drives bus,
      LD_MAR <= '1';     --   loaded into MAR
      PCMUX <= "00";     -- PC loads from PC+1 entity
      LD_PC <= '1';
    when LoadMDR =>    -- Fetch 2 (Week 1)
      Mem_OE <= '0';     -- Memory bus driven by Memory; also, MDRMUX takes data from memory bus
    when LoadMDR_2 =>    -- Fetch 3 (Week 1)
      Mem_OE <= '0';     -- Memory bus still driven by Memory
      LD_MDR <= '1';     -- Load MDR from memory bus
    when LoadIR =>      -- Fetch 4 (Week 1)
      GateMDR <= '1';    -- MDR drives bus,
      LD_IR <= '1';      --   loaded into IR
    when PauseIR1 =>  -- No control signals. IR should be displayed on HEX4-HEX7. (Week 1)
    when PauseIR2 =>  -- No control signals. (Week 1)
    when Decode =>      -- Instruction Decode
      LD_BEN <= '1';     -- Load the BEN register (not shown on given BD)
    when add0 =>      -- Op ADD
      SR2MUX <= IR_5;    -- Selects between value from regfile or sign-extended immediate value
      ALUK <= "00";      -- ALU perfroms addition; other functions are AND, NOT, and PASS
      GateALU <= '1';    -- ALU drives bus
      LD_REG <= '1';     -- Store result to Regfile
	 when and0 =>
		SR2MUX <= IR_5;    -- Selects between value from regfile or sign-extended immediate value
      ALUK <= "01";      -- ALU perfroms AND
      GateALU <= '1';    -- ALU drives bus
      LD_REG <= '1';     -- Store result to Regfile
	 when not0 =>
		ALUK <= "10";
		GateALU <= '1';
		LD_REG <= '1';
	 when str0 =>
		ADDR2MUX <= "10";
		ld_MAR <= '1';
		gateMARMUX <= '1';
	 when str1 =>
		ALUK <= "11";
		SR1MUX <= "01";
		GateALU <= '1';
		LD_MDR <= '1';
	 when str2 =>
		Mem_WE <= '0';
	 when str3 => 
		mem_WE <= '0';
	 when ldr0 =>
		ADDR2MUX <= "10";
		LD_MAR <= '1';
		gateALU <= '1';
	 when ldr1 =>
		Mem_OE <= '0';
	 when ldr2 =>
		Mem_OE <= '0';
		ld_MDR <= '1';
	 when ldr3 =>
		gateMDR <= '1';
		ld_reg <= '1';
	 when jsr0 =>
		GatePC <= '1';
		ld_reg <= '1';
		DRmUX <= "01";
	 when jsr1 =>
		ld_PC <= '1';
	 when jmp0 =>
		ld_PC <= '1';
		PCMUX <= "10";
    when others =>
      NULL;
  end case;
end process;

Mem_CE   <= '0'; -- Always enable the memory, both bytes (remember, active low!)
Mem_UB   <= '0';
Mem_LB   <= '0';

end Behavioral;