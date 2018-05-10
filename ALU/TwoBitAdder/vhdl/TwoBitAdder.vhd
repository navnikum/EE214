library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components is
   component INVERTER is
	port (a: in std_logic; b : out std_logic);
   end component;
   component AND_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component OR_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component NAND_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component XOR_2 is
	port (a, b: in std_logic; c : out std_logic);
   end component;
end EE224_Components;

library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
  port (a: in std_logic;
         b: out std_logic);
end entity INVERTER;
architecture Behave of INVERTER is
begin
  b <= not a;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity AND_2;
architecture Behave of AND_2 is
begin
  c <= a and b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity OR_2;
architecture Behave of OR_2 is
begin
  c <= a or b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity NAND_2;
architecture Behave of NAND_2 is
begin
  c <= not (a and b);
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
  port (a, b: in std_logic;
         c: out std_logic);
end entity XOR_2;
architecture Behave of XOR_2 is
begin
  c <= (a xor b);
end Behave;


library ieee;
-- std_logic type and associated functions.
use ieee.std_logic_1164.all;

library work;
-- package of component declarations..
use work.EE224_Components.all;

entity TwoBitAdder is
   port(x1,x0,y1,y0: in std_logic;
        s1,s0: out std_logic);
end entity;
architecture Struct of TwoBitAdder is
   signal w, z: std_logic;
begin
   -- s0 <= (y0 and (not x0)) or ((not y0) and x0);
   x_1: XOR_2 port map (a => x0, b => y0, c => s0);
   
   -- w  <= (y1 and (not x1)) or ((not y1) and x1);
   x_2: XOR_2 port map (a => x1, b => y1, c => w);

   -- z  <= (y0 and x0);
   a_1: AND_2 port map (a => x0, b => y0, c => z);

   -- s1 <= (w  and (not z)) or ((not w) and z);
   x_3: XOR_2 port map (a => w, b => z, c => s1);

end Struct;


