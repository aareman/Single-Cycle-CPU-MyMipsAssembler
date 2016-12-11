library ieee; 
use ieee.std_logic_1164.all; 

entity register32 is     
	port (DIN : in std_logic_vector(31 downto 0);  -- system inputs           
	DOUT : out std_logic_vector(31 downto 0);  -- system outputs                     
	CLK,RESET : in std_logic);    -- clock and reset 
end register32; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of register32 is 
	begin  
	-- SIMPLE     
process (CLK, RESET)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	if (RESET = '0') then
		DOUT <= "00000000000000000000000000000000";
	-- If not resetting, update the register output on the clock's rising edge
	elsif (rising_edge(CLK)) then
		DOUT <= DIN;
	end if;
end process;

end arch;

