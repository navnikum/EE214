library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components2 is
   component MUX4 is
	port (a,s,r,l,p,q : in std_logic;
		 o : out std_logic);
   end component;
   component MUX21 is
	port (a,b,n : in std_logic;
		 o : out std_logic);
   end component;
end EE224_Components2;



library ieee;
use ieee.std_logic_1164.all;
entity MUX21 is
	port (a,b,n : in std_logic;
		 o : out std_logic);
end entity MUX21;
architecture Behave of MUX21 is
begin
     o <= (((not n) and a) or (n and b));
end Behave;
library ieee;
use ieee.std_logic_1164.all;
entity MUX4 is
	port (a,s,r,l,p,q : in std_logic;
		 o : out std_logic);
end entity MUX4;
architecture Behave of MUX4 is
begin
     o <= (((not p) and (not q) and a ) or ((not p) and (q) and s ) or ((p) and (not q) and r ) or (( p) and ( q) and l ));
end Behave;



--Parallel Shift left  Starts here---

library ieee;
use ieee.std_logic_1164.all;
library work;
-- package of component declarations..
use work.EE224_Components2.all;





entity rightshift is
	port ( x,y : in std_logic_vector(7 downto 0); z : out std_logic_vector(7 downto 0));
end entity;

architecture behave of rightshift is
	signal w,s,c : std_logic_vector(7 downto 0);
	signal p : std_logic;
begin
	p <= (y(7) or y(6) or y(5) or y(4) or y(3)); 

	MUX2_3a: MUX21 port map ( a =>x(0) , b => '0' , n =>p  , o =>c(0) );
	MUX2_3b: MUX21 port map ( a =>x(1) , b => '0' , n =>p  , o =>c(1) );
	MUX2_3c: MUX21 port map ( a =>x(2) , b => '0' , n =>p  , o =>c(2) );
	MUX2_3d: MUX21 port map ( a =>x(3) , b => '0' , n =>p  , o =>c(3) );
	MUX2_3e: MUX21 port map ( a =>x(4) , b => '0' , n =>p  , o =>c(4) );	
	MUX2_3f: MUX21 port map ( a =>x(5) , b => '0' , n =>p  , o =>c(5) );
	MUX2_3g: MUX21 port map ( a =>x(6) , b => '0' , n =>p  , o =>c(6) );
	MUX2_3h: MUX21 port map ( a =>x(7) , b => '0' , n =>p  , o =>c(7) );
-------------------------------------------------------------------------------------
	MUX2_2a: MUX21 port map ( a =>c(0) , b =>c(4) , n =>y(2)  , o =>w(0) );
	MUX2_2b: MUX21 port map ( a =>c(1) , b =>c(5) , n =>y(2)  , o =>w(1) );
	MUX2_2c: MUX21 port map ( a =>c(2) , b =>c(6) , n =>y(2)  , o =>w(2) );
	MUX2_2d: MUX21 port map ( a =>c(3) , b =>c(7) , n =>y(2)  , o =>w(3) );
	MUX2_2e: MUX21 port map ( a =>c(4) , b => '0' , n =>y(2)  , o =>w(4) );	
	MUX2_2f: MUX21 port map ( a =>c(5) , b => '0' , n =>y(2)  , o =>w(5) );
	MUX2_2g: MUX21 port map ( a =>c(6) , b => '0' , n =>y(2)  , o =>w(6) );
	MUX2_2h: MUX21 port map ( a =>c(7) , b => '0' , n =>y(2)  , o =>w(7) );
---------------------------------------------------------------------------------
	MUX2_1a: MUX21 port map ( a =>w(0) , b =>w(2) , n =>y(1)  , o =>s(0) );
	MUX2_1b: MUX21 port map ( a =>w(1) , b =>w(3) , n =>y(1)  , o =>s(1) );
	MUX2_1c: MUX21 port map ( a =>w(2) , b =>w(4) , n =>y(1)  , o =>s(2) );
	MUX2_1d: MUX21 port map ( a =>w(3) , b =>w(5) , n =>y(1)  , o =>s(3) );
	MUX2_1e: MUX21 port map ( a =>w(4) , b =>w(6) , n =>y(1)  , o =>s(4) );	
	MUX2_1f: MUX21 port map ( a =>w(5) , b =>w(7) , n =>y(1)  , o =>s(5) );
	MUX2_1g: MUX21 port map ( a =>w(6) , b => '0' , n =>y(1)  , o =>s(6) );
	MUX2_1h: MUX21 port map ( a =>w(7) , b => '0' , n =>y(1)  , o =>s(7) );
----------------1------------------------------------------------------------------
	MUX2_0a: MUX21 port map ( a =>s(0) , b =>s(1) , n =>y(0)  , o =>z(0) );
	MUX2_0b: MUX21 port map ( a =>s(1) , b =>s(2) , n =>y(0)  , o =>z(1) );
	MUX2_0c: MUX21 port map ( a =>s(2) , b =>s(3) , n =>y(0)  , o =>z(2) );
	MUX2_0d: MUX21 port map ( a =>s(3) , b =>s(4) , n =>y(0)  , o =>z(3) );
	MUX2_0e: MUX21 port map ( a =>s(4) , b =>s(5) , n =>y(0)  , o =>z(4) );	
	MUX2_0f: MUX21 port map ( a =>s(5) , b =>s(6) , n =>y(0)  , o =>z(5) );
	MUX2_0g: MUX21 port map ( a =>s(6) , b =>s(7) , n =>y(0)  , o =>z(6) );
	MUX2_0h: MUX21 port map ( a =>s(7) , b => '0' , n =>y(0)  , o =>z(7) );
----------------------------------------------------------------------------------
end behave;
