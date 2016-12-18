--Zero sign extender
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity sExtender is     
	port(input: in std_logic_vector(15 downto 0);
			sign_Extended: out std_logic_vector(31 downto 0));
			
end sExtender; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of sExtender is 
	signal temp0: std_logic_vector(31 downto 0):= "00000000000000000000000000000000";
	signal temp1: std_logic_vector(31 downto 0):= "11111111111111110000000000000000";
	begin 
	
	sign_Extended <= (input or temp0) when (input(15) = '0') else (temp1 or input);
end arch;

