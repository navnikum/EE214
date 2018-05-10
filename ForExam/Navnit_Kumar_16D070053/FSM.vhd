------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity FSM is
port(r, x, clk: in std_logic; z: out std_logic);
end entity;

architecture myarch of FSM is
signal q: std_logic_vector(1 downto 0) :="00"; signal mq,nq: std_logic_vector(1 downto 0) := "00";
signal nr,nx,a,b,c,s,p,k,l,e,ns,np,h,d,f :std_logic;
component AND_1 is
	port (a, b: in std_logic; c : out std_logic);
end component;
component OR_1 is
	port (a, b: in std_logic; c : out std_logic);
end component;
component NOT_1 is
	port (a: in std_logic; c : out std_logic);
end component;
component dff_2 is
  port (D, clk: in std_logic; Q: out std_logic);
end component;
begin
-----calculating not ----
n0: NOT_1 port map(r,nr);
n1: NOT_1 port map(x,nx);
n2: NOT_1 port map(q(0),nq(0));
n3: NOT_1 port map(q(1),nq(1));
-----determining state a,b,or c----
An0: AND_1 port map(nq(0),nq(1),a);
An1: AND_1 port map(q(0),q(1),b);
An2: AND_1 port map(nq(0),q(1),c);
------Generating expression for nq1----
An3: AND_1 port map(x,c,s);
An4: AND_1 port map(nx,b,p);
R0: OR_1 port map(p,s,k);
R1: OR_1 port map(a,k,d);
An5: AND_1 port map(d,nr,mq(1));

------Generating expression for nq0----
An6: AND_1 port map(nx,a,l);
R2: OR_1 port map(l,s,e);
An10: AND_1 port map(e,nr,mq(0));

------Generating expression for z------
An7: AND_1 port map(nx,c,ns);
An8: AND_1 port map(x,b,np);
R4: OR_1 port map(ns,np,f);
An9: AND_1 port map(f,nr,h);
z <= h;

-----D flip-flop--------------------
D0: dff_2 port map(mq(0),clk,q(0));
D1: dff_2 port map(mq(1),clk,q(1));

end myarch;
