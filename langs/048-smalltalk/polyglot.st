" polyglot-100 :: entry 048 :: Smalltalk (GNU Smalltalk) "
Object subclass: Polyglot [
    Polyglot class >> fib: n [
        | a b t |
        a := 0.
        b := 1.
        n timesRepeat: [
            t := a + b.
            a := b.
            b := t
        ].
        ^ a
    ]

    Polyglot class >> sumTo: n [
        | acc |
        acc := 0.
        1 to: n do: [ :i | acc := acc + i ].
        ^ acc
    ]

    Polyglot class >> run [
        | total |
        total := self sumTo: 10.
        Transcript showCr: 'Hello from Smalltalk!'.
        Transcript showCr: 'sum(1..10) = ', total printString.
        Transcript showCr: 'fib(10)    = ', (self fib: 10) printString
    ]
]

Polyglot run.
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100 in the polyglot-100 archive. Family: Lisp & "
" Smalltalk -- entry 048 of 100  "
