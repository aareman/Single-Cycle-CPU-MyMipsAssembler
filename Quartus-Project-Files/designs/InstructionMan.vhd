library ieee; 
use ieee.std_logic_1164.all; 

--This module reads the instruction, determines if it is r, i, or j format.
--Then it sets the appropriate mux signals
entity InstructionMan is     
	port (opCode: in std_logic_vector(5 downto 0);
			ctrl1, ctrl2: out std_logic);    -- clock and reset 
end InstructionMan; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of InstructionMan is 
	begin
		process(opCode)
		begin
			if(opCode <= "010000") then
				--R-type
				ctrl1 <= '0';
				ctrl2 <= '0';
			elsif (opCode <= "011111") then
				--I-type
				ctrl1 <= '1';
				ctrl2 <= '0';
			else 
				--J-type
				ctrl1 <= '0';
				ctrl2 <= '1';
			end if;
		end process;
end arch;

