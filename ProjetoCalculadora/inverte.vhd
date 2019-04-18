library ieee;
use ieee.std_logic_1164.all;

entity inverte is 
port
(

	x: in std_logic_vector (3 downto 0);
	s: out std_logic_vector ( 3 downto 0)
	
);
end inverte;

architecture archInverte of inverte is

component inversor is
port 
(

	x: in std_logic;
	s: out std_logic
	
);

end component;

begin

S0: inversor port map (x(0),s(0)); 
S1: inversor port map (x(1),s(1));
S2: inversor port map (x(2),s(2));
S3: inversor port map (x(3),s(3));

end archInverte;
