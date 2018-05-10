library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity debouncer is
	port (x : in std_logic;
			clk,reset : in std_logic;
			output : out std_logic);
end entity;
architecture arch of debouncer is	
	signal q,nq : std_logic_vector(1 downto 0);	
	component my_dff2 is
		port( clk : in std_logic;
				D: in std_logic;
				Q : out std_logic);
	end component;
	component counter is
		port (o : out std_logic;
				i,reset : in std_logic);
	end component;
	signal my_clk: std_logic;
begin	
	c: counter port map(reset=>reset, i=>clk, o=>my_clk);

	nq(0) <= x and not reset;
	nq(1)<= ((q(0) and q(1)) or (x and q(1) and not q(0)) or (x and not q(1) and q(0))) and not reset;
	output<= ((q(0) and q(1)) or (x and q(1) and not q(0)) or (x and not q(1) and q(0))) and not reset;
	
	D1: my_dff2 port map( D => nq(1), Q => q(1), clk =>my_clk );
	D0: my_dff2 port map( D => nq(0), Q => q(0), clk =>my_clk );

--	badout<=x;
	
end arch;