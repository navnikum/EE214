-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
	port(input_vector: in std_logic_vector(2 downto 0);output_vector: out std_logic_vector (0 downto 0));
end entity;


architecture DutWrap of DUT is
	component FSM is
		port(r, x, clk: in std_logic; z: out std_logic);
	end component;
	
---------------------------------------------------------------------------------------------------------------------------
begin
dut: FSM port map( r => input_vector(2), x => input_vector(1), clk =>input_vector(0)  ,z => output_vector(0));
end DutWrap;

