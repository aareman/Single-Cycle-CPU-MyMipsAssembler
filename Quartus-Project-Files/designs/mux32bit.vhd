library ieee;
use ieee.std_logic_1164.all;

entity mux32bit is
	port(in1, in2: in std_logic_vector(31 downto 0);
			choice: in std_logic;
			output: out std_logic_vector(31 downto 0)
			);
end mux32bit;

architecture arch of mux32bit is
	begin
	process (choice)
	begin
		if(choice = '0') then
			output <= in1;
		else
			output <= in2;
		end if;
	end process;
end arch;
		