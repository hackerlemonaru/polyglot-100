-- polyglot-100 :: entry 035 :: PureScript
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
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 in the polyglot-100 archive. Family: Functi
-- PureScript -- entry 035 of 100 
