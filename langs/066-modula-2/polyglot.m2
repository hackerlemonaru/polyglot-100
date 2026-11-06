(* polyglot-100 :: entry 066 :: Modula-2 *)
MODULE Polyglot;

FROM InOut IMPORT WriteString, WriteInt, WriteLn;

PROCEDURE Fib (n : CARDINAL) : CARDINAL;
VAR a, b, t, i : CARDINAL;
BEGIN
    a := 0;
    b := 1;
    FOR i := 1 TO n DO
        t := a + b;
        a := b;
        b := t
    END;
    RETURN a
END Fib;

VAR total, i : CARDINAL;

BEGIN
    total := 0;
    FOR i := 1 TO 10 DO
        total := total + i
    END;

    WriteString ("Hello from Modula-2!"); WriteLn;
    WriteString ("sum(1..10) = "); WriteInt (total, 4); WriteLn;
    WriteString ("fib(10)    = "); WriteInt (Fib (10), 4); WriteLn;

    IF total # Fib (10) THEN
        WriteString ("the 55 coincidence failed"); WriteLn
    END
END Polyglot.
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- entry 066 of 100 in the polyglot-100 archive. Family: Enter *)
(* Modula-2 -- en *)
