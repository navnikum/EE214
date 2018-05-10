library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity D_FF1 is
  port (D, CLK,rst: in std_logic; Q: out std_logic);
end entity;

architecture WhatDoYouCare of D_FF1 is
begin 

   process (CLK,rst) 
   begin
	if rst = '1' then
		Q <= '1';
	elsif CLK'event and (CLK = '1') then
	     	Q <=(not D);
	end if;
	
   end process;

end WhatDoYouCare;
