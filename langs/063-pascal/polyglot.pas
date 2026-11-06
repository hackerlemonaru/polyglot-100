{ polyglot-100 :: entry 063 :: Pascal }
program Polyglot;

{$MODE OBJFPC}{$H+}

function Fib(n: Integer): Int64;
var
    a, b, t: Int64;
    i: Integer;
begin
    a := 0;
    b := 1;
    for i := 1 to n do
    begin
        t := a + b;
        a := b;
        b := t;
    end;
    Fib := a;
end;

var
    total, i: Integer;
begin
    total := 0;
    for i := 1 to 10 do
        total := total + i;

    WriteLn('Hello from Pascal!');
    WriteLn('sum(1..10) = ', total);
    WriteLn('fib(10)    = ', Fib(10));

    if total <> Fib(10) then
        WriteLn('the 55 coincidence failed');
end.
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: Enterpr *)
(* Pascal -- entry 063 of 100 in the polyglot-100 archive. Family: En *)
