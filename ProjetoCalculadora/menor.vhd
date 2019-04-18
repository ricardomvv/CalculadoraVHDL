library ieee;
use ieee.std_logic_1164.all;

entity menor is
port (

A, B: in std_logic_vector (3 downto 0);
S: out std_logic

);
end menor;

architecture archMenor of menor is

component maior is
port
(
	A, B: in std_logic_vector (3 downto 0);
	S: out std_logic		
);
end component;

begin

ME: maior port map (B,A,S);

end archMenor;