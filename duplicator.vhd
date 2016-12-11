library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity duplicator is     
	port(a: in std_logic_vector(31 downto 0);
			o1: out std_logic_vector(31 downto 0);
			o2: out std_logic_vector(15 downto 0));
			
end duplicator; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of duplicator is 
begin		
	o1 <= a;
	o2 <= a(15 downto 0);
end arch;

