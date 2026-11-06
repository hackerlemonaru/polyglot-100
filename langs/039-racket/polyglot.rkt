#lang racket
; polyglot-100 :: entry 039 :: Racket
(require racket/stream)

(define (fibs-from a b)
  (stream-cons a (fibs-from b (+ a b))))

(define fibs (fibs-from 0 1))

(define (fib n) (stream-ref fibs n))

(define total (for/sum ([i (in-range 1 11)]) i))

(displayln "Hello from Racket!")
(printf "sum(1..10) = ~a\n" total)
(printf "fib(10)    = ~a\n" (fib 10))
(unless (= total (fib 10))
  (error 'polyglot "the 55 coincidence failed"))
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family: Functional.
; Racket -- entry 039 of 100 in the polyglot-100 archive. Family
