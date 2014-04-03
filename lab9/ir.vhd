library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IR is
	port(instr : in std_logic_vector(15 downto 0);
			ldIR, clk, reset : in std_logic;
			ir5 : out std_logic;
			dest, srcA, srcb : out std_logic_vector(2 downto 0);
			opCode : out std_logic_vector(3 downto 0);
			imm5, sext6, sext9, sext11 : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of IR is
signal internal : std_logic_vector(15 downto 0);
begin
	writeIR : process(clk, reset, ldIR)
	begin
		if(reset = '1') then 
			internal <= "0000000000000000";
		elsif(rising_edge(clk) and ldIR = '1') then
			internal <= instr;
		end if;
	end process;
	
	opCode <= internal(15 downto 12); -- opcode
	ir5 <= internal(5);
	dest <= internal(11 downto 9);
	srcA <= internal(8 downto 6);
	srcb <= internal(2 downto 0);
	sext6 <= internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5) & internal(5 downto 0);
	sext9 <= internal(8) & internal(8) & internal(8) & internal(8) & internal(8) & internal(8) & internal(8) & internal(8 downto 0);
	sext11 <= internal(10) & internal(10) & internal(10) & internal(10) & internal(10) & internal(10 downto 0);
	imm5 <= internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4) & internal(4 downto 0);
end behavioral;