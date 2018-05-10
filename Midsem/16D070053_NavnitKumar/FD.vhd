
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
entity FD is
	port (m,n,bin : in std_logic;
		d,bout : out std_logic);
end entity;
architecture Behave3 of FD is
	signal w:std_logic;
begin 
     w <= m xor n;
     d <= w xor bin;
     bout <= (((not m) and n) or ((not(m xor n)) and bin));
end Behave3;
