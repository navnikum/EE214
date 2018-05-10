library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity final is
	port (x: in std_logic_vector(7 downto 0); y: out std_logic_vector(1 downto 0));
end entity;

architecture  behave4 of final is	
	component no_of is
	port (x: in std_logic_vector(7 downto 0);
		o,z: out std_logic_vector(3 downto 0));
	end component;
	signal o2,z2:std_logic_vector(3 downto 0);signal g: std_logic_vector(1 downto 0);
begin
	no_of_0: no_of port map(x,o2,z2);
	g(1) <= (not z2(3)) and (not z2(2));
	y(1) <= g(1);
	y(0) <= (not g(1) );
end behave4;
