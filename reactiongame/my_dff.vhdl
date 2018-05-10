--
-- A description of a D-flip-flop in VHDL.
-- You can use this building block for describing
-- finite state machines (remember that you will
-- need to declare the component etc..).
-- 
-- 
library ieee;
use ieee.std_logic_1164.all;

entity my_dff is
  port (D, clk, reset: in std_logic; Q, Qbar: out std_logic);
end entity;

architecture WhatDoYouCare of my_dff is
begin 

   process (clk) is 
   begin
	if(reset = '1') then
			Q<='0';
			Qbar<='1';	
	else
		if rising_edge(clk) then	 
				Q <= D;
				Qbar<= (not D);
		end if;
	end if;
   end process;

end WhatDoYouCare;
