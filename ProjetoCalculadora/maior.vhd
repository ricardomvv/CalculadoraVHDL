library ieee;
use ieee.std_logic_1164.all;

entity maior is
port (

A, B: in std_logic_vector (3 downto 0);
S: out std_logic


);
end maior;

architecture archMaior of maior is

begin 

S <= (A(3) and not(B(3))) OR
	  ((A(3) xnor B(3)) and A(2) and not(B(2))) OR
	  (((A(3) xnor B(3)) and (A(2) xnor B(2)) and (A(1) and not(B(1) )))) OR
	  (((A(3) xnor B(3)) and (A(2) xnor B(2)) and (A(1) and B(1)) and (A(0) and not(B(0)))));


end archMaior;