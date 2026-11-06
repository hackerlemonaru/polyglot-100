-- polyglot-100 :: entry 027 :: Lua
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
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Family: Web & Scripti
-- Lua -- entry 027 of 100 in the polyglot-100 archive. Fa
