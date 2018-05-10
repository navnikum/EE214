library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity D_FFn is
  port (D, CLK: in std_logic; Q : out std_logic);
end entity;

architecture WhatDoYouCare of D_FFn is
begin 

   process (CLK) 
   begin
	if CLK'event and (CLK = '1') then
	     Q <= not D;
	end if;
   end process;

end WhatDoYouCare;
