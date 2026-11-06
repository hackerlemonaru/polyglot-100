// polyglot-100 :: entry 002 :: C++
#include <iostream>
#include <numeric>
#include <vector>
#include <ranges>

constexpr long fib(int n) {
    long a = 0, b = 1;
    for (int i = 0; i < n; ++i) { auto t = a + b; a = b; b = t; }
    return a;
}

int main() {
    std::vector<int> xs(10);
    std::iota(xs.begin(), xs.end(), 1);
    const long sum = std::accumulate(xs.begin(), xs.end(), 0L);
    std::cout << "Hello from C++!\n"
              << "sum(1..10) = " << sum << '\n'
              << "fib(10)    = " << fib(10) << '\n';
}
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archive. Family: Systems & Nat
// C++ -- entry 002 of 100 in the polyglot-100 archiv
