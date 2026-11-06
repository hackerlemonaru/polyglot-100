#!/usr/bin/env python3
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
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the polyglot-100 archive. Family: Web & Scrip
# Python -- entry 023 of 100 in the
