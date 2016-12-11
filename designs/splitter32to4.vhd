library ieee;
use ieee.std_logic_1164.all;

entity splitter32to8of4 is
	port(INPUT: in std_logic_vector(31 downto 0);
			OUT1,OUT2,OUT3,OUT4,OUT5,OUT6,OUT7,OUT8: out std_logic_vector(3 downto 0));
end splitter32to8of4;

architecture arch of splitter32to8of4 is
	begin
		OUT1 <= INPUT(3 downto 0);
		OUT2 <= INPUT(7 downto 4);
		OUT3 <= INPUT(11 downto 8);
		OUT4 <= INPUT(15 downto 12);
		OUT5 <= INPUT(19 downto 16);
		OUT6 <= INPUT(23 downto 20);
		OUT7 <= INPUT(27 downto 24);
		OUT8 <= INPUT(31 downto 28);

end arch;