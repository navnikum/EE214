library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;


entity test_match is
end test_match;

architecture testbench of test_match is
  signal x7,x6,x5,x4,x3,x2,x1,x0,s2,s1,s0,N:bit:='0';

component PriorityEncoder
  port(x7,x6,x5,x4,x3,x2,x1,x0:in bit;
       s2,s1,s0,N:out bit);
end component;

function bitvec_to_str(x:bit_vector) return String is
variable L:line;
variable W:String(1 to x'length):=(others=>' ');
begin
  write(L,x);
  W(L.all'range):=L.all;
  Deallocate(L);
  return W;
end bitvec_to_str;

begin
process
  file f:text open read_mode is "outputs.txt";
  variable x:bit_vector(7 downto 0);
  variable s_temp:bit_vector(2 downto 0);
  variable N_temp:bit;
  variable L:line;
  variable fail,success:integer:=0;
  variable s:bit_vector(2 downto 0);
begin
  while not endfile(f) loop
    readline(f,L);
    read(L,x);
    read(L,s_temp);
    read(L,N_temp);
    x7<=x(7);
    x6<=x(6);
    x5<=x(5);
    x4<=x(4);
    x3<=x(3);
    x2<=x(2);
    x1<=x(1);
    x0<=x(0);	
    wait for 10 ns;
    s(2):=s2;
    s(1):=s1;
    s(0):=s0;
    wait for 0 ns;
    if not (x="00000000") then
       assert(s=s_temp)
       report "Error. Input is " &  bitvec_to_str(x) &  
               " Expected " &  bitvec_to_str(s_temp) & 
               " Produced " & bitvec_to_str(s)
       severity error;
    end if;
    assert(N=N_temp)
      report "Error in N. Input is "& bitvec_to_str(x) & 
             " Expected " & bit'image(N_temp) & " Produced " 
             & bit'image(N)
      severity error;
    if (x="00000000") then 
      if not(N=N_temp) then 
        fail:=fail+1; 
      end if;			
    elsif not(s=s_temp and N=N_temp) then 
      fail:=fail+1; 
    end if;
  end loop;
  success:=256-fail;
  assert false report "Test completed. " & 
            integer'image(success) & 
              " successes. " & integer'image(fail)& " failures. " 
    severity note;
  wait;
end process;
dut:PriorityEncoder
  port map(x7=>x7,x6=>x6,x5=>x5,x4=>x4,
              x3=>x3,x2=>x2,x1=>x1,x0=>x0, 
                 s2=>s2,s1=>s1,s0=>s0,N=>N);
end testbench;
