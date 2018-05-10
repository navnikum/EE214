library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
	port (led,sclk,Reset : in std_logic;
			tottime : out std_logic_vector(12 downto 0));
end entity;
architecture behave of timer is
signal rtime_sig : unsigned(12 downto 0) := to_unsigned(0,13);
constant start : unsigned(12 downto 0) := to_unsigned(0,13);

begin
	process(led,sclk)
	begin
	if rising_edge(sclk) then
		if (led='1') then
			rtime_sig <= rtime_sig + 1;
		end if;

		if(Reset = '1') then
			rtime_sig <=  start;
		end if;
		
		tottime <= std_logic_vector(rtime_sig);	

	end if;
	end process;
end behave;
