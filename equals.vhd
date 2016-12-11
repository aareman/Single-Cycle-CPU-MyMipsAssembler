library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity equals is     
	port(a,b:in std_logic_vector(31 downto 0);
			a0,b0:out std_logic_vector(31 downto 0);
			TRUE: out std_logic);			
end equals; 

architecture arch of equals is 
begin		
	a0 <= a;
	b0 <= b;
	TRUE <= '1' when (a=b);
end arch;

