"""Family 04 -- Functional."""

FAMILY = "Functional"

LANGS = [
    dict(
        name="Haskell", ext=".hs", comment="dash", year=1990,
        author="Committee (Miranda lineage; Simon Peyton Jones et al.)",
        paradigm="Purely functional, lazy, statically typed",
        note="Laziness lets the entire infinite Fibonacci sequence be a plain value.",
        code=r'''-- polyglot-100 :: entry 031 :: Haskell
module Main (main) where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Integer
fib n = fibs !! n

total :: Integer
total = sum [1 .. 10]

main :: IO ()
main = do
  putStrLn "Hello from Haskell!"
  putStrLn $ "sum(1..10) = " ++ show total
  putStrLn $ "fib(10)    = " ++ show (fib 10)
  if total == fib 10
    then putStrLn "-- both are 55"
    else error "the 55 coincidence failed"
''',
    ),
    dict(
        name="OCaml", ext=".ml", comment="paren", year=1996,
        author="Xavier Leroy, Jérôme Vouillon, Damien Doligez, Didier Rémy",
        paradigm="Functional, imperative, object-oriented; ML family",
        note="A famously fast compiler with full type inference and no null by default.",
        code=r'''(* polyglot-100 :: entry 032 :: OCaml *)
let fib n =
  let rec go a b i =
    if i = 0 then a else go b (a + b) (i - 1)
  in
  go 0 1 n

let total =
  let rec sum acc i = if i > 10 then acc else sum (acc + i) (i + 1) in
  sum 0 1

let () =
  Printf.printf "Hello from OCaml!\n";
  Printf.printf "sum(1..10) = %d\n" total;
  Printf.printf "fib(10)    = %d\n" (fib 10);
  assert (total = fib 10)
''',
    ),
    dict(
        name="Standard ML", linguist="sml", ext=".sml", comment="paren", year=1983, author="Robin Milner et al.",
        paradigm="Functional, statically typed, module system",
        note="The language whose formal definition famously specified its own semantics.",
        code=r'''(* polyglot-100 :: entry 033 :: Standard ML *)
fun fib n =
  let
    fun go a b 0 = a
      | go a b i = go b (a + b) (i - 1)
  in
    go 0 1 n
  end

fun sumTo n =
  let
    fun go acc 0 = acc
      | go acc i = go (acc + i) (i - 1)
  in
    go 0 n
  end

val total = sumTo 10
val () = print "Hello from Standard ML!\n"
val () = print ("sum(1..10) = " ^ Int.toString total ^ "\n")
val () = print ("fib(10)    = " ^ Int.toString (fib 10) ^ "\n")
val () = if total = fib 10 then () else raise Fail "55 check"
''',
    ),
    dict(
        name="Elm", ext=".elm", comment="dash", year=2012, author="Evan Czaplicki",
        paradigm="Purely functional, reactive, compiled to JavaScript",
        note="No runtime exceptions in practice; the architecture inspired Redux.",
        code=r'''-- polyglot-100 :: entry 034 :: Elm
module Main exposing (main)

import Html exposing (Html, pre, text)


fibs : List Int
fibs =
    fibHelp 0 1 11 [] |> List.reverse


fibHelp : Int -> Int -> Int -> List Int -> List Int
fibHelp a b n acc =
    if n <= 0 then
        acc

    else
        fibHelp b (a + b) (n - 1) (a :: acc)


fib : Int -> Int
fib n =
    fibs |> List.drop n |> List.head |> Maybe.withDefault 0


total : Int
total =
    List.range 1 10 |> List.sum


main : Html msg
main =
    pre []
        [ text
            ("Hello from Elm!\n"
                ++ "sum(1..10) = "
                ++ String.fromInt total
                ++ "\nfib(10)    = "
                ++ String.fromInt (fib 10)
            )
        ]
''',
    ),
    dict(
        name="PureScript", ext=".purs", comment="dash", year=2013, author="Phil Freeman",
        paradigm="Purely functional, strongly typed, compiles to JavaScript",
        note="Haskell-like semantics with row polymorphism and an explicit effect system.",
        code=r'''-- polyglot-100 :: entry 035 :: PureScript
module Main where

import Prelude
import Data.Array (range, (!!))
import Data.Foldable (sum)
import Data.Maybe (fromMaybe)
import Effect (Effect)
import Effect.Console (log)

fibs :: Array Int
fibs = go 0 1 11
  where
  go _ _ 0 = []
  go a b n = [ a ] <> go b (a + b) (n - 1)

fib :: Int -> Int
fib n = fromMaybe 0 (fibs !! n)

total :: Int
total = sum (range 1 10)

main :: Effect Unit
main = do
  log "Hello from PureScript!"
  log ("sum(1..10) = " <> show total)
  log ("fib(10)    = " <> show (fib 10))
''',
    ),
    dict(
        name="Erlang", ext=".erl", comment="percent", year=1986,
        author="Joe Armstrong, Robert Virding, Mike Williams",
        paradigm="Concurrent, functional, fault-tolerant",
        note="Built for telecom switches; the actor model and hot code reloading are core.",
        code=r'''%% polyglot-100 :: entry 036 :: Erlang
-module(polyglot).
-export([main/0, fib/1]).

fib(N) -> fib(N, 0, 1).

fib(0, A, _B) -> A;
fib(N, A, B) -> fib(N - 1, B, A + B).

sum_to(0, Acc) -> Acc;
sum_to(N, Acc) -> sum_to(N - 1, Acc + N).

main() ->
    Total = sum_to(10, 0),
    io:format("Hello from Erlang!~n"),
    io:format("sum(1..10) = ~p~n", [Total]),
    io:format("fib(10)    = ~p~n", [fib(10)]),
    Total = fib(10),
    ok.
''',
    ),
    dict(
        name="Elixir", ext=".ex", comment="hash", year=2011, author="José Valim",
        paradigm="Functional, concurrent, metaprogramming",
        note="Ruby-flavoured syntax on the Erlang VM, with the pipe operator at its heart.",
        code=r'''# polyglot-100 :: entry 037 :: Elixir
defmodule Polyglot do
  @moduledoc "Entry 037 of the polyglot-100 archive."

  def fibs do
    Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end

  def fib(n), do: fibs() |> Enum.at(n)

  def run do
    total = 1..10 |> Enum.sum()
    IO.puts("Hello from Elixir!")
    IO.puts("sum(1..10) = #{total}")
    IO.puts("fib(10)    = #{fib(10)}")
    ^total = fib(10)
    :ok
  end
end

Polyglot.run()
''',
    ),
    dict(
        name="Gleam", ext=".gleam", comment="slash", year=2016, author="Louis Pilfold",
        paradigm="Statically typed functional on the BEAM",
        note="Type-safe Erlang with no nulls and no exceptions; also targets JavaScript.",
        code=r'''// polyglot-100 :: entry 038 :: Gleam
import gleam/int
import gleam/io
import gleam/list

fn fib(n: Int) -> Int {
  do_fib(n, 0, 1)
}

fn do_fib(n: Int, a: Int, b: Int) -> Int {
  case n {
    0 -> a
    _ -> do_fib(n - 1, b, a + b)
  }
}

pub fn main() {
  let total = list.range(1, 10) |> list.fold(0, int.add)
  io.println("Hello from Gleam!")
  io.println("sum(1..10) = " <> int.to_string(total))
  io.println("fib(10)    = " <> int.to_string(fib(10)))
}
''',
    ),
    dict(
        name="Racket", ext=".rkt", comment="semi", year=1995, author="Matthew Flatt, Matthias Felleisen",
        paradigm="Multi-paradigm Lisp, language-oriented",
        note="#lang lets you build entirely new languages inside the same toolchain.",
        code=r'''#lang racket
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
''',
    ),
    dict(
        name="Scheme", ext=".scm", comment="semi", year=1975,
        author="Guy L. Steele Jr., Gerald Jay Sussman",
        paradigm="Functional, minimalist Lisp",
        note="The whole R5RS specification is only about fifty pages long.",
        code=r''';; polyglot-100 :: entry 040 :: Scheme (R7RS)
(define (fib n)
  (let loop ((a 0) (b 1) (i n))
    (if (= i 0)
        a
        (loop b (+ a b) (- i 1)))))

(define (sum-to n)
  (let loop ((acc 0) (i n))
    (if (= i 0)
        acc
        (loop (+ acc i) (- i 1)))))

(define total (sum-to 10))

(display "Hello from Scheme!") (newline)
(display "sum(1..10) = ") (display total) (newline)
(display "fib(10)    = ") (display (fib 10)) (newline)
(if (not (= total (fib 10)))
    (error "the 55 coincidence failed"))
''',
    ),
]
