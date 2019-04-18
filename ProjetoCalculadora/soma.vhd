library ieee;
use ieee.std_logic_1164.all;

entity soma is
port
	(
		A, B : in std_logic_vector(3 downto 0);
		Ci: in std_logic;
		Co: out std_logic;
		saida : out std_logic_vector (3 downto 0)
		
	); 
end soma;

architecture archSoma of soma is

component somador is
	port
		(
			Ci, A, B : in std_logic;
			Co, S    : out std_logic
		);

		end component;

signal carry : std_logic_vector(3 downto 0);


begin
	
	S0 : somador port map('0', A(0), B(0), carry(0), saida(0));
	S1 : somador port map(carry(0), A(1), B(1), carry(1), saida(1));
	S2 : somador port map(carry(1), A(2), B(2), carry(2), saida(2));
	S3 : somador port map(carry(2), A(3), B(3), carry(3), saida(3));
	
	Co <= carry(3);
	
	
	
end archSoma;