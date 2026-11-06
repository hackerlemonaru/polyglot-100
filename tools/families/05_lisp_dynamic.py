"""Family 05 -- Lisp & Dynamic."""

FAMILY = "Lisp & Dynamic"

LANGS = [
    dict(
        name="Common Lisp", ext=".lisp", comment="semi", year=1984,
        author="ANSI committee (Maclisp / Interlisp lineage)",
        paradigm="Multi-paradigm Lisp with a macro system",
        note="The condition system can repair an error and resume where it happened.",
        code=r''';;; polyglot-100 :: entry 041 :: Common Lisp
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
''',
    ),
    dict(
        name="Emacs Lisp", ext=".el", comment="semi", year=1985, author="Richard Stallman",
        paradigm="Lisp dialect for editor extension",
        note="Most of GNU Emacs is written in this language, live-editable while it runs.",
        code=r''';;; polyglot.el --- entry 042 of polyglot-100  -*- lexical-binding: t; -*-
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
''',
    ),
    dict(
        name="Fennel", ext=".fnl", comment="semi", year=2016, author="Calvin Rose",
        paradigm="Lisp that compiles to Lua",
        note="Full Lua interop with pattern matching and no runtime overhead.",
        code=r''';; polyglot-100 :: entry 043 :: Fennel
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
''',
    ),
    dict(
        name="Janet", ext=".janet", comment="hash", year=2017, author="Calvin Rose",
        paradigm="Lisp with a bytecode VM, embeddable",
        note="A modern Lisp with arrays, tables, structs and a small C core.",
        code=r'''# polyglot-100 :: entry 044 :: Janet
(defn fib [n]
  (var a 0)
  (var b 1)
  (for _ 0 n
    (def t (+ a b))
    (set a b)
    (set b t))
  a)

(defn sum-to [n]
  (var acc 0)
  (for i 1 (+ n 1)
    (set acc (+ acc i)))
  acc)

(def total (sum-to 10))

(print "Hello from Janet!")
(print "sum(1..10) = " total)
(print "fib(10)    = " (fib 10))
(assert (= total (fib 10)) "the 55 coincidence failed")
''',
    ),
    dict(
        name="Io", ext=".io", comment="slash", year=2002, author="Steve Dekorte",
        paradigm="Prototype-based, purely object-oriented",
        note="Almost everything is a message send; the syntax fits on a postcard.",
        code=r'''// polyglot-100 :: entry 045 :: Io
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
''',
    ),
    dict(
        name="Wren", ext=".wren", comment="slash", year=2014, author="Bob Nystrom",
        paradigm="Class-based, dynamically typed, embeddable",
        note="Small enough to embed in a game engine; fibers give cooperative concurrency.",
        code=r'''// polyglot-100 :: entry 046 :: Wren
class Polyglot {
  static fib(n) {
    var a = 0
    var b = 1
    for (i in 0...n) {
      var t = a + b
      a = b
      b = t
    }
    return a
  }

  static sumTo(n) {
    var acc = 0
    for (i in 1..n) acc = acc + i
    return acc
  }
}

var total = Polyglot.sumTo(10)
System.print("Hello from Wren!")
System.print("sum(1..10) = %(total)")
System.print("fib(10)    = %(Polyglot.fib(10))")
''',
    ),
    dict(
        name="Red", ext=".red", comment="semi", year=2011, author="Nenad Rakocevic",
        paradigm="Homoiconic, multi-paradigm, Rebol lineage",
        note="A full-stack language with built-in dialects for GUI, parsing and drawing.",
        code=r'''Red [
    Title:   "polyglot-100 entry 047"
    Purpose: "One hundredth of a byte-balanced polyglot archive"
]

fib: function [n [integer!] return: [integer!]][
    a: 0 b: 1
    loop n [
        t: a + b
        a: b
        b: t
    ]
    a
]

sum-to: function [n [integer!] return: [integer!]][
    acc: 0
    repeat i n [acc: acc + i]
    acc
]

total: sum-to 10
print "Hello from Red!"
print ["sum(1..10) =" total]
print ["fib(10)    =" fib 10]
unless total = fib 10 [print "55 check failed"]
''',
    ),
    dict(
        name="Smalltalk", ext=".st", comment="quote", year=1972,
        author="Alan Kay, Dan Ingalls, Adele Goldberg",
        paradigm="Purely object-oriented, message passing",
        note="The original live-programming environment; inspired Objective-C and Ruby.",
        code=r'''" polyglot-100 :: entry 048 :: Smalltalk (GNU Smalltalk) "
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
''',
    ),
    dict(
        name="Tcl", ext=".tcl", comment="hash", year=1988, author="John Ousterhout",
        paradigm="Procedural, everything is a string",
        note="Twelve syntax rules; the whole language is command substitution.",
        code=r'''#!/usr/bin/env tclsh
# polyglot-100 :: entry 049 :: Tcl
proc fib {n} {
    set a 0
    set b 1
    for {set i 0} {$i < $n} {incr i} {
        set t [expr {$a + $b}]
        set a $b
        set b $t
    }
    return $a
}

proc sumTo {n} {
    set acc 0
    for {set i 1} {$i <= $n} {incr i} {
        incr acc $i
    }
    return $acc
}

set total [sumTo 10]
puts "Hello from Tcl!"
puts "sum(1..10) = $total"
puts "fib(10)    = [fib 10]"
if {$total != [fib 10]} {
    error "the 55 coincidence failed"
}
''',
    ),
    dict(
        name="PowerShell", ext=".ps1", comment="hash", year=2006, author="Jeffrey Snover / Microsoft",
        paradigm="Object-pipeline shell and scripting",
        note="Pipelines carry structured .NET objects rather than lines of text.",
        code=r'''#!/usr/bin/env pwsh
# polyglot-100 :: entry 050 :: PowerShell
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-Fibonacci {
    param([int]$N)
    $a, $b = [bigint]0, [bigint]1
    foreach ($i in 1..$N) {
        $t = $a + $b
        $a, $b = $b, $t
    }
    return $a
}

$total = (1..10 | Measure-Object -Sum).Sum

Write-Output 'Hello from PowerShell!'
Write-Output "sum(1..10) = $total"
Write-Output "fib(10)    = $(Get-Fibonacci -N 10)"

if ($total -ne (Get-Fibonacci -N 10)) {
    throw 'the 55 coincidence failed'
}
''',
    ),
]
