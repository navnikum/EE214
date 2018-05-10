library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity OR_1 is
	port (a, b: in std_logic; c : out std_logic);
end entity;

architecture Behave of OR_1 is
begin
     c <= a or b;
end Behave;
