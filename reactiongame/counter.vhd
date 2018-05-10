library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity c2 is
	port (o : out std_logic;
			i,reset : in std_logic);
end entity;
architecture struct1 of c2 is
	component my_dff is
		port (D, reset, clk: in std_logic; Q,Qbar: out std_logic);
	end component;
	signal nq : std_logic;
begin
	D : my_dff port map(D=>nq, reset=>reset, clk=>i, Q=>o, Qbar=>nq);

end struct1;



library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity c16 is
	port (o : out std_logic;
			i,reset : in std_logic);
end entity;
architecture struct2 of c16 is
	component c2 is
		port (o : out std_logic;
				i,reset : in std_logic);
	end component;
	signal x1,x2,x3 : std_logic;
begin
	T1 : c2 port map (i => i, o => x1, reset=>reset);
	T2 : c2 port map (i => x1, o => x2, reset=>reset);
	T3 : c2 port map (i => x2, o => x3, reset=>reset);
	T4 : c2 port map (i => x3, o => o, reset=>reset);
end struct2;



library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity counter is
	port (o : out std_logic;
			i,reset : in std_logic);
end entity;
architecture struct3 of counter is
	component c2 is
		port (o : out std_logic;
				i,reset : in std_logic);
	end component;
	component c16 is
		port (o : out std_logic;
				i,reset : in std_logic);
	end component;
	signal x1,x2,x3,x4,x5 : std_logic;
begin
	S1 : c16 port map (i => i, o => x1 ,reset=>reset);
	S2 : c16 port map (i => x1, o => x2 ,reset=>reset);
	S3 : c16 port map (i => x2, o => x3 ,reset=>reset);
	S4 : c16 port map (i => x3, o => x4 ,reset=>reset);
	T1 : c2 port map (i => x4, o => x5 ,reset=>reset);
	T2 : c2 port map (i => x5, o => o ,reset=>reset);
--	T3 : c2 port map (i => x6, o => o ,reset=>reset);
end struct3;
