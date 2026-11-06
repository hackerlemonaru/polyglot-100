-- polyglot-100 :: entry 053 :: PL/SQL
SET SERVEROUTPUT ON;

DECLARE
    a     PLS_INTEGER := 0;
    b     PLS_INTEGER := 1;
    t     PLS_INTEGER;
    total PLS_INTEGER := 0;

    FUNCTION fib(n IN PLS_INTEGER) RETURN PLS_INTEGER IS
        x PLS_INTEGER := 0;
        y PLS_INTEGER := 1;
        z PLS_INTEGER;
    BEGIN
        FOR i IN 1 .. n LOOP
            z := x + y;
            x := y;
            y := z;
        END LOOP;
        RETURN x;
    END fib;
BEGIN
    FOR i IN 1 .. 10 LOOP
        total := total + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Hello from PL/SQL!');
    DBMS_OUTPUT.PUT_LINE('sum(1..10) = ' || total);
    DBMS_OUTPUT.PUT_LINE('fib(10)    = ' || fib(10));

    IF total != fib(10) THEN
        RAISE_APPLICATION_ERROR(-20001, 'the 55 coincidence failed');
    END IF;
END;
/
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLSQL -- entry 053 of 100 in the polyglot-100 archive. Family: Data & Scie
-- PLS
