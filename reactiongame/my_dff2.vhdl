--
-- A description of a D-flip-flop in VHDL.
-- You can use this building block for describing
-- finite state machines (remember that you will
-- need to declare the component etc..).
-- 
-- 
library ieee;
use ieee.std_logic_1164.all;

entity my_dff2 is
  port (D, clk: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of my_dff2 is
begin 

   process (clk) is 
   begin
	if rising_edge(clk) then
	     Q <= D;
	end if;
   end process;

end WhatDoYouCare;