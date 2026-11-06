;; polyglot-100 :: entry 094 :: WebAssembly text format
;; Run: wasmtime polyglot.wat --invoke fib 10
(module $polyglot
  (memory (export "memory") 1)

  ;; fib(n) -> the nth Fibonacci number, iteratively
  (func $fib (export "fib") (param $n i32) (result i64)
    (local $a i64) (local $b i64) (local $t i64) (local $i i32)
    (local.set $a (i64.const 0))
    (local.set $b (i64.const 1))
    (block $done
      (loop $again
        (br_if $done (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $t (i64.add (local.get $a) (local.get $b)))
        (local.set $a (local.get $b))
        (local.set $b (local.get $t))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $again)))
    (local.get $a))

  ;; sum_to(n) -> 1 + 2 + ... + n
  (func $sum_to (export "sum_to") (param $n i32) (result i64)
    (local $acc i64) (local $i i32)
    (local.set $i (i32.const 1))
    (block $done
      (loop $again
        (br_if $done (i32.gt_s (local.get $i) (local.get $n)))
        (local.set $acc
          (i64.add (local.get $acc) (i64.extend_i32_s (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $again)))
    (local.get $acc))

  ;; _start stores both results in linear memory: 55 at 0, 55 at 8.
  (func $_start (export "_start")
    (i64.store (i32.const 0) (call $sum_to (i32.const 10)))
    (i64.store (i32.const 8) (call $fib (i32.const 10))))
)
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- entry 094 of 100 in the polyglot-100 archive. Family: Front
;; WebAssembly -- en
