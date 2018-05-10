library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components3 is
   component MUX4 is
	port (a,s,r,l,p,q : in std_logic;
		 o : out std_logic);
   end component;
   component MUX2 is
	port (a,b,n : in std_logic;
		 o : out std_logic);
   end component;
end EE224_Components3;



library ieee;
use ieee.std_logic_1164.all;
entity MUX2 is
	port (a,b,n : in std_logic;
		 o : out std_logic);
end entity MUX2;
architecture Behave of MUX2 is
begin
     o <= (((not n) and a) or (n and b));
end Behave;
library ieee;
use ieee.std_logic_1164.all;



--Parallel Shift right  Starts here---

library ieee;
use ieee.std_logic_1164.all;
library work;
-- package of component declarations..
use work.EE224_Components3.all;





entity leftshift is
	port ( x,y : in std_logic_vector(7 downto 0);
		z: out std_logic_vector(7 downto 0));
end entity;

architecture behave of leftshift is
	signal w,s,c,j,k : std_logic_vector( 7 downto 0);
	signal p : std_logic;
begin
	j(0) <= x(7); j(1) <= x(6); j(2) <= x(5); j(3) <= x(4); j(4) <= x(3); j(5) <= x(2); j(6) <= x(1); j(7) <= x(0);
	p <= (y(7) or y(6) or y(5) or y(4) or y(3)); 

	MUX2_3a: MUX2 port map ( a =>j(0) , b => '0' , n =>p  , o =>c(0) );
	MUX2_3b: MUX2 port map ( a =>j(1) , b => '0' , n =>p  , o =>c(1) );
	MUX2_3c: MUX2 port map ( a =>j(2) , b => '0' , n =>p  , o =>c(2) );
	MUX2_3d: MUX2 port map ( a =>j(3) , b => '0' , n =>p  , o =>c(3) );
	MUX2_3e: MUX2 port map ( a =>j(4) , b => '0' , n =>p  , o =>c(4) );	
	MUX2_3f: MUX2 port map ( a =>j(5) , b => '0' , n =>p  , o =>c(5) );
	MUX2_3g: MUX2 port map ( a =>j(6) , b => '0' , n =>p  , o =>c(6) );
	MUX2_3h: MUX2 port map ( a =>j(7) , b => '0' , n =>p  , o =>c(7) );
-------------------------------------------------------------------------------------
	MUX2_2a: MUX2 port map ( a =>c(0) , b =>c(4) , n =>y(2)  , o =>w(0) );
	MUX2_2b: MUX2 port map ( a =>c(1) , b =>c(5) , n =>y(2)  , o =>w(1) );
	MUX2_2c: MUX2 port map ( a =>c(2) , b =>c(6) , n =>y(2)  , o =>w(2) );
	MUX2_2d: MUX2 port map ( a =>c(3) , b =>c(7) , n =>y(2)  , o =>w(3) );
	MUX2_2e: MUX2 port map ( a =>c(4) , b => '0' , n =>y(2)  , o =>w(4) );	
	MUX2_2f: MUX2 port map ( a =>c(5) , b => '0' , n =>y(2)  , o =>w(5) );
	MUX2_2g: MUX2 port map ( a =>c(6) , b => '0' , n =>y(2)  , o =>w(6) );
	MUX2_2h: MUX2 port map ( a =>c(7) , b => '0' , n =>y(2)  , o =>w(7) );
---------------------------------------------------------------------------------
	MUX2_1a: MUX2 port map ( a =>w(0) , b =>w(2) , n =>y(1)  , o =>s(0) );
	MUX2_1b: MUX2 port map ( a =>w(1) , b =>w(3) , n =>y(1)  , o =>s(1) );
	MUX2_1c: MUX2 port map ( a =>w(2) , b =>w(4) , n =>y(1)  , o =>s(2) );
	MUX2_1d: MUX2 port map ( a =>w(3) , b =>w(5) , n =>y(1)  , o =>s(3) );
	MUX2_1e: MUX2 port map ( a =>w(4) , b =>w(6) , n =>y(1)  , o =>s(4) );	
	MUX2_1f: MUX2 port map ( a =>w(5) , b =>w(7) , n =>y(1)  , o =>s(5) );
	MUX2_1g: MUX2 port map ( a =>w(6) , b => '0' , n =>y(1)  , o =>s(6) );
	MUX2_1h: MUX2 port map ( a =>w(7) , b => '0' , n =>y(1)  , o =>s(7) );
----------------------------------------------------------------------------------
	MUX2_0a: MUX2 port map ( a =>s(0) , b =>s(1) , n =>y(0)  , o =>k(0) );
	MUX2_0b: MUX2 port map ( a =>s(1) , b =>s(2) , n =>y(0)  , o =>k(1) );
	MUX2_0c: MUX2 port map ( a =>s(2) , b =>s(3) , n =>y(0)  , o =>k(2) );
	MUX2_0d: MUX2 port map ( a =>s(3) , b =>s(4) , n =>y(0)  , o =>k(3) );
	MUX2_0e: MUX2 port map ( a =>s(4) , b =>s(5) , n =>y(0)  , o =>k(4) );	
	MUX2_0f: MUX2 port map ( a =>s(5) , b =>s(6) , n =>y(0)  , o =>k(5) );
	MUX2_0g: MUX2 port map ( a =>s(6) , b =>s(7) , n =>y(0)  , o =>k(6) );
	MUX2_0h: MUX2 port map ( a =>s(7) , b => '0' , n =>y(0)  , o =>k(7) );
----------------------------------------------------------------------------------
	z(0) <= k(7); z(1) <= k(6); z(2) <= k(5); z(3) <= k(4); z(4) <= k(3); z(5) <= k(2); z(6) <= k(1); z(7) <= k(0);
end behave;
