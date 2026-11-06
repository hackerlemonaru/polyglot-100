# polyglot-100 :: entry 037 :: Elixir
defmodule Polyglot do
  @moduledoc "Entry 037 of the polyglot-100 archive."

  def fibs do
    Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end

  def fib(n), do: fibs() |> Enum.at(n)

  def run do
    total = 1..10 |> Enum.sum()
    IO.puts("Hello from Elixir!")
    IO.puts("sum(1..10) = #{total}")
    IO.puts("fib(10)    = #{fib(10)}")
    ^total = fib(10)
    :ok
  end
end

Polyglot.run()
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Family: Functional.
# Elixir -- entry 037 of 100 in the polyglot-100 archive. Fam
