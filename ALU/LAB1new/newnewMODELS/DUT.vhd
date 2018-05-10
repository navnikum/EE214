-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  two-bit adder.
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
	port(input_vector: in std_logic_vector(17 downto 0); output_vector: out std_logic_vector (7 downto 0));
end entity;


architecture DutWrap of DUT is
	component eightbitadder is 
		port(x,y:in std_logic_vector(7 downto 0); z:out std_logic_vector(7 downto 0));
	end component;
	
	component eightbitsub is 
		port(x,y:in std_logic_vector(7 downto 0); z:out std_logic_vector(7 downto 0));
	end component;

	component leftshift is 
		port( x,y : in std_logic_vector(7 downto 0);
	      z: out std_logic_vector(7 downto 0));
	end component;
	
	component rightshift is 
		port( x,y : in std_logic_vector(7 downto 0);
	      z: out std_logic_vector(7 downto 0));
	end component;

	component alu is
	port( X,Y : in std_logic_vector(7 downto 0); x0,x1 : in std_logic ; Z : out std_logic_vector(7 downto 0));
	end component;
	
---------------------------------------------------------------------------------------------------------------------------
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
--a: eightbitadder port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector);
--b: leftshift port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); 
--c: rightshift port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); 
--d: eightbitsub port map(x => input_vector(15 downto 8), y =>input_vector(7 downto 0) , z=> output_vector); --- Note: z = x- y
dut: alu port map( X => input_vector(15 downto 8), Y => input_vector(7 downto 0) , x0 => input_vector(16) , x1 => input_vector(17), Z => output_vector);
end DutWrap;

