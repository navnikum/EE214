library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
port (A:in std_logic;
	B: in std_logic;
	sum : out std_logic;
	carry : out std_logic);
	end entity;
	
architecture struc of HA is
component xor_2 is
port (A:in std_logic;
	B: in std_logic;
	C : out std_logic);
	end component;
	signal axorb : std_logic;
begin
A1: xor_2 port map (A, B, sum);
carry <= A and B;
end struc;