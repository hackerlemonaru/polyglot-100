-- polyglot-100 :: entry 098 :: VHDL-2008
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity polyglot is
end entity polyglot;

architecture behavioural of polyglot is

  function fib(n : natural) return natural is
    variable a : natural := 0;
    variable b : natural := 1;
    variable t : natural;
  begin
    for i in 1 to n loop
      t := a + b;
      a := b;
      b := t;
    end loop;
    return a;
  end function fib;

begin

  stimulus : process is
    variable total : natural := 0;
    variable l     : line;
  begin
    for i in 1 to 10 loop
      total := total + i;
    end loop;

    write(l, string'("Hello from VHDL!"));
    writeline(output, l);
    write(l, string'("sum(1..10) = "));
    write(l, total);
    writeline(output, l);
    write(l, string'("fib(10)    = "));
    write(l, fib(10));
    writeline(output, l);

    assert total = fib(10)
      report "the 55 coincidence failed"
      severity error;

    wait;
  end process stimulus;

end architecture behavioural;
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL -- entry 098 of 100 in the polyglot-100 archive. Family: Frontier & E
-- VHDL
