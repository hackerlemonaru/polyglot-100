-- polyglot-100 :: entry 031 :: Haskell
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
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 archive. Family: Functiona
-- Haskell -- entry 031 of 100 in the polyglot-100 a
