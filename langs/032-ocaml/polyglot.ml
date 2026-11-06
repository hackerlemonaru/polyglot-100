(* polyglot-100 :: entry 032 :: OCaml *)
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
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in the polyglot-100 archive. Family: Function *)
(* OCaml -- entry 032 of 100 in  *)
