library ieee; 
use ieee.std_logic_1164.all; 

entity enable is     
	port (a:in std_logic_vector(31 downto 0);
				EN: in std_logic;
				CLK:in std_logic;
				b:out std_logic_vector(31 downto 0));    -- clock and reset 
end enable; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of enable is 
	begin  
	-- SIMPLE     
process (CLK)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	if (EN = '1') then
		b <= a;
	-- If not resetting, update the register output on the clock's rising edge
	end if;
end process;

end arch;

