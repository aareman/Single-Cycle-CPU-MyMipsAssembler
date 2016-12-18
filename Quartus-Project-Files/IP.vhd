library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity IP is     
	port (CLK: in std_logic;
			DIN: in std_logic_vector(4 downto 0);
			DOUT: out std_logic_vector(4 downto 0));    -- clock and reset 
end IP; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of IP is 
	signal temp: std_logic_vector(4 downto 0):= "00000";
	signal temp1: std_logic_vector(4 downto 0);
	begin
	process(CLK)
	
	begin
		
		if(rising_edge(CLK)) then
			DOUT <= DIN;
		end if;
	end process;
end arch;

