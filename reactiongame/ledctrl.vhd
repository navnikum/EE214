library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ledctrl is
	port (sclk,react,rst : in std_logic;
			random : in std_logic_vector(10 downto 0);
			toled : out std_logic);
end entity;
architecture Behave of ledctrl is

signal random_sig : unsigned(10 downto 0);
signal count : unsigned(12 downto 0) := to_unsigned(0,13);
constant starthere : unsigned(12 downto 0) := to_unsigned(0,13);

signal ledsig : std_logic := '0';
--signal over_sig : std_logic := '0';
begin
	process(sclk,react,rst,random)
	
	begin
	if rising_edge(sclk) then
	count <= count+1;
	
	if (rst = '1') then
		count <= starthere;
		ledsig <= '0';
--		over_sig <= '0';
	end if;
	
	random_sig <= unsigned(random);
	if (count = random_sig) then
		ledsig <= '1';
	end if;
	
--	if (count > 200 and count < random_sig and react = '1') then
--		over_sig <= '1';
--	end if;
	
	if (react = '1') then
		ledsig <= '0';
	end if;
	
	toled <= ledsig;
--	over <= over_sig;
	end if;
	end process;
end Behave;	