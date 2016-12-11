library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port(INPUT: in std_logic_vector(7 downto 0);
			choice: in std_logic_vector(1 downto 0);
			mux1, mux2, mux3, mux4: out std_logic_vector(7 downto 0));
end mux;

architecture arch of mux is
	begin
	process (choice)
	begin
		if(choice = "00") then
			mux1 <= INPUT;
		elsif(choice = "01") then
			mux2 <= INPUT;
		elsif(choice = "10") then
			mux3 <= INPUT;
		elsif(choice = "11") then
			mux4 <= INPUT;
		end if;
	end process;
end arch;
		