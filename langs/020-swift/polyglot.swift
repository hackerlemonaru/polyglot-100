// polyglot-100 :: entry 020 :: Swift
func fib(_ n: Int) -> Int {
    var (a, b) = (0, 1)
    for _ in 0..<n { (a, b) = (b, a + b) }
    return a
}

let sum = (1...10).reduce(0, +)
print("Hello from Swift!")
print("sum(1..10) = \(sum)")
print("fib(10)    = \(fib(10))")

let sequence = AnySequence(sequence(state: (0, 1)) { state in
    defer { state = (state.1, state.0 + state.1) }
    return state.0
})
precondition(Array(sequence.prefix(11)).last == sum)
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100 archive. Family: Application
// Swift -- entry 020 of 100 in the polyglot-100
