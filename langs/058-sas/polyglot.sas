/* polyglot-100 :: entry 058 :: SAS */
data polyglot;
    length greeting $32;
    greeting = 'Hello from SAS!';
    total = 0;
    do i = 1 to 10;
        total + i;
    end;

    a = 0; b = 1;
    do k = 1 to 10;
        t = a + b;
        a = b;
        b = t;
    end;
    fib10 = a;

    put greeting;
    put 'sum(1..10) = ' total;
    put 'fib(10)    = ' fib10;
    if total ne fib10 then put 'the 55 coincidence failed';
    drop i k t a b;
run;

proc print data=polyglot noobs;
    var greeting total fib10;
run;
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Family: Data & Sci */
/* SAS -- entry 058 of 100 in the polyglot-100 archive. Fami */
