%% polyglot-100 :: entry 036 :: Erlang
-module(polyglot).
-export([main/0, fib/1]).

fib(N) -> fib(N, 0, 1).

fib(0, A, _B) -> A;
fib(N, A, B) -> fib(N - 1, B, A + B).

sum_to(0, Acc) -> Acc;
sum_to(N, Acc) -> sum_to(N - 1, Acc + N).

main() ->
    Total = sum_to(10, 0),
    io:format("Hello from Erlang!~n"),
    io:format("sum(1..10) = ~p~n", [Total]),
    io:format("fib(10)    = ~p~n", [fib(10)]),
    Total = fib(10),
    ok.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functional.
% Erlang -- entry 036 of 100 in the polyglot-100 archive. Family: Functiona
