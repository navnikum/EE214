library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity Div_2 is
  port (clk,rst: in std_logic; Y: out std_logic);
end entity;

architecture WhatDoYouCare of Div_2 is
	component D_FF1 is
  		port (D, CLK,rst: in std_logic; Q: out std_logic);
	end component;
	signal a: std_logic := '0';signal b: std_logic;
begin 
	DF_0: D_FF1 port map(a,clk,b);
	a <= b;
	Y <= b;
		
end WhatDoYouCare;
