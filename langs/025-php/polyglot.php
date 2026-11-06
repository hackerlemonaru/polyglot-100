<?php
// polyglot-100 :: entry 025 :: PHP
declare(strict_types=1);

function fibs(): Generator
{
    [$a, $b] = [0, 1];
    while (true) {
        yield $a;
        [$a, $b] = [$b, $a + $b];
    }
}

function fib(int $n): int
{
    foreach (fibs() as $i => $value) {
        if ($i === $n) {
            return $value;
        }
    }
    return 0;
}

$sum = array_sum(range(1, 10));
echo "Hello from PHP!\n";
printf("sum(1..10) = %d\n", $sum);
printf("fib(10)    = %d\n", fib(10));
assert($sum === fib(10));
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Scripti
// PHP -- entry 025 of 100 in the polyglot-100 archive. Family: Web & Script
