library ieee;
use ieee.std_logic_1164.all;

entity subtracao is 
port 
(

	x, y: in std_logic_vector (3 downto 0);
	Bi: in std_logic;
	Bo: out std_logic;
	Dif : out std_logic_vector (3 downto 0)


);
end subtracao;

architecture archSubtracao of subtracao is

component diferenca is

port 
(

	x, y: in std_logic;
	Bi : in std_logic;
	Bo : out std_logic;
	Dif : out std_logic

);
end component;

signal C : std_logic_vector (3 downto 0);


begin 

SUB0: diferenca port map (x(0), y(0), '0', C(0), Dif(0));
SUB1: diferenca port map (x(1), y(1), C(0), C(1), Dif(1));
SUB2: diferenca port map (x(2), y(2), C(1), C(2), Dif(2));
SUB3: diferenca port map (x(3), y(3), C(2), Bo , Dif(3));

end archSubtracao;


