------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;


entity terrorist is
port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
end entity;

architecture terror_detector of terrorist is
signal q: std_logic_vector(2 downto 0) :="000"; 
signal mq: std_logic_vector(2 downto 0) := "000"; 
signal n: std_logic_vector(4 downto 0);
signal t,e,r,o,p0,p1,p2,p3,p4,p5: std_logic;
	component AND_5 is
	port (a, b, c, d, e: in std_logic; o : out std_logic);
        end component;
	component D_FF is
    	port (D, CLK: in std_logic; Q: out std_logic);
        end component;

begin
n(0) <= (not x(0));
n(1) <= (not x(1));
n(2) <= (not x(2));
n(3) <= (not x(3));
n(4) <= (not x(4));
p0 <= (not q(2)) and (not q(1)) and (not q(0));
p1 <= (not q(2)) and (not q(1)) and (q(0));
p2 <= (not q(2)) and (q(1)) and (not q(0));
p3 <= (not q(2)) and (q(1)) and (q(0));
p4 <= (q(2)) and (not q(1)) and (not q(0));
p5 <= (q(2)) and (not q(1)) and (q(0));
mq(0) <= (not rst) and ( (p0 and t) or (p1 and (not e)) or (p2 and r) 
	     or (p3 and (not r)) or (p4 and o) or (p5 and (not r)));
mq(1) <= (not rst) and ( (p1 and e) or p2 or (p3 and (not r)));
mq(2) <= (not rst) and ( (p4) or (p5 and (not r)) or (p3 and r));


An0: AND_5 port map(x(4),n(3),x(2),n(1),n(0),t);           ---t
An1: AND_5 port map(n(4),n(3),x(2),n(1),x(0),e);           ---e
An2: AND_5 port map(x(4),n(3),n(2),x(1),n(0),r);           ---r
An3: AND_5 port map(n(4),x(3),x(2),x(1),x(0),o);           ---o

s <=  ((not rst) and q(2) and (not q(1)) and (r) and q(0));

D0: D_FF port map(mq(0),clk,q(0));
D1: D_FF port map(mq(1),clk,q(1));
D2: D_FF port map(mq(2),clk,q(2));

end terror_detector;



