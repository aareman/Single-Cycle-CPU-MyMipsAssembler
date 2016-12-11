library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity ALU is     
	port(a, b: in std_logic_vector(31 downto 0);
			op: in std_logic_vector(5 downto 0);
			CLK: in std_logic;
			output: out std_logic_vector(31 downto 0);
			true: out std_logic);
			
end ALU; 
	-- purpose: Main 	architecture details for SIMPREG 
architecture arch of ALU is 
	signal temp: std_logic_vector(31 downto 0);
	begin  
	-- SIMPLE     
	
--	++++++++++++++++++++
--Opcode list
--++++++++++++++++++++


		process(CLK)
		begin	
		true <='0';
			case op is
				when "000110" => -- and
				  output <= a AND b;	
				when "000001" => -- or
				  output <= a OR b;	
				when "000010" => --not
				  output <= NOT a;	
				when "000011" => --xor
				  output <= a XOR b;	
				when "000100" => --add
				  --output <= a + b;
				  output <= std_logic_vector(signed(a) + signed(b));
				  --output <= std_logic_vector(unsigned(Output) + 1);
				when "000101" => --sub
				  output <= std_logic_vector(signed(a) - signed(b));
				when "000111" => --multiplication
				  output <= std_logic_vector(signed(a(15 downto 0)) * signed(b(15 downto 0)));
				  
				  
				when "010000" => --andi
				  output <= a AND b;	
				when "010001" => --ori
				  output <= a OR b;	
				when "010010" => --xori
				  output <= a XOR b;	
				when "010011" => --addi
				  output <= std_logic_vector(signed(a) + signed(b));	
				when "010100" => --subi
				  output <= std_logic_vector(signed(a) - signed(b));
				when "010101" => --li
					output <= b;
				when "010110" => --lui
					output <= to_stdlogicvector(to_bitvector(b) sll 16);
				when "010111" => --imul
					output <= std_logic_vector(signed(a(15 downto 0)) * signed(b(15 downto 0)));
					
					
				when "100001" =>
					if(a = b) then
						true <= '1';
					else
						true <= '0';
					end if;
					output <= x"cccccccc";
				when "100010" =>
					if(a = b) then
						true <= '0';
					else
						true <= '1';
					end if;
					output <= x"dddddddd";
				when others => --others
					output <= x"e7707000";
					
end case;
end process;		

end arch;

