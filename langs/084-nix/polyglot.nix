# polyglot-100 :: entry 084 :: Nix
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
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: Infra & Config
# Nix -- entry 084 of 100 in the polyglot-100 archive. Family: In
