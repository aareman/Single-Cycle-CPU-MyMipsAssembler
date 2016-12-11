library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
	port(in1, in2: in std_logic_vector(31 downto 0);
			choice: in std_logic;
			output: out std_logic_vector(31 downto 0)
			);
end mux2to1;

architecture arch of mux2to1 is
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
		