;;; polyglot.el --- entry 042 of polyglot-100  -*- lexical-binding: t; -*-
;;; Commentary:
;; One hundredth of a byte-balanced polyglot archive.
;;; Code:

(defun polyglot-fib (n)
  "Return the Nth Fibonacci number, iteratively."
  (let ((a 0) (b 1) (t nil))
    (dotimes (_ n a)
      (setq t (+ a b) a b b t))))

(defun polyglot-sum (n)
  "Sum the integers from 1 to N."
  (let ((acc 0))
    (dotimes (i n acc)
      (setq acc (+ acc (1+ i))))))

(defun polyglot-run ()
  "Print the canonical polyglot-100 result."
  (interactive)
  (let ((total (polyglot-sum 10)))
    (message "Hello from Emacs Lisp!")
    (message "sum(1..10) = %d" total)
    (message "fib(10)    = %d" (polyglot-fib 10))
    (cl-assert (= total (polyglot-fib 10)))))

(provide 'polyglot)
;;; polyglot.el ends here
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 100 in the polyglot-100 archive. Family: Lisp & 
; Emacs Lisp -- entry 042 of 10
