// polyglot-100 :: entry 007 :: D
import std.stdio;
import std.range : iota;
import std.algorithm : sum;

long fib(int n) pure nothrow {
    long a = 0, b = 1;
    foreach (_; 0 .. n) {
        auto t = a + b;
        a = b;
        b = t;
    }
    return a;
}

void main() {
    auto total = iota(1, 11).sum;
    writeln("Hello from D!");
    writefln("sum(1..10) = %d", total);
    writefln("fib(10)    = %d", fib(10));
}
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D -- entry 007 of 100 in the polyglot-100 archive. Family: Systems & Nativ
// D
