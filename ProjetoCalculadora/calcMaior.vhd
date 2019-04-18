library ieee;
use ieee.std_logic_1164.all;

entity calcMaior is 
port
(

	A, B: in std_logic;
	S : out std_logic
	
);
end calcMaior;

architecture archMaior of calcMaior is

begin 
	 
	 S <= A and (A xor B);
	 
end archMaior;

