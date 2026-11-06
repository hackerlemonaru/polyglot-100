// polyglot-100 :: entry 045 :: Io
Polyglot := Object clone do(
    fib := method(n,
        a := 0
        b := 1
        n repeat(
            t := a + b
            a = b
            b = t
        )
        a
    )

    sumTo := method(n,
        acc := 0
        for(i, 1, n, acc = acc + i)
        acc
    )

    run := method(
        total := sumTo(10)
        "Hello from Io!" println
        ("sum(1..10) = " .. total) println
        ("fib(10)    = " .. fib(10)) println
    )
)

Polyglot run
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// Io -- entry 045 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
// I
