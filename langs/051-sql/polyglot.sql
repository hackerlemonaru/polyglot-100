-- polyglot-100 :: entry 051 :: SQL (standard recursive CTE)
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
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- entry 051 of 100 in the polyglot-100 archive. Family: Data & Scient
-- SQL -- e
