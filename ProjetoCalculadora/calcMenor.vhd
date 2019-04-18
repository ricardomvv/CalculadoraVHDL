library ieee;
use ieee.std_logic_1164.all;

entity calcMenor is 
port
(

	A, B: in std_logic;
	S : out std_logic
	
);
end calcMenor;

architecture archMenor of calcMenor is
 
 begin 
 
	S <= B and (A xor B);
  
 end archMenor;

