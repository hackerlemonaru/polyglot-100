;;; polyglot-100 :: entry 041 :: Common Lisp
(defpackage #:polyglot (:use #:cl))
(in-package #:polyglot)

(defun fib (n)
  (do ((a 0 b)
       (b 1 (+ a b))
       (i 0 (1+ i)))
      ((= i n) a)))

(defun sum-to (n)
  (loop for i from 1 to n sum i))

(defun main ()
  (let ((total (sum-to 10)))
    (format t "Hello from Common Lisp!~%")
    (format t "sum(1..10) = ~D~%" total)
    (format t "fib(10)    = ~D~%" (fib 10))
    (assert (= total (fib 10)) () "the 55 coincidence failed")))

(main)
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common Lisp -- entry 041 of 100 in the polyglot-100 archive. Family: Lisp &
; Common L
