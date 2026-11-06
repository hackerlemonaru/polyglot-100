// polyglot-100 :: entry 004 :: Go
package main

import "fmt"

func fib(n int) uint64 {
	a, b := uint64(0), uint64(1)
	for i := 0; i < n; i++ {
		a, b = b, a+b
	}
	return a
}

func main() {
	sum := 0
	for i := 1; i <= 10; i++ {
		sum += i
	}
	ch := make(chan uint64, 1)
	go func() { ch <- fib(10) }()
	fmt.Println("Hello from Go!")
	fmt.Printf("sum(1..10) = %d\n", sum)
	fmt.Printf("fib(10)    = %d\n", <-ch)
}
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004 of 100 in the polyglot-100 archive. Family: Systems & Nati
// Go -- entry 004
