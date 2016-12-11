library ieee; 
use ieee.std_logic_1164.all; 

entity forcer is     
	port (ONE, ZERO, Zimp: out std_logic;
			ZimpL: out std_logic_vector(31 downto 0));    -- clock and reset 
end forcer; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of forcer is 
	begin
	ONE <= '1';
	ZERO <= '0';
	Zimp <= 'Z';
	ZimpL <= (others=>'Z');
	
end arch;

