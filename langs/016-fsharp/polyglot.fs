// polyglot-100 :: entry 016 :: F#
module Polyglot

let fibs =
    Seq.unfold (fun (a, b) -> Some(a, (b, a + b))) (0I, 1I)

let fib n = fibs |> Seq.item n

[<EntryPoint>]
let main _ =
    let sum = [ 1 .. 10 ] |> List.sum
    printfn "Hello from F#!"
    printfn "sum(1..10) = %d" sum
    printfn "fib(10)    = %A" (fib 10)
    0
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of 100 in the polyglot-100 archive. Family: Application & 
// F# -- entry 016 of
