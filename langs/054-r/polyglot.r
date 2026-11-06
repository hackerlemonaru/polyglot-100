#!/usr/bin/env Rscript
# polyglot-100 :: entry 054 :: R
fib <- function(n) {
  a <- 0
  b <- 1
  for (i in seq_len(n)) {
    t <- a + b
    a <- b
    b <- t
  }
  a
}

fibs <- function(k) {
  out <- numeric(k)
  a <- 0; b <- 1
  for (i in seq_len(k)) {
    out[i] <- a
    t <- a + b; a <- b; b <- t
  }
  out
}

total <- sum(1:10)

cat("Hello from R!\n")
cat(sprintf("sum(1..10) = %d\n", total))
cat(sprintf("fib(10)    = %d\n", fib(10)))
stopifnot(total == fib(10), tail(fibs(11), 1) == 55)
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 054 of 100 in the polyglot-100 archive. Family: Data & Scientifi
# R -- entry 
