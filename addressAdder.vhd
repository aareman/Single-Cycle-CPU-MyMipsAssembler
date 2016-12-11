library ieee; 
use ieee.std_logic_1164.all; 
use IEEE.numeric_std.all;
--use IEEE.STD_LOGIC_ARITH.ALL;
 

entity adder is     
	port (true, EN, CLK: in std_logic;
			immidiate: in std_logic_vector(31 downto 0);
			newAddress: out std_logic_vector(4 downto 0);
			oldAddress: in std_logic_vector(4 downto 0));    -- clock and reset 
end adder; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of adder is 
	signal t1: std_logic_vector(4 downto 0);
	begin
	process(CLK)	
	begin
	--if(EN = '1') then
	if(rising_edge(CLK)) then
		if(true = '1') then
			t1 <= std_logic_vector(to_unsigned(to_integer(unsigned(oldAddress)) + to_integer(signed(immidiate(4 downto 0))),5));
			newAddress <= t1(4 downto 0);				
		else
			newAddress <= std_logic_vector(unsigned(oldAddress) + 1);
		end if;
	end if;
	--else
	--	newAddress <= oldAddress;		
	--end if;
	end process;
end arch;

