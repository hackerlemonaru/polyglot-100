;; polyglot-100 :: entry 043 :: Fennel
(fn fib [n]
  (var a 0)
  (var b 1)
  (for [_ 1 n]
    (let [t (+ a b)]
      (set a b)
      (set b t)))
  a)

(fn sum-to [n]
  (var acc 0)
  (for [i 1 n]
    (set acc (+ acc i)))
  acc)

(let [total (sum-to 10)]
  (print "Hello from Fennel!")
  (print (.. "sum(1..10) = " total))
  (print (.. "fib(10)    = " (fib 10)))
  (assert (= total (fib 10)) "the 55 coincidence failed"))
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel -- entry 043 of 100 in the polyglot-100 archive. Family: Lisp & Dyna
; Fennel 
