library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
	port(A, B : in std_logic_vector(15 downto 0);
			ALK : in std_logic_vector(1 downto 0);
			F : out std_logic_vector(15 downto 0));
end entity;

architecture behavioral of alu is
begin
	process(alk)
	begin
		case alk is
			when "00" =>
				F <= A + B;
			when "01" =>
				F <= A and B;
			when "10" =>
				F <= not(A);
			when "11" =>
				f <= A;
		end case;
	end process;
end behavioral;