#!/usr/bin/env tclsh
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
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# Tcl -- entry 049 of 100 in the polyglot-100 archive. Family: Lisp & Dynamic
# T
