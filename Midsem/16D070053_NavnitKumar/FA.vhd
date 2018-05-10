library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
entity FA is
	port (a,b,cin : in std_logic;
		s,cout : out std_logic);
end entity;
architecture Behave2 of FA is
	signal w:std_logic;
begin 
     w <= a xor b;
     s <= w xor cin;
     cout <= ((a and cin) or ( b and cin) or (a and b));
end Behave2;

