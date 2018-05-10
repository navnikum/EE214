library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;

entity NOT_1 is
	port (a: in std_logic; c : out std_logic);
end entity;

architecture Behave of NOT_1 is
begin
     c <= (not a);
end Behave;
