
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
	port(input_vector: in std_logic_vector(6 downto 0); output_vector: out std_logic_vector(0 downto 0));
end entity;


architecture DutWrap of DUT is
	component stringrec is
	port(x: in std_logic_vector(4 downto 0);rt, ck: in std_logic;v: out std_logic_vector(0 downto 0));
	end component;
	
---------------------------------------------------------------------------------------------------------------------------
begin
dut: stringrec port map(input_vector(4 downto 0), input_vector(6), input_vector(5), output_vector(0));
end DutWrap;

