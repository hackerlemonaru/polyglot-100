"""Family 09 -- Infra & Config."""

FAMILY = "Infra & Config"

LANGS = [
    dict(
        name="Makefile", ext=".mk", comment="hash", year=1976, author="Stuart Feldman",
        paradigm="Declarative dependency rules",
        note="Recipe lines must begin with a literal tab, a rule that has tripped up everyone.",
        code='''# polyglot-100 :: entry 081 :: Make
SHELL      := /bin/sh
ENTRIES    := 100
TARGET     := 4096
TOTAL      := $(shell expr $(ENTRIES) \\* $(TARGET))

.PHONY: all build verify clean checksum
all: build verify

build:
\t@python3 tools/build.py --target-bytes $(TARGET)

verify:
\t@python3 tools/verify.py

checksum:
\t@awk 'BEGIN { s = 0; for (i = 1; i <= 10; i++) s += i; \\
\t              a = 0; b = 1; \\
\t              for (k = 0; k < 10; k++) { t = a + b; a = b; b = t } \\
\t              printf "Hello from Make!\\nsum(1..10) = %d\\nfib(10) = %d\\n", s, a }'

clean:
\t@rm -rf langs
\t@echo "removed generated exhibits; counted bytes would be $(TOTAL)"
''',
    ),
    dict(
        name="CMake", ext=".cmake", comment="hash", year=2000, author="Bill Hoffman / Kitware",
        paradigm="Declarative build description",
        note="Generates native build systems; modern CMake thinks in targets and properties.",
        code=r'''# polyglot-100 :: entry 082 :: CMake
cmake_minimum_required(VERSION 3.20)

set(POLYGLOT_ENTRIES 100 CACHE STRING "number of language exhibits")
set(POLYGLOT_TARGET_BYTES 4096 CACHE STRING "bytes per exhibit")

function(polyglot_fib out_var n)
  set(a 0)
  set(b 1)
  foreach(k RANGE 1 ${n})
    math(EXPR t "${a} + ${b}")
    set(a ${b})
    set(b ${t})
  endforeach()
  set(${out_var} ${a} PARENT_SCOPE)
endfunction()

set(POLYGLOT_SUM 0)
foreach(i RANGE 1 10)
  math(EXPR POLYGLOT_SUM "${POLYGLOT_SUM} + ${i}")
endforeach()

polyglot_fib(POLYGLOT_FIB 10)

message(STATUS "Hello from CMake!")
message(STATUS "sum(1..10) = ${POLYGLOT_SUM}")
message(STATUS "fib(10)    = ${POLYGLOT_FIB}")

if(NOT POLYGLOT_SUM EQUAL POLYGLOT_FIB)
  message(FATAL_ERROR "the 55 coincidence failed")
endif()
''',
    ),
    dict(
        name="Dockerfile", ext=".dockerfile", comment="hash", year=2013,
        author="Solomon Hykes / Docker",
        paradigm="Declarative image build",
        note="Each instruction is a cached layer; multi-stage builds keep the final image small.",
        code=r'''# syntax=docker/dockerfile:1.7
# polyglot-100 :: entry 083 :: Dockerfile
FROM python:3.13-slim AS build

WORKDIR /src
COPY tools/ ./tools/
RUN python3 tools/build.py --target-bytes 4096 \
 && python3 tools/verify.py

FROM alpine:3.20 AS runtime
LABEL org.opencontainers.image.title="polyglot-100"
LABEL org.opencontainers.image.description="100 languages at exactly 1% each"

ARG ENTRIES=100
ENV POLYGLOT_ENTRIES=${ENTRIES} \
    POLYGLOT_CHECKSUM=55

WORKDIR /archive
COPY --from=build /src/langs/ ./langs/
COPY --from=build /src/MANIFEST.json ./

RUN echo "Hello from Dockerfile!" \
 && echo "sum(1..10) = 55" \
 && echo "fib(10)    = ${POLYGLOT_CHECKSUM}"

CMD ["sh", "-c", "ls langs | wc -l"]
''',
    ),
    dict(
        name="Nix", ext=".nix", comment="hash", year=2003, author="Eelco Dolstra",
        paradigm="Purely functional, lazy configuration",
        note="Builds are reproducible because every input is hashed into the store path.",
        code=r'''# polyglot-100 :: entry 084 :: Nix
{
  entries ? 100,
  targetBytes ? 4096,
}:

let
  fib =
    n:
    let
      go = a: b: k: if k == 0 then a else go b (a + b) (k - 1);
    in
    go 0 1 n;

  range = n: builtins.genList (i: i + 1) n;
  sum = xs: builtins.foldl' (acc: x: acc + x) 0 xs;

  total = sum (range 10);
  fibTen = fib 10;
in
{
  greeting = "Hello from Nix!";
  sumOneToTen = total;
  inherit fibTen;
  checksum = total - fibTen;

  countedBytes = entries * targetBytes;
  sharePerLanguage = 100.0 / entries;

  assertion =
    assert total == fibTen;
    "the 55 coincidence holds";
}
''',
    ),
    dict(
        name="HCL", ext=".tf", comment="hash", year=2014, author="Mitchell Hashimoto / HashiCorp",
        paradigm="Declarative configuration",
        note="Human-readable configuration that is also valid JSON; the language of Terraform.",
        code=r'''# polyglot-100 :: entry 085 :: HCL / Terraform
terraform {
  required_version = ">= 1.6.0"
}

variable "entries" {
  type        = number
  default     = 100
  description = "Number of language exhibits."
}

variable "target_bytes" {
  type    = number
  default = 4096
}

locals {
  naturals = range(1, 11)
  total    = sum(local.naturals)

  # Binet's formula, because HCL has no fold: F(n) = (phi^n - psi^n) / sqrt(5).
  sqrt5   = sqrt(5)
  phi     = (1 + sqrt(5)) / 2
  psi     = (1 - sqrt(5)) / 2
  fib_ten = floor((pow(local.phi, 10) - pow(local.psi, 10)) / local.sqrt5 + 0.5)

  greeting = "Hello from HCL!"
  checksum = local.total - local.fib_ten
}

output "greeting" {
  value = local.greeting
}

output "sum_one_to_ten" {
  value = local.total
}

output "counted_bytes" {
  value = var.entries * var.target_bytes
}
''',
    ),
    dict(
        name="Jsonnet", ext=".jsonnet", comment="slash", year=2014, author="Dave Cunningham / Google",
        paradigm="Functional data templating",
        note="JSON with functions, laziness and inheritance; it always evaluates to plain JSON.",
        code=r'''// polyglot-100 :: entry 086 :: Jsonnet
local fib(n) =
  local go(a, b, k) = if k == 0 then a else go(b, a + b, k - 1);
  go(0, 1, n);

local total = std.foldl(function(acc, x) acc + x, std.range(1, 10), 0);

local entry(i, name) = {
  index: i,
  language: name,
  bytes: 4096,
  share: '1.00%',
};

{
  greeting: 'Hello from Jsonnet!',
  sumOneToTen: total,
  fibTen: fib(10),
  checksum: total - fib(10),
  entries: 100,
  countedBytes: 100 * 4096,
  self_entry: entry(86, 'Jsonnet'),
  languages: [entry(i, 'language-%03d' % i) for i in std.range(1, 5)],
  assert total == fib(10) : 'the 55 coincidence failed',
}
''',
    ),
    dict(
        name="YAML", ext=".yaml", comment="hash", year=2001,
        author="Clark Evans, Ingy döt Net, Oren Ben-Kiki",
        paradigm="Declarative data serialisation",
        note="Anchors and aliases give it references; significant whitespace gives it debates.",
        code=r'''# polyglot-100 :: entry 087 :: YAML
---
archive: polyglot-100
concept: 100 languages, identical byte counts, exactly one percent each
entries: 100
bytes_per_entry: &bytes 4096
counted_bytes: 409600

canonical_task:
  greeting: "Hello from YAML!"
  operations:
    - id: sum
      range: [1, 10]
      result: &checksum 55
    - id: fib
      index: 10
      result: *checksum
  difference: 0

self_entry:
  index: 87
  language: YAML
  family: Infra & Config
  first_appeared: 2001
  bytes: *bytes
  share_percent: 1.00

families:
  - { id: 1, name: Systems & Native, count: 10 }
  - { id: 9, name: Infra & Config, count: 10 }
...
''',
    ),
    dict(
        name="TOML", ext=".toml", comment="hash", year=2013, author="Tom Preston-Werner",
        paradigm="Declarative configuration",
        note="Designed to map unambiguously to a hash table; the default for Rust and Python tooling.",
        code=r'''# polyglot-100 :: entry 088 :: TOML
title = "polyglot-100"
concept = "100 languages at exactly 1% each"
entries = 100
bytes_per_entry = 4_096
counted_bytes = 409_600
created = 2026-11-06T00:00:00Z

[canonical_task]
greeting = "Hello from TOML!"
sum_one_to_ten = 55
fib_ten = 55
checksum = 0

[self_entry]
index = 88
language = "TOML"
family = "Infra & Config"
first_appeared = 2013
share_percent = 1.00

[[family]]
id = 1
name = "Systems & Native"
count = 10

[[family]]
id = 9
name = "Infra & Config"
count = 10

[metadata.limits]
per_file_hard_block_mib = 100
recommended_repo_gb = 1
''',
    ),
    dict(
        name="Dhall", ext=".dhall", comment="dash", year=2017, author="Gabriel Gonzalez",
        paradigm="Total functional configuration",
        note="Programmable but deliberately not Turing-complete, so it always terminates.",
        code=r'''-- polyglot-100 :: entry 089 :: Dhall
-- Natural/fold is a language built-in, so this file needs no imports.
let Pair = { a : Natural, b : Natural }

let fib
    : Natural -> Natural
    = \(n : Natural) ->
        ( Natural/fold
            n
            Pair
            (\(s : Pair) -> { a = s.b, b = s.a + s.b })
            { a = 0, b = 1 }
        ).a

let Counter = { n : Natural, acc : Natural }

let total
    : Natural
    = ( Natural/fold
          10
          Counter
          ( \(s : Counter) ->
              { n = s.n + 1, acc = s.acc + s.n + 1 }
          )
          { n = 0, acc = 0 }
      ).acc

let Entry = { index : Natural, language : Text, bytes : Natural }

in  { greeting = "Hello from Dhall!"
    , sumOneToTen = total
    , fibTen = fib 10
    , entries = 100
    , bytesPerEntry = 4096
    , selfEntry = { index = 89, language = "Dhall", bytes = 4096 } : Entry
    }
''',
    ),
    dict(
        name="Protocol Buffer", linguist="protobuf", ext=".proto", comment="slash", year=2008,
        author="Kenton Varda, Sanjay Ghemawat / Google",
        paradigm="Interface definition, binary serialisation",
        note="Field numbers, not field names, are what actually travel over the wire.",
        code=r'''// polyglot-100 :: entry 090 :: Protocol Buffers (proto3)
syntax = "proto3";

package polyglot.v1;

option go_package = "github.com/hackerlemonaru/polyglot-100/gen/go/polyglotv1";

message CanonicalTask {
  string greeting = 1;
  int64 sum_one_to_ten = 2;
  int64 fib_ten = 3;
  int64 checksum = 4;
}

message Entry {
  uint32 index = 1;
  string language = 2;
  string family = 3;
  uint32 bytes = 4;
  double share_percent = 5;
  uint32 first_appeared = 6;
}

message Archive {
  uint32 entries = 1;
  uint32 bytes_per_entry = 2;
  repeated Entry exhibits = 3;
  CanonicalTask task = 4;
}

service ArchiveService {
  rpc GetEntry(GetEntryRequest) returns (Entry);
  rpc ListEntries(ListEntriesRequest) returns (Archive);
}

message GetEntryRequest { uint32 index = 1; }
message ListEntriesRequest { uint32 page_size = 1; }
''',
    ),
]
