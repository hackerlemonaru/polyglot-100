-- polyglot-100 :: entry 034 :: Elm
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
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- entry 034 of 100 in the polyglot-100 archive. Family: Functional. F
-- Elm -- 
