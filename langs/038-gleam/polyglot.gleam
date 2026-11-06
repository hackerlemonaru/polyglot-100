// polyglot-100 :: entry 038 :: Gleam
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
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100 archive. Family: Functional.
// Gleam -- entry 038 of 100 in the polyglot-100
