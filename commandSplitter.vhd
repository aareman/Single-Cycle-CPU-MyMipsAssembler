library ieee;
use ieee.std_logic_1164.all;

entity commandSplitter is
	port(in1: in std_logic_vector(31 downto 0);
			p2,p3,p4,p5: out std_logic_vector(4 downto 0);
			p1,p6: out std_logic_vector(5 downto 0)
			);
end commandSplitter;

architecture arch of commandSplitter is
	begin
		p1 <= in1(31 downto 26);
		p2 <= in1(25 downto 21);
		p3 <= in1(20 downto 16);
		p4 <= in1(15 downto 11);
		p5 <= in1(10 downto 6);
		p6 <= in1(5 downto 0);
end arch;
		