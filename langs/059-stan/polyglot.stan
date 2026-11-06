// polyglot-100 :: entry 059 :: Stan
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
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in the polyglot-100 archive. Family: Data & Scien
// Stan -- entry 059 of 100 in th
