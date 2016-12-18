library ieee; 
use ieee.std_logic_1164.all; 

entity tristateEN is     
	port (DIN : in std_logic_vector(31 downto 0);  -- system inputs           
	DOUT : out std_logic_vector(31 downto 0);  -- system outputs                     
	EN : in std_logic);    -- clock and reset 
end tristateEN; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of tristateEN is 
	begin  
		--DOUT <= DIN when (EN = '1') else (others=>'Z'); 
		process(EN)
		begin
			--DOUT <= (others=>'Z');
			if (falling_edge(EN)) then
				DOUT <= DIN;
			end if;
		end process;

end arch;

