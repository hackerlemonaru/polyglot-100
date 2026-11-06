"""Family 01 -- Systems & Native."""

FAMILY = "Systems & Native"

LANGS = [
    dict(
        name="C", ext=".c", comment="slash", year=1972, author="Dennis Ritchie",
        paradigm="Procedural, imperative",
        note="The lingua franca of systems programming; Unix and Linux are written in it.",
        code=r'''// polyglot-100 :: entry 001 :: C
#include <stdio.h>

static long fib(int n) {
    long a = 0, b = 1;
    for (int i = 0; i < n; i++) {
        long t = a + b;
        a = b;
        b = t;
    }
    return a;
}

int main(void) {
    long sum = 0;
    for (int i = 1; i <= 10; i++) sum += i;
    printf("Hello from C!\n");
    printf("sum(1..10) = %ld\n", sum);
    printf("fib(10)    = %ld\n", fib(10));
    return 0;
}
''',
    ),
    dict(
        name="C++", ext=".cpp", comment="slash", year=1985, author="Bjarne Stroustrup",
        paradigm="Multi-paradigm: procedural, generic, object-oriented",
        note="Zero-overhead abstraction over C; ranges and concepts arrived in C++20.",
        code=r'''// polyglot-100 :: entry 002 :: C++
#include <iostream>
#include <numeric>
#include <vector>
#include <ranges>

constexpr long fib(int n) {
    long a = 0, b = 1;
    for (int i = 0; i < n; ++i) { auto t = a + b; a = b; b = t; }
    return a;
}

int main() {
    std::vector<int> xs(10);
    std::iota(xs.begin(), xs.end(), 1);
    const long sum = std::accumulate(xs.begin(), xs.end(), 0L);
    std::cout << "Hello from C++!\n"
              << "sum(1..10) = " << sum << '\n'
              << "fib(10)    = " << fib(10) << '\n';
}
''',
    ),
    dict(
        name="Rust", ext=".rs", comment="slash", year=2010, author="Graydon Hoare / Mozilla",
        paradigm="Multi-paradigm with ownership and borrowing",
        note="Memory safety without a garbage collector, enforced at compile time.",
        code=r'''// polyglot-100 :: entry 003 :: Rust
fn fib(n: u32) -> u64 {
    let (mut a, mut b) = (0u64, 1u64);
    for _ in 0..n {
        let t = a + b;
        a = b;
        b = t;
    }
    a
}

fn main() {
    let sum: u32 = (1..=10).sum();
    println!("Hello from Rust!");
    println!("sum(1..10) = {sum}");
    println!("fib(10)    = {}", fib(10));
    assert_eq!(sum as u64, fib(10), "the 55 coincidence");
}
''',
    ),
    dict(
        name="Go", ext=".go", comment="slash", year=2009,
        author="Robert Griesemer, Rob Pike, Ken Thompson",
        paradigm="Concurrent, imperative, compiled",
        note="Goroutines and channels make concurrency a first-class language feature.",
        code=r'''// polyglot-100 :: entry 004 :: Go
package main

import "fmt"

func fib(n int) uint64 {
	a, b := uint64(0), uint64(1)
	for i := 0; i < n; i++ {
		a, b = b, a+b
	}
	return a
}

func main() {
	sum := 0
	for i := 1; i <= 10; i++ {
		sum += i
	}
	ch := make(chan uint64, 1)
	go func() { ch <- fib(10) }()
	fmt.Println("Hello from Go!")
	fmt.Printf("sum(1..10) = %d\n", sum)
	fmt.Printf("fib(10)    = %d\n", <-ch)
}
''',
    ),
    dict(
        name="Zig", ext=".zig", comment="slash", year=2016, author="Andrew Kelley",
        paradigm="Imperative, comptime metaprogramming",
        note="No hidden control flow and no hidden allocations; comptime runs code at compile time.",
        code=r'''// polyglot-100 :: entry 005 :: Zig
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
''',
    ),
    dict(
        name="Nim", ext=".nim", comment="hash", year=2008, author="Andreas Rumpf",
        paradigm="Compiled, statically typed, metaprogramming",
        note="Python-flavoured syntax that compiles through C, C++ or JavaScript.",
        code=r'''# polyglot-100 :: entry 006 :: Nim
import std/strutils

func fib(n: int): int64 =
  var (a, b) = (0'i64, 1'i64)
  for _ in 0 ..< n:
    let t = a + b
    a = b
    b = t
  a

proc main() =
  var sum = 0
  for i in 1 .. 10:
    sum += i
  echo "Hello from Nim!"
  echo "sum(1..10) = ", sum
  echo "fib(10)    = ", fib(10)

when isMainModule:
  main()
''',
    ),
    dict(
        name="D", ext=".d", comment="slash", year=2001, author="Walter Bright, Andrei Alexandrescu",
        paradigm="Multi-paradigm, systems",
        note="Uniform function call syntax lets any function read like a method.",
        code=r'''// polyglot-100 :: entry 007 :: D
import std.stdio;
import std.range : iota;
import std.algorithm : sum;

long fib(int n) pure nothrow {
    long a = 0, b = 1;
    foreach (_; 0 .. n) {
        auto t = a + b;
        a = b;
        b = t;
    }
    return a;
}

void main() {
    auto total = iota(1, 11).sum;
    writeln("Hello from D!");
    writefln("sum(1..10) = %d", total);
    writefln("fib(10)    = %d", fib(10));
}
''',
    ),
    dict(
        name="Odin", ext=".odin", comment="slash", year=2016, author="Ginger Bill",
        paradigm="Imperative, data-oriented",
        note="Built for high-performance graphics and game code; a deliberate alternative to C.",
        code=r'''// polyglot-100 :: entry 008 :: Odin
package main

import "core:fmt"

fib :: proc(n: int) -> u64 {
    a: u64 = 0
    b: u64 = 1
    for _ in 0 ..< n {
        t := a + b
        a = b
        b = t
    }
    return a
}

main :: proc() {
    sum := 0
    for i in 1 ..= 10 {
        sum += i
    }
    fmt.println("Hello from Odin!")
    fmt.printf("sum(1..10) = %d\n", sum)
    fmt.printf("fib(10)    = %d\n", fib(10))
}
''',
    ),
    dict(
        name="Cuda", ext=".cu", comment="slash", year=2007, author="NVIDIA",
        paradigm="Data-parallel, heterogeneous",
        note="C++ extended with kernels that run across thousands of GPU threads.",
        code=r'''// polyglot-100 :: entry 009 :: CUDA C++
#include <cstdio>

__global__ void sums(int *out) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < 10) atomicAdd(out, i + 1);
}

__host__ long fib(int n) {
    long a = 0, b = 1;
    for (int i = 0; i < n; ++i) { long t = a + b; a = b; b = t; }
    return a;
}

int main() {
    int *d = nullptr, host = 0;
    cudaMalloc(&d, sizeof(int));
    cudaMemset(d, 0, sizeof(int));
    sums<<<1, 32>>>(d);
    cudaMemcpy(&host, d, sizeof(int), cudaMemcpyDeviceToHost);
    cudaFree(d);
    printf("Hello from CUDA!\n");
    printf("sum(1..10) = %d\n", host);
    printf("fib(10)    = %ld\n", fib(10));
    return 0;
}
''',
    ),
    dict(
        name="Assembly", ext=".asm", comment="semi", year=1949,
        author="Kathleen Booth (early assemblers)",
        paradigm="Imperative, machine-level",
        note="One mnemonic per instruction. This is x86-64 for NASM on Linux.",
        code=r'''; polyglot-100 :: entry 010 :: x86-64 Assembly (NASM, Linux)
section .data
    msg  db "Hello from Assembly!", 10
    mlen equ $ - msg
    sum  db "sum(1..10) = 55", 10
    slen equ $ - sum
    fibm db "fib(10)    = 55", 10
    flen equ $ - fibm

section .text
    global _start

_start:
    xor ecx, ecx                ; i = 0
    xor eax, eax                ; acc = 0
.loop:
    inc ecx
    add eax, ecx
    cmp ecx, 10
    jl .loop                    ; acc = 55

    mov rbx, 0                  ; fib: a = 0
    mov rdx, 1                  ; b = 1
    mov esi, 10
.fib:
    mov rdi, rbx
    add rdi, rdx
    mov rbx, rdx
    mov rdx, rdi
    dec esi
    jnz .fib                    ; rbx = 55

    mov eax, 1
    mov edi, 1
    mov rsi, msg
    mov edx, mlen
    syscall
    mov eax, 1
    mov rsi, sum
    mov edx, slen
    syscall
    mov eax, 1
    mov rsi, fibm
    mov edx, flen
    syscall
    mov eax, 60
    xor edi, edi
    syscall
''',
    ),
]
