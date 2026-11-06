// polyglot-100 :: entry 022 :: TypeScript
type Pair = readonly [bigint, bigint];

function* fibs(): Generator<bigint, never, unknown> {
  let pair: Pair = [0n, 1n];
  for (;;) {
    yield pair[0];
    pair = [pair[1], pair[0] + pair[1]] as const;
  }
}

function fib(n: number): bigint {
  let out = 0n;
  const it = fibs();
  for (let i = 0; i <= n; i++) out = it.next().value as bigint;
  return out;
}

const sum: number = Array.from({ length: 10 }, (_, i) => i + 1)
  .reduce((a: number, b: number) => a + b, 0);

console.log("Hello from TypeScript!");
console.log(`sum(1..10) = ${sum}`);
console.log(`fib(10)    = ${fib(10)}`);
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of 100 in the polyglot-100 archive. Family: Web & 
// TypeScript -- entry 022 of
