library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is 
port (
			A,B: in std_logic_vector (3 downto 0);
			C,D: in std_logic; 
			E: in std_logic_vector (3 downto 0);
			CS, BS, LD: in std_logic;
			s0, s1, s2: in std_logic;
			Y: out std_logic_vector (3 downto 0);
			CTRL: out std_logic_vector (1 downto 0);
			C_out: out std_logic
		
		);
end multiplexador;

architecture archMultiplexador of multiplexador is
signal sig_A, sig_B, sig_C, sig_D, sig_E: std_logic;

begin

	Y(0) <= (LD and (not s0 and not s1 and not s2) and (A(0))) or (LD and (s0 and not s1 and not s2) and (B(0))) or (LD and (s0 and s1 and s2) and (E(0)));
	Y(1) <= (LD and (not s0 and not s1 and not s2) and (A(1))) or (LD and (s0 and not s1 and not s2) and (B(1))) or (lD and (s0 and s1 and s2) and (E(1)));
	Y(2) <= (LD and (not s0 and not s1 and not s2) and (A(2))) or (LD and (s0 and not s1 and not s2) and (B(2))) or (LD and (s0 and s1 and s2) and (E(2)));
	Y(3) <= (LD and (not s0 and not s1 and not s2) and (A(3))) or (LD and (s0 and not s1 and not s2) and (B(3))) or (LD and (s0 and s1 and s2) and (E(3)));
	
	
	C_out <= (LD and (not(s0) and not(s1) and not(s2)) and CS) or (LD and ((s0) and not(s1) and not(s2)) and BS) or (LD and (not(s0) and (s1) and not(s2)) and C) or (LD and (not(s0) and not(s1) and (s2) and D));

			
			CTRL(0) <=(BS and (s0 and not s1 and not s2))or  
	          (s0 and ((s1 and not s2) or (not s1 and s2))) or 
				 (not s0 and s1 and s2);   
				 
			CTRL(1) <= (not(LD)) or (not(s0) and (s1) and not(s2)) or ((not(s0)) and not(s1) and (s2));
				
	end archMultiplexador;