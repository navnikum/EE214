library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity AND_1 is
	port (a, b: in std_logic; c : out std_logic);
end entity;

architecture Behave of AND_1 is
begin
     c <= a and b;
end Behave;
