-- polyglot-100 :: entry 052 :: PL/pgSQL
CREATE OR REPLACE FUNCTION polyglot_fib(n integer)
RETURNS bigint
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
    a bigint := 0;
    b bigint := 1;
    t bigint;
BEGIN
    FOR i IN 1..n LOOP
        t := a + b;
        a := b;
        b := t;
    END LOOP;
    RETURN a;
END;
$$;

DO $$
DECLARE
    total integer;
BEGIN
    SELECT sum(i) INTO total FROM generate_series(1, 10) AS i;
    RAISE NOTICE 'Hello from PL/pgSQL!';
    RAISE NOTICE 'sum(1..10) = %', total;
    RAISE NOTICE 'fib(10)    = %', polyglot_fib(10);
    IF total <> polyglot_fib(10) THEN
        RAISE EXCEPTION 'the 55 coincidence failed';
    END IF;
END;
$$;
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data & Sc
-- PLpgSQL -- entry 052 of 100 in the polyglot-100 archive. Family: Data
