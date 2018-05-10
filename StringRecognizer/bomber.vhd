------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity bomber is
port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
end entity;

architecture bomb_detector of bomber is
signal q: std_logic_vector(1 downto 0) :="00"; 
signal mq: std_logic_vector(1 downto 0) := "00";
signal n: std_logic_vector(4 downto 0);
signal b,e,m,p0,p1,p2,p3: std_logic;
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
p0 <= (not q(1)) and (not q(0)); 
p1 <= (not q(1)) and (q(0)); 
p2 <= (q(1)) and (not q(0)); 
p3 <= (q(1)) and (q(0));

An0: AND_5 port map(n(4),n(3),n(2),x(1),n(0),b);           ---b
An1: AND_5 port map(n(4),x(3),x(2),x(1),x(0),e);     ---o
An2: AND_5 port map(n(4),x(3),x(2),n(1),x(0),m);        ---m
mq(1) <= (not rst) and  ((p1 and e) or (p2) or (p3 and (not b)));
mq(0) <= (not rst) and  ((p0 and b) or (p1 and (not e)) or (p2 and m) or (p3 and (not b)));


s <=  ((not rst) and p3 and b);


D0: D_FF port map(mq(0),clk,q(0));
D1: D_FF port map(mq(1),clk,q(1));


end bomb_detector;











