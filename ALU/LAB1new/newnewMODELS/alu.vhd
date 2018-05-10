
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity stringrec is 
	port(x: in std_logic_vector(4 downto 0);rt, ck: in std_logic;v: out std_logic);
end entity;

architecture behave of alu is 

	component bomber is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
	end component;
	
	component knife is
	port(x: in std_logic_vector(4 downto 0); rst,clk: in std_logic; s: out std_logic);
	end component;

	component terrorist is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;z: out std_logic);
	end component;
	
	component gunman is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
	end component;
-----------------------------------------------			
begin 
a: gunman  port map(x(4 down to 0),rt,ck,v);
b: bomber  port map(x(4 down to 0),rt,ck,v);
c: knife   port map(x(4 down to 0),rt,ck,v);
d: terrorist  port map(x(4 down to 0),rt,ck,v);
end behave;

