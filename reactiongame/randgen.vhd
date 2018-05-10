library std;
use std.standard.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity randgen is
	port (clk,stop : in std_logic;
			output : out std_logic_vector(10 downto 0));
end entity;
architecture struct of randgen is
	
	signal count : unsigned(10 downto 0) := to_unsigned(1000,11);
	constant addthis : unsigned(10 downto 0) := to_unsigned(125,11);
	constant endhere : unsigned(10 downto 0) := to_unsigned(2000,11);
	constant starthere : unsigned(10 downto 0) := to_unsigned(1000,11);

	signal outsig : unsigned(10 downto 0) := to_unsigned(1000,11);
	
begin	
	process(clk,stop) is
	
		begin
			if rising_edge(clk) then 
				count <= count + addthis;
				
				if (count = endhere) then
					count <= starthere;
				end if;
						
				if (stop = '1') then
					outsig <= count;
				end if;
				
			output <= std_logic_vector(outsig);
			end if;
	end process;
	
end struct;