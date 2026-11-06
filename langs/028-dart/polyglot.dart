// polyglot-100 :: entry 028 :: Dart
Iterable<BigInt> fibs() sync* {
  var a = BigInt.zero, b = BigInt.one;
  while (true) {
    yield a;
    final t = a + b;
    a = b;
    b = t;
  }
}

BigInt fib(int n) => fibs().elementAt(n);

void main() {
  final sum = List.generate(10, (i) => i + 1).reduce((a, b) => a + b);
  print('Hello from Dart!');
  print('sum(1..10) = $sum');
  print('fib(10)    = ${fib(10)}');
  assert(BigInt.from(sum) == fib(10));
}
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive. Family: Web & Script
// Dart -- entry 028 of 100 in the polyglot-100 archive
