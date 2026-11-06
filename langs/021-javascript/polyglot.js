// polyglot-100 :: entry 021 :: JavaScript
function* fibs() {
  let [a, b] = [0n, 1n];
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

function fib(n) {
  const it = fibs();
  let value;
  for (let i = 0; i <= n; i++) value = it.next().value;
  return value;
}

const sum = Array.from({ length: 10 }, (_, i) => i + 1)
  .reduce((acc, x) => acc + x, 0);

console.log("Hello from JavaScript!");
console.log(`sum(1..10) = ${sum}`);
console.log(`fib(10)    = ${fib(10)}`);
console.assert(BigInt(sum) === fib(10), "the 55 coincidence");
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in the polyglot-100 archive. Family: Web & 
// JavaScript -- entry 021 of 100 in th
