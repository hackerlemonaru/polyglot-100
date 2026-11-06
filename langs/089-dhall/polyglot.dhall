-- polyglot-100 :: entry 089 :: Dhall
-- Natural/fold is a language built-in, so this file needs no imports.
let Pair = { a : Natural, b : Natural }

let fib
    : Natural -> Natural
    = \(n : Natural) ->
        ( Natural/fold
            n
            Pair
            (\(s : Pair) -> { a = s.b, b = s.a + s.b })
            { a = 0, b = 1 }
        ).a

let Counter = { n : Natural, acc : Natural }

let total
    : Natural
    = ( Natural/fold
          10
          Counter
          ( \(s : Counter) ->
              { n = s.n + 1, acc = s.acc + s.n + 1 }
          )
          { n = 0, acc = 0 }
      ).acc

let Entry = { index : Natural, language : Text, bytes : Natural }

in  { greeting = "Hello from Dhall!"
    , sumOneToTen = total
    , fibTen = fib 10
    , entries = 100
    , bytesPerEntry = 4096
    , selfEntry = { index = 89, language = "Dhall", bytes = 4096 } : Entry
    }
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
-- Dhall -- entry 089 of 100 in the polyglot-100 archive. Family: Infra & Con
