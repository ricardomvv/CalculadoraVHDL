library ieee;
use ieee.std_logic_1164.all;

entity calculadora is 
port (

	x1, x2: in std_logic_vector (3 downto 0);
	s2,s1,s0: in std_logic;
	LD: in std_logic;
	C_out: out std_logic;
	display: out std_logic_vector (6 downto 0)
	
	);
	end calculadora;
	
architecture archCalculadora of calculadora is

component inverte is
	port
(

	x: in std_logic_vector (3 downto 0);
	s: out std_logic_vector ( 3 downto 0)
	
);
end component;

component maior is
port (

A, B: in std_logic_vector (3 downto 0);
S: out std_logic


);
end component;

component menor is
port (

A, B: in std_logic_vector (3 downto 0);
S: out std_logic

);
end component;

component soma is
port
	(
		A, B : in std_logic_vector(3 downto 0);
		Ci: in std_logic;
		Co: out std_logic;
		saida : out std_logic_vector (3 downto 0)
		
	); 
end component;

component subtracao is
port 
	(

		x, y: in std_logic_vector (3 downto 0);
		Bi: in std_logic;
		Bo: out std_logic;
		Dif : out std_logic_vector (3 downto 0)


	);
end component;


component multiplexador is

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
		
end component;

component conversorDisplay is

	port(
  
  I      : in std_logic_vector(3 downto 0);
  CTRL   : in std_logic_vector (1 downto 0);
  display: out std_logic_vector(6 downto 0)
 
 );

end component;

signal sig_soma, sig_subtracao, sig_maior, sig_menor: std_logic;
signal vsoma,  vsubtracao, vinverte: std_logic_vector (3 downto 0);
signal sig_y: std_logic_vector (3 downto 0);
signal sig_ctrl: std_logic_vector (1 downto 0);

begin

	SO: soma port map (A => x1, B => x2, Ci => '0', Co => sig_soma, saida => vsoma);
	SB: subtracao port map (x => x1, y => x2, Bi => '0', Bo => sig_subtracao, Dif => vsubtracao);
	IV: inverte port map (x => x1, s => vinverte);
	MA: maior port map (A => x1, B => x2, S => sig_maior);
	ME: menor port map (A => x1, B => x2, S => sig_menor);
	MTP: multiplexador port map( vsoma, vsubtracao, sig_maior,sig_menor, vinverte, sig_soma, sig_subtracao, LD, s0, s1, s2, sig_y, sig_ctrl, C_out);
	
	
	CVR: conversorDisplay port map (sig_y, sig_ctrl, display);
	
end archCalculadora;
				




	