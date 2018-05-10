
library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity stringrec is 
	port(x: in std_logic_vector(4 downto 0);rt, ck: in std_logic;v: out std_logic_vector(0 downto 0));
end entity;

architecture behave of stringrec is 
signal v1,v2,v3,v4: std_logic;

	component bomber is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
	end component;
	
	component knife is
	port(x: in std_logic_vector(4 downto 0); rst,clk: in std_logic; s: out std_logic);
	end component;

	component terrorist is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
	end component;
	
	component gunman is
	port(x: in std_logic_vector(4 downto 0);rst, clk: in std_logic;s: out std_logic);
	end component;
-----------------------------------------------			
begin 
a: gunman  port map(x(4 downto 0),rt,ck,v1);
b: bomber  port map(x(4 downto 0),rt,ck,v2);
c: knife   port map(x(4 downto 0),rt,ck,v3);
d: terrorist  port map(x(4 downto 0),rt,ck,v4);
v(0) <= v1 or v2 or v3 or v4;
end behave;

