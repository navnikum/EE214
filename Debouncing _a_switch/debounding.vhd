library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;


entity debounding is
  port (clk1,rst: in std_logic; Y1: out std_logic);
end entity;

architecture WhatDoYouCare of debounding is
	component Div_2 is
  	port (clk,rst: in std_logic; Y: out std_logic);
	end component;
	component D_FF1 is
  		port (D, CLK,rst: in std_logic; Q: out std_logic);
	end component;
	signal p: std_logic_vector(18 downto 0)  := "0000000000000000000";
begin 
	DF_1: Div_2 port map(clk1,rst,p(0));
	DF_2: Div_2 port map(p(0),rst,p(1));
	DF_3: Div_2 port map(p(1),rst,p(2) );
	DF_4: Div_2 port map(p(2),rst,p(3) );
	DF_5: Div_2 port map(p(3),rst,p(4) );
	DF_6: Div_2 port map(p(4),rst,p(5) );
	DF_7: Div_2 port map(p(5),rst,p(6) );
	DF_8: Div_2 port map(p(6),rst,p(7) );
	DF_9: Div_2 port map(p(7),rst,p(8) );
	DF_10: Div_2 port map(p(8),rst,p(9) );
	DF_11: Div_2 port map(p(9),rst,p(10) );
	DF_12: Div_2 port map(p(10),rst,p(11) );
	DF_13: Div_2 port map(p(11),rst,p(12) );
	DF_14: Div_2 port map(p(12),rst,p(13) );
	DF_15: Div_2 port map(p(13),rst,p(14) );
	DF_16: Div_2 port map(p(14),rst,p(15) );
	DF_17: Div_2 port map(p(15),rst,p(16) );
	DF_18: Div_2 port map(p(16),rst,p(17) );	
	DF_19: Div_2 port map(p(17),rst,p(18) );
	Y1 <= p(18);	
end WhatDoYouCare;
