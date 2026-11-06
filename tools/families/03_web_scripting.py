"""Family 03 -- Web & Scripting."""

FAMILY = "Web & Scripting"

LANGS = [
    dict(
        name="JavaScript", ext=".js", comment="slash", year=1995, author="Brendan Eich",
        paradigm="Multi-paradigm, prototype-based, dynamic",
        note="Written in ten days, now the only language every browser runs natively.",
        code=r'''// polyglot-100 :: entry 021 :: JavaScript
function* fibs() {
  let [a, b] = [0n, 1n];
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

function fib(n) {
  const it = fibs();
  let value;
  for (let i = 0; i <= n; i++) value = it.next().value;
  return value;
}

const sum = Array.from({ length: 10 }, (_, i) => i + 1)
  .reduce((acc, x) => acc + x, 0);

console.log("Hello from JavaScript!");
console.log(`sum(1..10) = ${sum}`);
console.log(`fib(10)    = ${fib(10)}`);
console.assert(BigInt(sum) === fib(10), "the 55 coincidence");
''',
    ),
    dict(
        name="TypeScript", ext=".ts", comment="slash", year=2012, author="Anders Hejlsberg / Microsoft",
        paradigm="Static superset of JavaScript",
        note="Structural typing and type inference; the types vanish at runtime.",
        code=r'''// polyglot-100 :: entry 022 :: TypeScript
type Pair = readonly [bigint, bigint];

function* fibs(): Generator<bigint, never, unknown> {
  let pair: Pair = [0n, 1n];
  for (;;) {
    yield pair[0];
    pair = [pair[1], pair[0] + pair[1]] as const;
  }
}

function fib(n: number): bigint {
  let out = 0n;
  const it = fibs();
  for (let i = 0; i <= n; i++) out = it.next().value as bigint;
  return out;
}

const sum: number = Array.from({ length: 10 }, (_, i) => i + 1)
  .reduce((a: number, b: number) => a + b, 0);

console.log("Hello from TypeScript!");
console.log(`sum(1..10) = ${sum}`);
console.log(`fib(10)    = ${fib(10)}`);
''',
    ),
    dict(
        name="Python", ext=".py", comment="hash", year=1991, author="Guido van Rossum",
        paradigm="Multi-paradigm, dynamic, interpreted",
        note="Indentation is syntax. The reference implementation is CPython.",
        code=r'''#!/usr/bin/env python3
"""polyglot-100 :: entry 023 :: Python"""
from functools import lru_cache
from itertools import islice


def fibs():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b


@lru_cache(maxsize=None)
def fib(n: int) -> int:
    return next(islice(fibs(), n, None))


def main() -> None:
    total = sum(range(1, 11))
    print("Hello from Python!")
    print(f"sum(1..10) = {total}")
    print(f"fib(10)    = {fib(10)}")
    assert total == fib(10), "the 55 coincidence"


if __name__ == "__main__":
    main()
''',
    ),
    dict(
        name="Ruby", ext=".rb", comment="hash", year=1995, author="Yukihiro Matsumoto",
        paradigm="Object-oriented, dynamic, reflective",
        note="Everything is an object, including integers and nil; blocks are pervasive.",
        code=r'''#!/usr/bin/env ruby
# polyglot-100 :: entry 024 :: Ruby
# frozen_string_literal: true

FIBS = Enumerator.new do |y|
  a, b = 0, 1
  loop do
    y << a
    a, b = b, a + b
  end
end

def fib(n) = FIBS.take(n + 1).last

total = (1..10).sum
puts 'Hello from Ruby!'
puts "sum(1..10) = #{total}"
puts "fib(10)    = #{fib(10)}"
raise 'the 55 coincidence failed' unless total == fib(10)
''',
    ),
    dict(
        name="PHP", ext=".php", comment="slash", year=1995, author="Rasmus Lerdorf",
        paradigm="Multi-paradigm, server-side scripting",
        note="Began as a set of Perl scripts for tracking visits to a personal homepage.",
        code=r'''<?php
// polyglot-100 :: entry 025 :: PHP
declare(strict_types=1);

function fibs(): Generator
{
    [$a, $b] = [0, 1];
    while (true) {
        yield $a;
        [$a, $b] = [$b, $a + $b];
    }
}

function fib(int $n): int
{
    foreach (fibs() as $i => $value) {
        if ($i === $n) {
            return $value;
        }
    }
    return 0;
}

$sum = array_sum(range(1, 10));
echo "Hello from PHP!\n";
printf("sum(1..10) = %d\n", $sum);
printf("fib(10)    = %d\n", fib(10));
assert($sum === fib(10));
''',
    ),
    dict(
        name="Perl", ext=".pl", comment="hash", year=1987, author="Larry Wall",
        paradigm="Multi-paradigm, text-processing",
        note="There is more than one way to do it; regular expressions are built into the syntax.",
        code=r'''#!/usr/bin/env perl
# polyglot-100 :: entry 026 :: Perl
use strict;
use warnings;
use feature 'say';
use List::Util qw(sum);

sub fib {
    my ($n) = @_;
    my ($a, $b) = (0, 1);
    for (1 .. $n) {
        ($a, $b) = ($b, $a + $b);
    }
    return $a;
}

my $total = sum(1 .. 10);
say "Hello from Perl!";
say "sum(1..10) = $total";
printf "fib(10)    = %d\n", fib(10);
die "the 55 coincidence failed\n" unless $total == fib(10);
''',
    ),
    dict(
        name="Lua", ext=".lua", comment="dash", year=1993,
        author="Roberto Ierusalimschy, Luiz Henrique de Figueiredo, Waldemar Celes",
        paradigm="Multi-paradigm, lightweight, embeddable",
        note="The whole interpreter is small enough to embed in games, editors and routers.",
        code=r'''-- polyglot-100 :: entry 027 :: Lua
local function fibs()
  local a, b = 0, 1
  return coroutine.wrap(function()
    while true do
      coroutine.yield(a)
      a, b = b, a + b
    end
  end)
end

local function fib(n)
  local value = 0
  local it = fibs()
  for _ = 0, n do value = it() end
  return value
end

local sum = 0
for i = 1, 10 do sum = sum + i end

print("Hello from Lua!")
print(string.format("sum(1..10) = %d", sum))
print(string.format("fib(10)    = %d", fib(10)))
assert(sum == fib(10), "the 55 coincidence")
''',
    ),
    dict(
        name="Dart", ext=".dart", comment="slash", year=2011, author="Lars Bak, Kasper Lund / Google",
        paradigm="Object-oriented, client-optimised",
        note="Compiles ahead-of-time for Flutter and to JavaScript for the web.",
        code=r'''// polyglot-100 :: entry 028 :: Dart
Iterable<BigInt> fibs() sync* {
  var a = BigInt.zero, b = BigInt.one;
  while (true) {
    yield a;
    final t = a + b;
    a = b;
    b = t;
  }
}

BigInt fib(int n) => fibs().elementAt(n);

void main() {
  final sum = List.generate(10, (i) => i + 1).reduce((a, b) => a + b);
  print('Hello from Dart!');
  print('sum(1..10) = $sum');
  print('fib(10)    = ${fib(10)}');
  assert(BigInt.from(sum) == fib(10));
}
''',
    ),
    dict(
        name="CoffeeScript", ext=".coffee", comment="hash", year=2009, author="Jeremy Ashkenas",
        paradigm="Compiles to JavaScript, dynamic",
        note="Its syntax pushed arrow functions and classes into mainstream JavaScript.",
        code=r'''# polyglot-100 :: entry 029 :: CoffeeScript
fib = (n) ->
  [a, b] = [0, 1]
  [a, b] = [b, a + b] for _ in [0...n]
  a

sum = (i for i in [1..10]).reduce (a, b) -> a + b

console.log "Hello from CoffeeScript!"
console.log "sum(1..10) = #{sum}"
console.log "fib(10)    = #{fib 10}"
console.assert sum is fib(10), "the 55 coincidence"
''',
    ),
    dict(
        name="Shell", ext=".sh", comment="hash", year=1977, author="Stephen Bourne",
        paradigm="Command language, glue",
        note="Pipelines of small programs; the Bourne shell begat bash, ksh, zsh and dash.",
        code=r'''#!/usr/bin/env bash
# polyglot-100 :: entry 030 :: POSIX-flavoured Bash
set -euo pipefail

fib() {
  local n=$1 a=0 b=1 t i
  for ((i = 0; i < n; i++)); do
    t=$((a + b))
    a=$b
    b=$t
  done
  printf '%s\n' "$a"
}

sum=0
for i in $(seq 1 10); do
  sum=$((sum + i))
done

printf 'Hello from Shell!\n'
printf 'sum(1..10) = %s\n' "$sum"
printf 'fib(10)    = %s\n' "$(fib 10)"
[[ "$sum" -eq "$(fib 10)" ]] || { echo "55 check failed" >&2; exit 1; }
''',
    ),
]
