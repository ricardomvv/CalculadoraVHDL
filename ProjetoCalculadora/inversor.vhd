library ieee;
use ieee.std_logic_1164.all;

entity inversor is 
port 
(

	x: in std_logic;
	s: out std_logic
	

);
end inversor;

architecture archInversor of inversor is

begin

s <= not(x);

end archInversor;