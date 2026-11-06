(* polyglot-100 :: entry 033 :: Standard ML *)
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
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
(* Standard ML -- entry 033 of 100 in the polyglot-100 archive. Family: Fu *)
