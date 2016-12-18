library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use  ieee.std_logic_arith.all;  
use  ieee.std_logic_signed.all;

entity combinerator is
	port(a1,a2,a3,a4: in std_logic_vector(7 downto 0);
			result: out std_logic_vector(31 downto 0)
			);
end combinerator;

architecture rtl of combinerator is
begin
		result(7 downto 0) <= a1;
		result(15 downto 8) <= a2;
		result(23 downto 16) <= a3;
		result(31 downto 24) <= a4;
end rtl;
