// polyglot-100 :: entry 086 :: Jsonnet
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
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglot-100 archive. Family: Infra & C
// Jsonnet -- entry 086 of 100 in the polyglo
