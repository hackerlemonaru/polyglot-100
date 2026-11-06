#!/usr/bin/env bash
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
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive. Family: Web & Script
# Shell -- entry 030 of 100 in the polyglot-100 archive
