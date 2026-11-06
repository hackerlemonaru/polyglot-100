// polyglot-100 :: entry 013 :: Kotlin
fun fib(n: Int): Long {
    var a = 0L
    var b = 1L
    repeat(n) {
        val t = a + b
        a = b
        b = t
    }
    return a
}

fun main() {
    val sum = (1..10).sum()
    println("Hello from Kotlin!")
    println("sum(1..10) = $sum")
    println("fib(10)    = ${fib(10)}")
    generateSequence(Pair(0L, 1L)) { (a, b) -> b to (a + b) }
        .take(11)
        .last()
        .let { check(it.first == sum.toLong()) }
}
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in the polyglot-100 archive. Family: Applicatio
// Kotlin -- entry 013 of 100 in
