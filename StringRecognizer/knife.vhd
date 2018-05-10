------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
entity knife is
port(x: in std_logic_vector(4 downto 0); rst,clk: in std_logic; s: out std_logic);
end entity;

architecture KNIFE_detector of knife is
signal q: std_logic_vector(2 downto 0) :="000"; 
signal mq: std_logic_vector(2 downto 0) := "000";
signal c: std_logic_vector(4 downto 0);
signal K,N,I,F,E,p0,p1,p2,p3,p4: std_logic;
   component AND_5 is
	port (a, b, c, d, e: in std_logic; o : out std_logic);
   end component;
	component D_FF is
    	port (D, CLK: in std_logic; Q: out std_logic);
   end component;

begin
c(0) <= (not x(0));
c(1) <= (not x(1));
c(2) <= (not x(2));
c(3) <= (not x(3));
c(4) <= (not x(4));


An0: AND_5 port map(c(4),x(3),c(2),x(1),x(0),K);           ---k
An1: AND_5 port map(c(4),x(3),x(2),x(1),c(0),N);           ---n
An2: AND_5 port map(c(4),x(3),c(2),c(1),x(0),I);           ---i
An3: AND_5 port map(c(4),c(3),x(2),x(1),c(0),F);           ---f
An4: AND_5 port map(c(4),c(3),x(2),c(1),x(0),E);           ---e
p0 <= (not q(2)) and (not q(1)) and (not q(0));
p1 <= (not q(2)) and (not q(1)) and (q(0));
p2 <= (not q(2)) and (q(1)) and (not q(0));
p3 <= (q(2)) and (not q(1)) and (not q(0));
p4 <= (not q(2)) and (q(1)) and (q(0));
mq(0) <= (not rst) and ((p0 and K) or (p1 and (not N)) or (p2 and I) or (p4 and (not F)));
mq(1) <= (not rst) and ((p4 and (not F)) or p2 or (p1 and N));
mq(2) <= (not rst) and ((p4 and F) or (p3 and (not E)));

s <=  ((not rst) and q(2) and (not q(1)) and (not q(0)) and E);

D0: D_FF port map(mq(0),clk,q(0));
D1: D_FF port map(mq(1),clk,q(1));
D2: D_FF port map(mq(2),clk,q(2));


end KNIFE_detector;





