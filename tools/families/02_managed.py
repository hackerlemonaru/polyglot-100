"""Family 02 -- Application & Managed."""

FAMILY = "Application & Managed"

LANGS = [
    dict(
        name="Java", ext=".java", comment="slash", year=1995, author="James Gosling / Sun Microsystems",
        paradigm="Object-oriented, class-based, statically typed",
        note="Write once, run anywhere on the JVM; records and pattern matching landed in recent LTS releases.",
        code=r'''// polyglot-100 :: entry 011 :: Java
import java.util.stream.IntStream;

public final class polyglot {
    private static long fib(int n) {
        long a = 0, b = 1;
        for (int i = 0; i < n; i++) {
            long t = a + b;
            a = b;
            b = t;
        }
        return a;
    }

    public static void main(String[] args) {
        int sum = IntStream.rangeClosed(1, 10).sum();
        System.out.println("Hello from Java!");
        System.out.printf("sum(1..10) = %d%n", sum);
        System.out.printf("fib(10)    = %d%n", fib(10));
    }
}
''',
    ),
    dict(
        name="C#", ext=".cs", comment="slash", year=2000, author="Anders Hejlsberg / Microsoft",
        paradigm="Multi-paradigm, statically typed, component-oriented",
        note="LINQ brought query syntax into the language itself.",
        code=r'''// polyglot-100 :: entry 012 :: C#
using System;
using System.Linq;

internal static class Polyglot
{
    private static long Fib(int n)
    {
        long a = 0, b = 1;
        for (var i = 0; i < n; i++) (a, b) = (b, a + b);
        return a;
    }

    private static void Main()
    {
        var sum = Enumerable.Range(1, 10).Sum();
        Console.WriteLine("Hello from C#!");
        Console.WriteLine($"sum(1..10) = {sum}");
        Console.WriteLine($"fib(10)    = {Fib(10)}");
    }
}
''',
    ),
    dict(
        name="Kotlin", ext=".kt", comment="slash", year=2011, author="JetBrains",
        paradigm="Multi-paradigm, statically typed, null-safe",
        note="Interoperates fully with Java and is the preferred language for Android.",
        code=r'''// polyglot-100 :: entry 013 :: Kotlin
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
''',
    ),
    dict(
        name="Scala", ext=".scala", comment="slash", year=2004, author="Martin Odersky",
        paradigm="Functional + object-oriented on the JVM",
        note="Lazy lists let you define the infinite Fibonacci sequence in one line.",
        code=r'''// polyglot-100 :: entry 014 :: Scala
object Polyglot {
  val fibs: LazyList[BigInt] =
    BigInt(0) #:: BigInt(1) #:: fibs.zip(fibs.tail).map { case (a, b) => a + b }

  def main(args: Array[String]): Unit = {
    val sum = (1 to 10).sum
    println("Hello from Scala!")
    println(s"sum(1..10) = $sum")
    println(s"fib(10)    = ${fibs(10)}")
    assert(BigInt(sum) == fibs(10))
  }
}
''',
    ),
    dict(
        name="Clojure", ext=".clj", comment="semi", year=2007, author="Rich Hickey",
        paradigm="Functional, Lisp dialect on the JVM",
        note="Immutable persistent data structures and code-as-data via macros.",
        code=r'''; polyglot-100 :: entry 015 :: Clojure
(ns polyglot.core)

(def fibs
  (map first (iterate (fn [[a b]] [b (+ a b)]) [0N 1N])))

(defn fib [n]
  (nth fibs n))

(defn -main [& _]
  (let [sum (reduce + (range 1 11))]
    (println "Hello from Clojure!")
    (println (str "sum(1..10) = " sum))
    (println (str "fib(10)    = " (fib 10)))
    (assert (= (bigint sum) (fib 10)))))

(-main)
''',
    ),
    dict(
        name="F#", ext=".fs", comment="slash", year=2005, author="Don Syme / Microsoft Research",
        paradigm="Functional-first, statically typed, .NET",
        note="Sequence expressions and type inference make pipelines read top to bottom.",
        code=r'''// polyglot-100 :: entry 016 :: F#
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
''',
    ),
    dict(
        name="Vala", ext=".vala", comment="slash", year=2006, author="Jürg Billeter, Raffaele Sandrini",
        paradigm="Object-oriented, compiled via C",
        note="GObject semantics with a C#-like syntax; the backbone of many GNOME apps.",
        code=r'''// polyglot-100 :: entry 017 :: Vala
int64 fib (int n) {
    int64 a = 0;
    int64 b = 1;
    for (int i = 0; i < n; i++) {
        var t = a + b;
        a = b;
        b = t;
    }
    return a;
}

int main (string[] args) {
    int sum = 0;
    for (int i = 1; i <= 10; i++) {
        sum += i;
    }
    stdout.printf ("Hello from Vala!\n");
    stdout.printf ("sum(1..10) = %d\n", sum);
    stdout.printf ("fib(10)    = %s\n", fib (10).to_string ());
    return 0;
}
''',
    ),
    dict(
        name="Haxe", ext=".hx", comment="slash", year=2005, author="Nicolas Cannasse",
        paradigm="Multi-paradigm, cross-platform",
        note="One codebase compiles to JavaScript, C++, Java, C#, Python, PHP and more.",
        code=r'''// polyglot-100 :: entry 018 :: Haxe
class Polyglot {
    static function fib(n:Int):Float {
        var a:Float = 0;
        var b:Float = 1;
        for (_ in 0...n) {
            var t = a + b;
            a = b;
            b = t;
        }
        return a;
    }

    static function main() {
        var sum = 0;
        for (i in 1...11) sum += i;
        trace("Hello from Haxe!");
        Sys.println("sum(1..10) = " + sum);
        Sys.println("fib(10)    = " + fib(10));
    }
}
''',
    ),
    dict(
        name="Apex", ext=".cls", comment="slash", year=2007, author="Salesforce",
        paradigm="Object-oriented, Java-like, multitenant",
        note="Runs inside the Salesforce platform under strict governor limits.",
        code=r'''// polyglot-100 :: entry 019 :: Apex
public with sharing class Polyglot {
    public static Long fib(Integer n) {
        Long a = 0;
        Long b = 1;
        for (Integer i = 0; i < n; i++) {
            Long t = a + b;
            a = b;
            b = t;
        }
        return a;
    }

    public static void run() {
        Integer total = 0;
        for (Integer i = 1; i <= 10; i++) {
            total += i;
        }
        System.debug('Hello from Apex!');
        System.debug('sum(1..10) = ' + total);
        System.debug('fib(10)    = ' + fib(10));
        System.assertEquals(Long.valueOf(total), fib(10));
    }
}
''',
    ),
    dict(
        name="Swift", ext=".swift", comment="slash", year=2014, author="Chris Lattner / Apple",
        paradigm="Protocol-oriented, multi-paradigm, compiled",
        note="Value types, optionals and automatic reference counting instead of a GC.",
        code=r'''// polyglot-100 :: entry 020 :: Swift
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
''',
    ),
]
