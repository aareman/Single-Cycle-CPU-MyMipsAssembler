library ieee;
use ieee.std_logic_1164.all;

entity mux5bit is
	port(in1, in2: in std_logic_vector(4 downto 0);
			choice, choice2: in std_logic;
			output: out std_logic_vector(4 downto 0)
			);
end mux5bit;

architecture arch of mux5bit is
signal IP: std_logic_vector(4 downto 0):= "11111"; -- write enable "should" be disabled when this goes.
	begin
	process (choice)
		
	begin
		if(choice = '0' and choice2 = '0') then
			output <= in1;
		elsif (choice = '1' and choice2 = '0') then
			output <= in2;
		elsif (choice = '0' and choice2 = '1') then	
			output <= IP;
		else
			output <= IP;
		end if;
		
	end process;
end arch;
		