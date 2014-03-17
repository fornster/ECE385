library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY RegFile IS
   PORT( 
      RESET_L     : IN     std_logic;
      RFMuxout    : IN     std_logic_vector(7 downto 0);
      RegWrite    : IN     std_logic;
      SrcB        : IN     std_logic_vector(2 downto 0);
      StoreMuxout : IN     std_logic_vector(2 downto 0);
      clk         : IN     std_logic;
      dest        : IN     std_logic_vector(2 downto 0);
      RFAout      : OUT    std_logic_vector(7 downto 0);
      RFBout      : OUT    std_logic_vector(7 downto 0)
   );

-- Declarations

END RegFile ;

ARCHITECTURE UNTITLED OF REGFILE IS
TYPE RAMMEMORY IS ARRAY (7 DOWNTO 0) OF std_logic_vector(7 downto 0);
SIGNAL RAM : RAMMEMORY;
BEGIN
	-------------------------------------------------------------------
	VHDL_REGFILE_READ : PROCESS (RAM, STOREMUXOUT, SRCB)
	-------------------------------------------------------------------
	VARIABLE RADDR1 : INTEGER RANGE 0 TO 7;
	VARIABLE RADDR2 : INTEGER RANGE 0 TO 7;
	BEGIN
		--READ FROM REGFILE, THE OUTPUTS ARE VALID AFTER REGFILE_READ DELAY.
		RADDR1 := TO_INTEGER(UNSIGNED('0' & STOREMUXOUT));
		RADDR2 := TO_INTEGER(UNSIGNED('0' & SRCB));
		RFAOUT <= RAM(RADDR1) AFTER DELAY_REGFILE_READ;
		RFBOUT <= RAM(RADDR2) AFTER DELAY_REGFILE_READ;
	END PROCESS VHDL_REGFILE_READ;
	-------------------------------------------------------------------
	VHDL_REGFILE_WRITE: PROCESS(CLK, RFMUXOUT, REGWRITE, DEST, RESET_L)
	-------------------------------------------------------------------
	VARIABLE WADDR : INTEGER RANGE 0 TO 7;
	BEGIN
		-- ON RESET, CLEAR THE REGISTER FILE CONTENTS
		IF (RESET_L = '0') THEN
			RAM(0) <= "0000000000000000";
			RAM(1) <= "0000000000000000";
			RAM(2) <= "0000000000000000";
			RAM(3) <= "0000000000000000";
			RAM(4) <= "0000000000000000";
			RAM(5) <= "0000000000000000";
			RAM(6) <= "0000000000000000";
			RAM(7) <= "0000000000000000";
		END IF;
		-- WRITE VALUE TO REGISTER FILE ON RISING EDGE OF CLOCK IF REGWRITE ACTIVE
		WADDR := TO_INTEGER(UNSIGNED('0' & DEST));
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (REGWRITE = '1') THEN
				RAM(WADDR) <= RFMUXOUT;
			END IF;
		END IF;
	END PROCESS VHDL_REGFILE_WRITE;
END UNTITLED;