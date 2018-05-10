library ieee;
use ieee.std_logic_1164.all;

entity dff_2 is
  port (D, clk: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of dff_2 is
begin 

   process (clk) is 
   begin
	if rising_edge(clk) then
	     Q <= D;
	end if;
   end process;

end WhatDoYouCare;
