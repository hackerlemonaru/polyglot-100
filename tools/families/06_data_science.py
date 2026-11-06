"""Family 06 -- Data & Scientific."""

FAMILY = "Data & Scientific"

LANGS = [
    dict(
        name="SQL", ext=".sql", comment="dash", year=1974,
        author="Donald Chamberlin, Raymond Boyce / IBM",
        paradigm="Declarative, relational",
        note="Recursive CTEs made the standard Turing-complete back in SQL:1999.",
        code=r'''-- polyglot-100 :: entry 051 :: SQL (standard recursive CTE)
WITH RECURSIVE
  naturals (i) AS (
    SELECT 1
    UNION ALL
    SELECT i + 1 FROM naturals WHERE i < 10
  ),
  fibonacci (n, a, b) AS (
    SELECT 0, CAST(0 AS BIGINT), CAST(1 AS BIGINT)
    UNION ALL
    SELECT n + 1, b, a + b FROM fibonacci WHERE n < 10
  )
SELECT
  'Hello from SQL!'                       AS greeting,
  (SELECT SUM(i) FROM naturals)           AS sum_1_to_10,
  (SELECT a FROM fibonacci WHERE n = 10)  AS fib_10;
''',
    ),
    dict(
        name="PLpgSQL", ext=".pgsql", comment="dash", year=1998,
        author="Jan Wieck / PostgreSQL Global Development Group",
        paradigm="Procedural extension to SQL",
        note="The default procedural language of PostgreSQL; RAISE NOTICE is its println.",
        code=r'''-- polyglot-100 :: entry 052 :: PL/pgSQL
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
''',
    ),
    dict(
        name="PLSQL", ext=".pls", comment="dash", year=1992, author="Oracle Corporation",
        paradigm="Procedural extension to SQL, Ada-inspired",
        note="Stored procedures that live inside the Oracle database next to the data.",
        code=r'''-- polyglot-100 :: entry 053 :: PL/SQL
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
''',
    ),
    dict(
        name="R", ext=".r", comment="hash", year=1993,
        author="Ross Ihaka, Robert Gentleman",
        paradigm="Statistical, functional, vectorised",
        note="A free implementation of the S language; vectors are the fundamental unit.",
        code=r'''#!/usr/bin/env Rscript
# polyglot-100 :: entry 054 :: R
fib <- function(n) {
  a <- 0
  b <- 1
  for (i in seq_len(n)) {
    t <- a + b
    a <- b
    b <- t
  }
  a
}

fibs <- function(k) {
  out <- numeric(k)
  a <- 0; b <- 1
  for (i in seq_len(k)) {
    out[i] <- a
    t <- a + b; a <- b; b <- t
  }
  out
}

total <- sum(1:10)

cat("Hello from R!\n")
cat(sprintf("sum(1..10) = %d\n", total))
cat(sprintf("fib(10)    = %d\n", fib(10)))
stopifnot(total == fib(10), tail(fibs(11), 1) == 55)
''',
    ),
    dict(
        name="Julia", ext=".jl", comment="hash", year=2012,
        author="Jeff Bezanson, Stefan Karpinski, Viral Shah, Alan Edelman",
        paradigm="Multiple dispatch, JIT-compiled, numerical",
        note="Solves the two-language problem: dynamic to write, machine-fast to run.",
        code=r'''#!/usr/bin/env julia
# polyglot-100 :: entry 055 :: Julia
function fib(n::Integer)::BigInt
    a, b = BigInt(0), BigInt(1)
    for _ in 1:n
        a, b = b, a + b
    end
    return a
end

fibs(k::Integer) = [fib(i) for i in 0:k-1]

total = sum(1:10)

println("Hello from Julia!")
println("sum(1..10) = ", total)
println("fib(10)    = ", fib(10))
@assert BigInt(total) == fib(10) "the 55 coincidence"
@assert fibs(11)[end] == 55
''',
    ),
    dict(
        name="MATLAB", ext=".matlab", comment="percent", year=1984,
        author="Cleve Moler",
        paradigm="Array programming, numerical computing",
        note="MATrix LABoratory: every value is an array, even a scalar.",
        code=r'''% polyglot-100 :: entry 056 :: MATLAB
total = sum(1:10);

fprintf('Hello from MATLAB!\n');
fprintf('sum(1..10) = %d\n', total);
fprintf('fib(10)    = %d\n', polyglotFib(10));
assert(total == polyglotFib(10), 'the 55 coincidence failed');

sequence = zeros(1, 11);
sequence(1) = 0;
sequence(2) = 1;
for k = 3:11
    sequence(k) = sequence(k - 1) + sequence(k - 2);
end
disp(sequence);

function value = polyglotFib(n)
    a = 0;
    b = 1;
    for k = 1:n
        t = a + b;
        a = b;
        b = t;
    end
    value = a;
end
''',
    ),
    dict(
        name="Wolfram Language", linguist="wolfram", ext=".wl", comment="paren", year=1988,
        author="Stephen Wolfram",
        paradigm="Symbolic, term-rewriting, multi-paradigm",
        note="Powers Mathematica; symbolic expressions are the universal data structure.",
        code=r'''(* polyglot-100 :: entry 057 :: Wolfram Language *)

polyglotFib[n_Integer] := Module[{a = 0, b = 1, t},
  Do[t = a + b; a = b; b = t, {n}];
  a
];

total = Total[Range[10]];

Print["Hello from Wolfram Language!"];
Print["sum(1..10) = ", total];
Print["fib(10)    = ", polyglotFib[10]];

If[total =!= polyglotFib[10], Print["the 55 coincidence failed"]];

(* The built-in agrees with the hand-rolled loop. *)
Assert[Fibonacci[10] == polyglotFib[10]];
''',
    ),
    dict(
        name="SAS", ext=".sas", comment="cstyle", year=1976,
        author="Anthony Barr, James Goodnight / SAS Institute",
        paradigm="Procedural, statistical, data-step driven",
        note="The DATA step reads and writes one observation at a time, implicitly looping.",
        code=r'''/* polyglot-100 :: entry 058 :: SAS */
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
''',
    ),
    dict(
        name="Stan", ext=".stan", comment="slash", year=2012,
        author="Andrew Gelman and the Stan development team",
        paradigm="Probabilistic programming, declarative",
        note="Compiles to C++ and samples posteriors with Hamiltonian Monte Carlo.",
        code=r'''// polyglot-100 :: entry 059 :: Stan
// The canonical task, expressed as a deterministic probabilistic model.
data {
  int<lower=1> N;          // upper bound of the sum, 10
  int<lower=0> K;          // Fibonacci index, 10
}
transformed data {
  int total = 0;
  for (i in 1 : N) {
    total += i;
  }

  int a = 0;
  int b = 1;
  for (k in 1 : K) {
    int t = a + b;
    a = b;
    b = t;
  }
  int fib_k = a;
}
parameters {
  real nothing;            // a single unconstrained parameter
}
model {
  nothing ~ normal(0, 1);
  print("Hello from Stan!");
  print("sum(1..10) = ", total);
  print("fib(10)    = ", fib_k);
}
generated quantities {
  int checksum = total - fib_k;   // zero when both are 55
}
''',
    ),
    dict(
        name="GraphQL", ext=".graphql", comment="hash", year=2015, author="Lee Byron / Facebook",
        paradigm="Declarative query language and type system",
        note="The client asks for exactly the fields it needs, and nothing more.",
        code=r'''# polyglot-100 :: entry 060 :: GraphQL
# The canonical payload, expressed as a schema plus an executable query.

type Polyglot {
  index: Int!
  language: String!
  family: String!
  greeting: String!
  sumOneToTen: Int!
  fibTen: Int!
  checksum: Int!
}

type Query {
  polyglot(index: Int! = 60): Polyglot!
  languages(first: Int! = 100): [Polyglot!]!
}

schema {
  query: Query
}

query CanonicalResult {
  polyglot(index: 60) {
    language
    family
    greeting
    sumOneToTen
    fibTen
    checksum
  }
}
''',
    ),
]
