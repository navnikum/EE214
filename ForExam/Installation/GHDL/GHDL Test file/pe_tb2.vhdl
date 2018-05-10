library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;
use std.textio.all;

entity test_self is
end test_self;

architecture testbench of test_self is
  
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
variable x:bit_vector(7 downto 0);
variable s:bit_vector(2 downto 0);
variable success:integer:=0;
variable fail:integer:=0;
begin
  
  for i in 0 to 255 loop
    x:=bit_vector(to_unsigned(i,8));
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
    if (x0='1') then
        assert(s="000" and N='0')
        report "Error. Input is " &  bitvec_to_str(x) & 
               " Expected S=000 N=0 Produced S=" & 
               bitvec_to_str(s)&" N="&bit'image(N)
        severity error;
        if not(s="000" and N='0') then fail:=fail+1;
        end if;
    elsif (x1='1') then
        assert(s="001" and N='0')
        report "Error. Input is " &  bitvec_to_str(x) & 
             " Expected S=001 N=0 Produced S=" & 
              bitvec_to_str(s) & " N=" & bit'image(N)
        severity error;
        if not(s="001" and N='0') then fail:=fail+1;
        end if;
    elsif (x2='1') then
        assert(s="010" and N='0')
        report "Error. Input is " &  bitvec_to_str(x) & 
             " Expected S=010 N=0 Produced S=" & bitvec_to_str(s) & 
             " N=" & bit'image(N)
             severity error;
        if not(s="010" and N='0') then fail:=fail+1;
        end if;
    elsif (x3='1') then
        assert(s="011" and N='0')
        report "Error. Input is " & bitvec_to_str(x) & 
               " Expected S=011 N=0 Produced S=" & bitvec_to_str(s) & 
               " N=" & bit'image(N)
               severity error;
        if not(s="011" and N='0') then fail:=fail+1;
        end if;
    elsif (x4='1') then
        assert(s="100" and N='0')
        report "Error. Input is " & bitvec_to_str(x) & 
               " Expected S=100 N=0 Produced S=" & bitvec_to_str(s) & 
               " N=" & bit'image(N)
                severity error;
        if not(s="100" and N='0') then fail:=fail+1;
        end if;
    elsif (x5='1') then
        assert(s="101" and N='0')
        report "Error. Input is " & bitvec_to_str(x) & 
               " Expected S=101 N=0 Produced S=" & bitvec_to_str(s) & 
               " N=" & bit'image(N)
                severity error;
        if not(s="101" and N='0') then fail:=fail+1;
        end if;
    elsif (x6='1') then
        assert(s="110" and N='0')
        report "Error. Input is " & bitvec_to_str(x) & 
               " Expected S=110 N=0 Produced S=" & bitvec_to_str(s) &
                " N="&bit'image(N)
                severity error;
        if not(s="110" and N='0') then fail:=fail+1;
        end if;
    elsif (x7='1') then

        assert(s="111" and N='0')
        report "Error. Input is " & bitvec_to_str(x) & 
               " Expected S=111 N=0 Produced S=" & bitvec_to_str(s) &
               " N="&bit'image(N)
                severity error;
        if not(s="111" and N='0') then fail:=fail+1;
        end if;
    else
        assert(N='1')
        report "Error in N. Input is " & bitvec_to_str(x) & 
              " Expected N=1 Produced " & bit'image(N) 
              severity error;
        if not(N='1') then fail:=fail+1;
        end if;
    end if;

  end loop;
  success:=256-fail;
  assert false report "Test completed. " & 
             integer'image(success) & " successes. " &
             integer'image(fail)&" failures." 
  severity note;
  --wait;
end process;

dut:PriorityEncoder
port map(x7=>x7,x6=>x6,x5=>x5,x4=>x4,
               x3=>x3,x2=>x2,x1=>x1,x0=>x0,
                     s2=>s2,s1=>s1,s0=>s0,N=>N);
end testbench;
