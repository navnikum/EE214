------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;
---------------------D Flip Flop------------------------------
----------------------------STATES---------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity detect is
port(x: in std_logic;rst, clk: in std_logic;s: out std_logic);
end entity;

architecture detector of detect is
signal q: std_logic_vector(1 downto 0) :="00"; signal mq: std_logic_vector(1 downto 0) := "00";signal clk2: std_logic;
	component Div_2 is
  	port (clk,rst: in std_logic; Y : out std_logic);
	end component;
	component D_FF1 is
  		port (D, CLK,rst: in std_logic; Q : out std_logic);
	end component;
	signal p,k: std_logic_vector(18 downto 0)  := "0000000000000000000";
	component debounding is
  	port (clk1,rst: in std_logic; Y1: out std_logic);
	end component;
	component D_FFn is
  	port (D, CLK: in std_logic; Q : out std_logic);
	end component;

begin
	deb_1: debounding port map(clk,rst,clk2);
s <=((not rst) and x and q(0) and (not q(1))) or ((not rst) and q(1) and (not q(0)));

mq(1) <= ((not rst) and x and q(0) and (not q(1))) or ((not rst) and x and q(1) and (not q(0)));
mq(0)<= ((not rst) and x and (not q(1)) and (not q(0))) or ((not rst) and (not x) and q(1) and (not q(0)));

D0: D_FFn port map(mq(0),clk2,q(0));
D1: D_FFn port map(mq(1),clk2,q(1));
end detector;
