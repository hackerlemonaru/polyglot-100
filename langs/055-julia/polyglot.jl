#!/usr/bin/env julia
# polyglot-100 :: entry 055 :: Julia
function fib(n::Integer)::BigInt
    a, b = BigInt(0), BigInt(1)
    for _ in 1:n
        a, b = b, a + b
    end
    return a
end

fibs(k::Integer) = [fib(i) for i in 0:k-1]

total = sum(1:10)

println("Hello from Julia!")
println("sum(1..10) = ", total)
println("fib(10)    = ", fib(10))
@assert BigInt(total) == fib(10) "the 55 coincidence"
@assert fibs(11)[end] == 55
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
# Julia -- entry 055 of 100 in the polyglot-100 archive. Family: Data & Scien
