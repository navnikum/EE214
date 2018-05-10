------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

package EE224_Components is
   component AND_5 is
	port (a, b, c, d, e: in std_logic; o : out std_logic);
   end component;
   component D_FF is
    	port (D, CLK: in std_logic; Q: out std_logic);
   end component;
   
   
end EE224_Components;
library ieee;
use ieee.std_logic_1164.all;
entity AND_5 is
	port (a, b, c, d, e: in std_logic; o : out std_logic);
end entity;
architecture WhatDoYouCar of AND_5 is
begin 
    o <= a and b and c and d and e;
end WhatDoYouCar;
---------------------D Flip Flop------------------------------

library ieee;
use ieee.std_logic_1164.all;
entity D_FF is
    	port (D, CLK: in std_logic; Q: out std_logic);
end entity;
architecture WhatDoYouCare of D_FF is
begin 
   process (CLK) 
   begin
	if CLK'event and (CLK = '1') then
	     Q <= D;
	end if;
   end process;
end WhatDoYouCare;



----------------------------GUNMAN---------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;

entity gunman is
port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
end entity;

architecture gun_detector of gunman is
signal q: std_logic_vector(1 downto 0) :="00"; signal mq: std_logic_vector(1 downto 0) := "00";signal c: std_logic_vector(4 downto 0);
signal G,U,N: std_logic;

begin
c(0) <= (not x(0));
c(1) <= (not x(1));
c(2) <= (not x(2));
c(3) <= (not x(3));
c(4) <= (not x(4));

An0: AND_5 port map(c(4),c(3),x(2),x(1),x(0),G);           ---g
An1: AND_5 port map(x(4),c(3),x(2),c(1),x(0),U);           ---u
An2: AND_5 port map(c(4),x(3),x(2),x(1),c(0),N);           ---n

s <=  ((not rst) and q(1) and (not q(0)) and N);

mq(1) <= ((not rst) and (not q(1)) and q(0) and U) or ((not rst) and q(1) and (not q(0)) and (not N));
mq(0)<= ((not rst) and (not q(1)) and (not q(0)) and G) or ((not rst) and (not q(1)) and q(0) and (not U)) ;

D0: D_FF port map(mq(0),clk,q(0));
D1: D_FF port map(mq(1),clk,q(1));


end gun_detector;



