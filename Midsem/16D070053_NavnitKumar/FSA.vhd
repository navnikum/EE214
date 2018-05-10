library ieee;
use ieee.std_logic_1164.all;
library std;
use std.standard.all;

entity FSA is
	port (x: in std_logic_vector(3 downto 0);
		o: out std_logic_vector(2 downto 0));
end entity ;
architecture Behave1 of FSA is
	component FA is
	port (a,b,cin : in std_logic; s,cout : out std_logic);
	end component;
	signal s,s1,s2:std_logic_vector(1 downto 0);signal e,f,c,d: std_logic;
begin 
	FA_0: FA port map (x(1) ,x(0),'0' ,s(0),s(1));
----------------------------------------------------------
	FA_1a: FA port map (x(2),s(0),'0' ,s1(0),e);
	FA_2a: FA port map ('0' ,s(1),e ,s1(1),f);
-----------------------------------------------------------
	FA_1b: FA port map (s1(0) ,x(3),'0' ,s2(0),c);
	FA_2b: FA port map ('0' ,s1(1),c ,s2(1),d);
-----------------------------------------------------------
	o(0) <= s2(0);o(1) <= s2(1); o(2) <= d;
end Behave1;
