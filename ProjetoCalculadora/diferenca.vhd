library ieee;
use ieee.std_logic_1164.all;

entity diferenca is 
port 
(

	x, y: in std_logic;
	Bi : in std_logic;
	Bo : out std_logic;
	Dif : out std_logic

);
end diferenca;

architecture archDiferenca of diferenca is

begin 

Dif <= x xor y xor Bi ;
Bo <= (Bi and not(x or y)) or (not(x) and y);

end archDiferenca;
