# polyglot-100 :: entry 081 :: Make
SHELL      := /bin/sh
ENTRIES    := 100
TARGET     := 4096
TOTAL      := $(shell expr $(ENTRIES) \* $(TARGET))

.PHONY: all build verify clean checksum
all: build verify

build:
	@python3 tools/build.py --target-bytes $(TARGET)

verify:
	@python3 tools/verify.py

checksum:
	@awk 'BEGIN { s = 0; for (i = 1; i <= 10; i++) s += i; \
	              a = 0; b = 1; \
	              for (k = 0; k < 10; k++) { t = a + b; a = b; b = t } \
	              printf "Hello from Make!\nsum(1..10) = %d\nfib(10) = %d\n", s, a }'

clean:
	@rm -rf langs
	@echo "removed generated exhibits; counted bytes would be $(TOTAL)"
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry 081 of 100 in the polyglot-100 archive. Family: Infra & C
# Makefile -- entry
