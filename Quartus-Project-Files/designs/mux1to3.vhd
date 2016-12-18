library ieee;
use ieee.std_logic_1164.all;

entity muxAdd is
	port(INPUT: in std_logic_vector(4 downto 0);
			choice: in std_logic_vector(1 downto 0);
			mux1, mux2, mux3: out std_logic_vector(4 downto 0));
end muxAdd;

architecture arch of muxAdd is
	begin
	process (choice)
	begin
		if(choice = "00") then
			mux1 <= INPUT;
		elsif (choice = "01") then
			mux2 <= INPUT;	
		elsif (choice = "10") then
			mux3 <= INPUT;
		end if;
	end process;
end arch;
		