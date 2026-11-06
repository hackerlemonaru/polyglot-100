// polyglot-100 :: entry 067 :: RPG IV free-form (RPGLE)
**FREE
ctl-opt dftactgrp(*no) actgrp(*new) main(Main);

dcl-proc Fib;
  dcl-pi *n int(10) value;
    n int(10) value;
  end-pi;
  dcl-s a int(10) inz(0);
  dcl-s b int(10) inz(1);
  dcl-s t int(10);
  dcl-s i int(10);
  for i = 1 to n;
    t = a + b;
    a = b;
    b = t;
  endfor;
  return a;
end-proc;

dcl-proc Main;
  dcl-s total int(10) inz(0);
  dcl-s i int(10);
  for i = 1 to 10;
    total += i;
  endfor;
  dsply ('Hello from RPGLE!');
  dsply ('sum(1..10) = ' + %char(total));
  dsply ('fib(10)    = ' + %char(Fib(10)));
  if total <> Fib(10);
    dsply ('the 55 coincidence failed');
  endif;
  *inlr = *on;
end-proc;
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archive. Family: Enterprise 
// RPGLE -- entry 067 of 100 in the polyglot-100 archi
