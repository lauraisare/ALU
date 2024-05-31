library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_test is
	port	(A : in std_logic_vector(7 downto 0);
			 B : in std_logic_vector(7 downto 0);
			 ALU_Sel : in std_logic_vector(2 downto 0);
			 NZVC: out std_logic_vector(3 downto 0);
			 display_result1: out std_logic_vector(6 downto 0);
			 display_result2: out std_logic_vector(6 downto 0);
			 display_b1: out std_logic_vector(6 downto 0);
			 display_b2: out std_logic_vector(6 downto 0));
end ALU_test;


architecture ALU_test_arch of ALU_test is


component ALU 
	port	(
			 A : in std_logic_vector(7 downto 0);
			 B : in std_logic_vector(7 downto 0);
			 ALU_Sel : in std_logic_vector(2 downto 0);
			 ALU_Result : out std_logic_vector(7 downto 0);
			 NZVC: out std_logic_vector(3 downto 0));
end component;

component decoBCD 
	port
	(
		IA	: in std_logic_vector(3 downto 0);
		F:out std_logic_vector(6 downto 0));

end component;

	signal ALU_result1: std_logic_vector(7 downto 4);
	signal ALU_result2: std_logic_vector(3 downto 0);
	signal s_ALU_Result: std_logic_vector(7 downto 0); 
	
	
	
begin

	
	A0: ALU port map (A => A, B => B, ALU_Sel => AlU_Sel, ALU_Result =>s_ALU_Result, NZVC => NZVC);
								
		ALU_result1 <= s_ALU_Result(7 downto 4);
		ALU_result2 <= s_ALU_Result(3 downto 0);
		
		
								
	 A1: decoBCD port map (IA => ALU_result1, F => display_result1);
    A2: decoBCD port map (IA => ALU_result2, F => display_result2);
    A3: decoBCD port map (IA => B(7 downto 4), F => display_b1);
    A4: decoBCD port map (IA => B(3 downto 0), F => display_b2);

	
		
end ALU_test_arch;