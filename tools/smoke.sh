#!/usr/bin/env bash
# polyglot-100 smoke test.
#
# Runs every exhibit whose toolchain happens to be installed, and checks that
# the canonical checksum (55, twice) shows up in the output. Skips the rest
# rather than failing, so this is useful on any machine.
set -uo pipefail
cd "$(dirname "$0")/.."

pass=0; fail=0; skip=0
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

have() { command -v "$1" >/dev/null 2>&1; }

# check <label> <expected-greeting> <command...>
check() {
  local label="$1"; shift
  local out
  if ! out="$("$@" 2>&1)"; then
    printf '  FAIL  %-14s exited non-zero\n' "$label"
    printf '%s\n' "$out" | head -4 | sed 's/^/          /'
    fail=$((fail + 1)); return
  fi
  local hits
  hits="$(printf '%s\n' "$out" | grep -c '55' || true)"
  if [ "$hits" -ge 2 ]; then
    printf '  ok    %-14s %s\n' "$label" "$(printf '%s' "$out" | head -1)"
    pass=$((pass + 1))
  else
    printf '  FAIL  %-14s expected two 55s, saw %s\n' "$label" "$hits"
    printf '%s\n' "$out" | head -4 | sed 's/^/          /'
    fail=$((fail + 1))
  fi
}

echo "polyglot-100 smoke test"
echo

if have python3; then check Python python3 langs/023-python/polyglot.py
else skip=$((skip+1)); fi

if have node; then check JavaScript node langs/021-javascript/polyglot.js
else skip=$((skip+1)); fi

if have bash; then check Shell bash langs/030-shell/polyglot.sh
else skip=$((skip+1)); fi

if have perl; then check Perl perl langs/026-perl/polyglot.pl
else skip=$((skip+1)); fi

if have Rscript; then check R Rscript langs/054-r/polyglot.r
else skip=$((skip+1)); fi

if have tclsh; then check Tcl tclsh langs/049-tcl/polyglot.tcl
else skip=$((skip+1)); fi

if have make && have awk; then
  check Make make -s -f langs/081-makefile/polyglot.mk checksum
else skip=$((skip+1)); fi

if have cc; then
  if cc -O2 -o "$tmp/c" langs/001-c/polyglot.c 2>"$tmp/c.log"; then
    check C "$tmp/c"
  else printf '  FAIL  %-14s would not compile\n' C; fail=$((fail+1)); fi
else skip=$((skip+1)); fi

if have c++; then
  if c++ -std=c++20 -O2 -o "$tmp/cpp" langs/002-cplusplus/polyglot.cpp 2>"$tmp/cpp.log"; then
    check C++ "$tmp/cpp"
  else printf '  FAIL  %-14s would not compile\n' C++; fail=$((fail+1)); fi
else skip=$((skip+1)); fi

if have gfortran; then
  if gfortran -O2 -o "$tmp/f90" langs/062-fortran-free-form/polyglot.f90 2>"$tmp/f.log"; then
    check Fortran "$tmp/f90"
  else printf '  FAIL  %-14s would not compile\n' Fortran; fail=$((fail+1)); fi
else skip=$((skip+1)); fi

if have javac && have java; then
  if javac -d "$tmp/j" langs/011-java/polyglot.java 2>"$tmp/j.log"; then
    check Java java -cp "$tmp/j" polyglot
  else printf '  FAIL  %-14s would not compile\n' Java; fail=$((fail+1)); fi
else skip=$((skip+1)); fi

if have luac; then
  if luac -p langs/027-lua/polyglot.lua 2>/dev/null; then
    printf '  ok    %-14s syntax check only\n' Lua; pass=$((pass+1))
  else printf '  FAIL  %-14s syntax check\n' Lua; fail=$((fail+1)); fi
else skip=$((skip+1)); fi

echo
printf '%d passed, %d failed, %d toolchains not installed\n' "$pass" "$fail" "$skip"
[ "$fail" -eq 0 ]
