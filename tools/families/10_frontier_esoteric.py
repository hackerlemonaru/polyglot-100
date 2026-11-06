"""Family 10 -- Frontier & Esoteric."""

FAMILY = "Frontier & Esoteric"


def _brainfuck(text: str) -> str:
    """Emit Brainfuck that prints `text` by walking one cell up and down."""
    out, cur = [], 0
    for ch in text:
        delta = ord(ch) - cur
        if delta:
            out.append(("+" if delta > 0 else "-") * abs(delta))
        out.append(".")
        cur = ord(ch)
    flat = "".join(out)
    return "\n".join(flat[i:i + 72] for i in range(0, len(flat), 72))


# Brainfuck treats every character outside + - < > [ ] . , as a comment, so the
# header below deliberately avoids all eight command characters.
_BF_HEADER = "POLYGLOT 100 ENTRY 099 BRAINFUCK\nPRINTS THE GREETING THEN BOTH RESULTS\n"

LANGS = [
    dict(
        name="Solidity", ext=".sol", comment="slash", year=2014,
        author="Gavin Wood, Christian Reitwiessner",
        paradigm="Contract-oriented, statically typed, EVM bytecode",
        note="Every state change costs gas, so loops are written with care.",
        code=r'''// SPDX-License-Identifier: MIT
// polyglot-100 :: entry 091 :: Solidity
pragma solidity ^0.8.24;

/// @title The canonical polyglot-100 task, on-chain.
contract Polyglot {
    uint256 public constant ENTRIES = 100;
    uint256 public constant BYTES_PER_ENTRY = 4096;

    event Computed(uint256 total, uint256 fibTen);

    function fib(uint256 n) public pure returns (uint256 a) {
        uint256 b = 1;
        for (uint256 i = 0; i < n; ++i) {
            uint256 t = a + b;
            a = b;
            b = t;
        }
    }

    function sumTo(uint256 n) public pure returns (uint256 total) {
        for (uint256 i = 1; i <= n; ++i) {
            total += i;
        }
    }

    function greeting() external pure returns (string memory) {
        return "Hello from Solidity!";
    }

    function run() external returns (uint256, uint256) {
        uint256 total = sumTo(10);
        uint256 f = fib(10);
        require(total == f, "the 55 coincidence failed");
        emit Computed(total, f);
        return (total, f);
    }
}
''',
    ),
    dict(
        name="Move", ext=".move", comment="slash", year=2019,
        author="Sam Blackshear / Facebook (Libra)",
        paradigm="Resource-oriented, linear types",
        note="Resources cannot be copied or implicitly dropped, which makes double-spending unrepresentable.",
        code=r'''// polyglot-100 :: entry 092 :: Move
module polyglot::archive {
    use std::debug;

    const ENTRIES: u64 = 100;
    const BYTES_PER_ENTRY: u64 = 4096;
    const E_CHECKSUM: u64 = 1;

    public fun fib(n: u64): u64 {
        let a = 0u64;
        let b = 1u64;
        let i = 0u64;
        while (i < n) {
            let t = a + b;
            a = b;
            b = t;
            i = i + 1;
        };
        a
    }

    public fun sum_to(n: u64): u64 {
        let total = 0u64;
        let i = 1u64;
        while (i <= n) {
            total = total + i;
            i = i + 1;
        };
        total
    }

    public entry fun run() {
        let total = sum_to(10);
        let f = fib(10);
        assert!(total == f, E_CHECKSUM);
        debug::print(&b"Hello from Move!");
        debug::print(&total);
        debug::print(&f);
    }

    #[test]
    fun fifty_five() {
        assert!(fib(10) == 55, E_CHECKSUM);
        assert!(sum_to(10) == 55, E_CHECKSUM);
    }
}
''',
    ),
    dict(
        name="Cairo", ext=".cairo", comment="slash", year=2020, author="StarkWare",
        paradigm="Provable computation, statically typed",
        note="Programs compile to a trace that can be turned into a STARK proof of correct execution.",
        code=r'''// polyglot-100 :: entry 093 :: Cairo
const ENTRIES: u32 = 100;
const BYTES_PER_ENTRY: u32 = 4096;

fn fib(n: u32) -> u64 {
    let mut a: u64 = 0;
    let mut b: u64 = 1;
    let mut i: u32 = 0;
    loop {
        if i >= n {
            break;
        }
        let t = a + b;
        a = b;
        b = t;
        i += 1;
    };
    a
}

fn sum_to(n: u64) -> u64 {
    let mut total: u64 = 0;
    let mut i: u64 = 1;
    loop {
        if i > n {
            break;
        }
        total += i;
        i += 1;
    };
    total
}

fn main() {
    let total = sum_to(10);
    let f = fib(10);
    println!("Hello from Cairo!");
    println!("sum(1..10) = {}", total);
    println!("fib(10)    = {}", f);
    assert(total == f, 'the 55 coincidence failed');
}

#[cfg(test)]
mod tests {
    use super::fib;

    #[test]
    fn tenth_is_fifty_five() {
        assert(fib(10) == 55, 'bad fib');
    }
}
''',
    ),
    dict(
        name="WebAssembly", ext=".wat", comment="dsemi", year=2017,
        author="W3C WebAssembly Community Group",
        paradigm="Stack machine, portable binary format",
        note="This is the human-readable text form; wat2wasm turns it into the binary format.",
        code=r''';; polyglot-100 :: entry 094 :: WebAssembly text format
;; Run: wasmtime polyglot.wat --invoke fib 10
(module $polyglot
  (memory (export "memory") 1)

  ;; fib(n) -> the nth Fibonacci number, iteratively
  (func $fib (export "fib") (param $n i32) (result i64)
    (local $a i64) (local $b i64) (local $t i64) (local $i i32)
    (local.set $a (i64.const 0))
    (local.set $b (i64.const 1))
    (block $done
      (loop $again
        (br_if $done (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $t (i64.add (local.get $a) (local.get $b)))
        (local.set $a (local.get $b))
        (local.set $b (local.get $t))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $again)))
    (local.get $a))

  ;; sum_to(n) -> 1 + 2 + ... + n
  (func $sum_to (export "sum_to") (param $n i32) (result i64)
    (local $acc i64) (local $i i32)
    (local.set $i (i32.const 1))
    (block $done
      (loop $again
        (br_if $done (i32.gt_s (local.get $i) (local.get $n)))
        (local.set $acc
          (i64.add (local.get $acc) (i64.extend_i32_s (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $again)))
    (local.get $acc))

  ;; _start stores both results in linear memory: 55 at 0, 55 at 8.
  (func $_start (export "_start")
    (i64.store (i32.const 0) (call $sum_to (i32.const 10)))
    (i64.store (i32.const 8) (call $fib (i32.const 10))))
)
''',
    ),
    dict(
        name="LLVM", ext=".ll", comment="semi", year=2003,
        author="Chris Lattner, Vikram Adve",
        paradigm="Static single assignment intermediate representation",
        note="The shared backend behind Clang, Rust, Swift, Julia and many more.",
        code=r'''; polyglot-100 :: entry 095 :: LLVM IR (opaque pointers)
; Run: clang polyglot.ll -o polyglot && ./polyglot

@greet = private unnamed_addr constant [18 x i8] c"Hello from LLVM!\0A\00"
@sumfmt = private unnamed_addr constant [17 x i8] c"sum(1..10) = %d\0A\00"
@fibfmt = private unnamed_addr constant [17 x i8] c"fib(10)    = %d\0A\00"

declare i32 @printf(ptr, ...)

define i32 @main() {
entry:
  br label %sum.loop

sum.loop:
  %i = phi i32 [ 1, %entry ], [ %i.next, %sum.loop ]
  %acc = phi i32 [ 0, %entry ], [ %acc.next, %sum.loop ]
  %acc.next = add i32 %acc, %i
  %i.next = add i32 %i, 1
  %more = icmp sle i32 %i.next, 10
  br i1 %more, label %sum.loop, label %fib.prep

fib.prep:
  br label %fib.loop

fib.loop:
  %a = phi i64 [ 0, %fib.prep ], [ %b, %fib.loop ]
  %b = phi i64 [ 1, %fib.prep ], [ %t, %fib.loop ]
  %k = phi i32 [ 0, %fib.prep ], [ %k.next, %fib.loop ]
  %t = add i64 %a, %b
  %k.next = add i32 %k, 1
  %again = icmp slt i32 %k.next, 10
  br i1 %again, label %fib.loop, label %report

report:
  %p0 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([18 x i8], ptr @greet, i64 0, i64 0))
  %p1 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([17 x i8], ptr @sumfmt, i64 0, i64 0),
    i32 %acc.next)
  %f = trunc i64 %a to i32
  %p2 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([17 x i8], ptr @fibfmt, i64 0, i64 0),
    i32 %f)
  ret i32 0
}
''',
    ),
    dict(
        name="GLSL", ext=".glsl", comment="slash", year=2004, author="3Dlabs / OpenGL ARB",
        paradigm="Data-parallel shader, C-like",
        note="Runs once per fragment on the GPU; the checksum is encoded into the output colour.",
        code=r'''// polyglot-100 :: entry 096 :: GLSL fragment shader
#version 330 core

out vec4 fragColor;
uniform vec2 uResolution;

const int ENTRIES = 100;

int sumTo(int n) {
    int acc = 0;
    for (int i = 1; i <= n; ++i) acc += i;
    return acc;
}

int fib(int n) {
    int a = 0, b = 1;
    for (int i = 0; i < n; ++i) {
        int t = a + b;
        a = b;
        b = t;
    }
    return a;
}

vec3 hue(float h) {
    vec3 k = mod(vec3(5.0, 3.0, 1.0) + h * 6.0, 6.0);
    return 1.0 - clamp(min(k, 4.0 - k), 0.0, 1.0);
}

void main() {
    int total = sumTo(10);
    int f = fib(10);
    float slice = floor(gl_FragCoord.x / uResolution.x * float(ENTRIES));
    vec3 base = hue(slice / float(ENTRIES));
    float ok = (total == f) ? 1.0 : 0.0;
    fragColor = vec4(base * (0.35 + 0.65 * ok), 1.0);
}
''',
    ),
    dict(
        name="Verilog", ext=".v", comment="slash", year=1984,
        author="Phil Moorby / Gateway Design Automation",
        paradigm="Hardware description, event-driven",
        note="Describes circuits, not instructions; every always block is hardware that exists at once.",
        code=r'''// polyglot-100 :: entry 097 :: Verilog-2001 testbench
`timescale 1ns / 1ps

module polyglot;
  integer total;
  integer a, b, t;
  integer i, k;

  // Combinational Fibonacci, unrolled into a single function.
  function integer fib(input integer n);
    integer fa, fb, ft, j;
    begin
      fa = 0;
      fb = 1;
      for (j = 0; j < n; j = j + 1) begin
        ft = fa + fb;
        fa = fb;
        fb = ft;
      end
      fib = fa;
    end
  endfunction

  initial begin
    total = 0;
    for (i = 1; i <= 10; i = i + 1) total = total + i;

    a = 0; b = 1;
    for (k = 0; k < 10; k = k + 1) begin
      t = a + b;
      a = b;
      b = t;
    end

    $display("Hello from Verilog!");
    $display("sum(1..10) = %0d", total);
    $display("fib(10)    = %0d", a);
    if (total !== fib(10)) $display("the 55 coincidence failed");
    $finish;
  end
endmodule
''',
    ),
    dict(
        name="VHDL", ext=".vhdl", comment="dash", year=1983, author="US DoD VHSIC program",
        paradigm="Hardware description, strongly typed",
        note="Ada-inspired and verbose by design: ambiguity is expensive in silicon.",
        code=r'''-- polyglot-100 :: entry 098 :: VHDL-2008
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity polyglot is
end entity polyglot;

architecture behavioural of polyglot is

  function fib(n : natural) return natural is
    variable a : natural := 0;
    variable b : natural := 1;
    variable t : natural;
  begin
    for i in 1 to n loop
      t := a + b;
      a := b;
      b := t;
    end loop;
    return a;
  end function fib;

begin

  stimulus : process is
    variable total : natural := 0;
    variable l     : line;
  begin
    for i in 1 to 10 loop
      total := total + i;
    end loop;

    write(l, string'("Hello from VHDL!"));
    writeline(output, l);
    write(l, string'("sum(1..10) = "));
    write(l, total);
    writeline(output, l);
    write(l, string'("fib(10)    = "));
    write(l, fib(10));
    writeline(output, l);

    assert total = fib(10)
      report "the 55 coincidence failed"
      severity error;

    wait;
  end process stimulus;

end architecture behavioural;
''',
    ),
    dict(
        name="Brainfuck", ext=".bf", comment="bf", year=1993, author="Urban Müller",
        paradigm="Esoteric, Turing-complete, eight instructions",
        note="The entire language is eight characters; everything else, including this text, is a comment.",
        code=_BF_HEADER + _brainfuck("POLYGLOT 55 55\n") + "\n",
    ),
    dict(
        name="LOLCODE", ext=".lol", comment="lol", year=2007, author="Adam Lindsay",
        paradigm="Esoteric, lolcat-inspired",
        note="Programs open with HAI and close with KTHXBYE. Variable scope is function-wide.",
        code=r'''HAI 1.2
CAN HAS STDIO?
BTW polyglot 100 entry 100 LOLCODE

I HAS A TOTAL ITZ 0
I HAS A IDX ITZ 0
IM IN YR SUMZ UPPIN YR IDX TIL BOTH SAEM IDX AN 10
    TOTAL R SUM OF TOTAL AN SUM OF IDX AN 1
IM OUTTA YR SUMZ

I HAS A A ITZ 0
I HAS A B ITZ 1
I HAS A K ITZ 0
IM IN YR FIBZ UPPIN YR K TIL BOTH SAEM K AN 10
    I HAS A T ITZ SUM OF A AN B
    A R B
    B R T
IM OUTTA YR FIBZ

VISIBLE "Hello from LOLCODE!"
VISIBLE SMOOSH "sum(1..10) = " AN TOTAL MKAY
VISIBLE SMOOSH "fib(10)    = " AN A MKAY

BOTH SAEM TOTAL AN A, O RLY?
    YA RLY
        VISIBLE "both are 55"
    NO WAI
        VISIBLE "the 55 coincidence failed"
OIC

KTHXBYE
''',
    ),
]
