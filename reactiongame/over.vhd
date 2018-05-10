library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity over is
	port (React,Reset,led : in std_logic;
			reactcount,ledcount : out std_logic_vector(3 downto 0));
end entity;
architecture behave of over is

begin
process(React, Reset, led)
	variable over_sig : std_logic := '0';
	variable reactcount_var,ledcount_var : integer := 0;
	begin

	if(rising_edge(React)) then
		reactcount_var := reactcount_var+1;
--		reactcount<=std_logic_vector(to_unsigned(reactcount_var/2,4));
	end if;
	
	if(rising_edge(led)) then
		ledcount_var:=ledcount_var+1;
--		ledcount<=std_logic_vector(to_unsigned(ledcount_var,4));
	end if;
	
	if (Reset = '1') then
		reactcount_var:=0;
		ledcount_var:=0;
	else
		reactcount<=std_logic_vector(to_unsigned(reactcount_var,4));
		ledcount<=std_logic_vector(to_unsigned(ledcount_var,4));
	end if;
	
end process;
end behave;