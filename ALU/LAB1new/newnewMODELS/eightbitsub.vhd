
library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

package EE224_Components1 is
   component FD is
	port (m,n,bin : in std_logic;
		d,bout : out std_logic);
   end component;
   component XOR_1 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
end EE224_Components1;


library ieee;
use ieee.std_logic_1164.all;

--Full Subtractor---
library ieee;
use ieee.std_logic_1164.all;
entity FD is
	port (m,n,bin : in std_logic;
		d,bout : out std_logic);
end entity FD;
architecture Behave of FD is
	signal w:std_logic;
begin 
     w <= m xor n;
     d <= w xor bin;
     bout <= (((not m) and n) or ((not(m xor n)) and bin));
end Behave;

--eight bitsubtractor Starts here---

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components1.all;

entity eightbitsub is
	port (x,y : in std_logic_vector(7 downto 0); z : out std_logic_vector(7 downto 0));
end entity;

architecture behave of eightbitsub is
	signal w : std_logic_vector( 7 downto 0);
begin
     FD_1: FD port map (x(0) ,y(0) ,'0'  ,z(0) ,w(0));
     FD_1: FD port map (x(1) ,y(1) ,w(0) ,z(1) ,w(1));
     FD_2: FD port map (x(2) ,y(2) ,w(1) ,z(2) ,w(2)); 
     FD_3: FD port map (x(3) ,y(3) ,w(2) ,z(3) ,w(3));
     FD_4: FD port map (x(4) ,y(4) ,w(3) ,z(4) ,w(4));
     FD_5: FD port map (x(5) ,y(5) ,w(4) ,z(5) ,w(5));
     FD_6: FD port map (x(6) ,y(6) ,w(5) ,z(6) ,w(6));
     FD_7: FD port map (x(7) ,y(7) ,w(6) ,z(7) ,w(7));
end behave;
