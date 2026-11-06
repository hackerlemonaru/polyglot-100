% polyglot-100 :: entry 069 :: Prolog
:- initialization(main).

fib(N, F) :- fib(N, 0, 1, F).
fib(0, A, _, A) :- !.
fib(N, A, B, F) :-
    N > 0,
    N1 is N - 1,
    C is A + B,
    fib(N1, B, C, F).

sum_to(0, 0) :- !.
sum_to(N, S) :-
    N > 0,
    N1 is N - 1,
    sum_to(N1, S1),
    S is S1 + N.

main :-
    sum_to(10, Total),
    fib(10, F),
    write('Hello from Prolog!'), nl,
    format('sum(1..10) = ~w~n', [Total]),
    format('fib(10)    = ~w~n', [F]),
    (   Total =:= F
    ->  true
    ;   write('the 55 coincidence failed'), nl
    ),
    halt.
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069 of 100 in the polyglot-100 archive. Family: Enterprise 
% Prolog -- entry 069
