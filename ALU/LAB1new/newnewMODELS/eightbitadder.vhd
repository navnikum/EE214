library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

package EE224_Components is
   component FA is
	port (a,b,cin : in std_logic;
		s,cout : out std_logic);
   end component;
   component XOR_1 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
end EE224_Components;

--Full Adder---
library ieee;
use ieee.std_logic_1164.all;
entity FA is
	port (a,b,cin : in std_logic;
		s,cout : out std_logic);
end entity FA;
architecture Behave of FA is
	signal w:std_logic;
begin 
     w <= a xor b;
     s <= w xor cin;
     cout <= ((a and cin) or ( b and cin) or (a and b));
end Behave;

--eight bitadder Starts here---

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;

entity eightbitadder is
	port (x,y : in std_logic_vector(7 downto 0); z : out std_logic_vector(7 downto 0));
end entity;

architecture behave of eightbitadder is
	signal w : std_logic_vector( 7 downto 0);
begin
     FA_0: FA port map (x(0) ,y(0),'0' ,z(0),w(0));
     FA_1: FA port map (x(1) ,y(1),w(0),z(1),w(1));
     FA_2: FA port map (x(2) ,y(2),w(1),z(2),w(2)); 
     FA_3: FA port map (x(3) ,y(3),w(2),z(3),w(3));
     FA_4: FA port map (x(4) ,y(4),w(3),z(4),w(4));
     FA_5: FA port map (x(5) ,y(5),w(4),z(5),w(5));
     FA_6: FA port map (x(6) ,y(6),w(5),z(6),w(6));
     FA_7: FA port map (x(7) ,y(7),w(6),z(7),w(7));
end behave;
