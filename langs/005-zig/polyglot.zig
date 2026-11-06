// polyglot-100 :: entry 005 :: Zig
const std = @import("std");

fn fib(n: u32) u64 {
    var a: u64 = 0;
    var b: u64 = 1;
    var i: u32 = 0;
    while (i < n) : (i += 1) {
        const t = a + b;
        a = b;
        b = t;
    }
    return a;
}

pub fn main() !void {
    const out = std.io.getStdOut().writer();
    var sum: u64 = 0;
    for (1..11) |i| sum += i;
    try out.print("Hello from Zig!\n", .{});
    try out.print("sum(1..10) = {d}\n", .{sum});
    try out.print("fib(10)    = {d}\n", .{fib(10)});
}
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family: Systems & Nat
// Zig -- entry 005 of 100 in the polyglot-100 archive. Family
