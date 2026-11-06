"""Family 07 -- Enterprise & Legacy."""

FAMILY = "Enterprise & Legacy"

LANGS = [
    dict(
        name="COBOL", ext=".cob", comment="cobol", year=1959,
        author="Grace Hopper and the CODASYL committee",
        paradigm="Procedural, English-like, business-oriented",
        note="Still processes a large share of the world's financial transactions every night.",
        code=r'''       IDENTIFICATION DIVISION.
       PROGRAM-ID. POLYGLOT.
       AUTHOR. POLYGLOT-100.
      * Entry 061 of the byte-balanced polyglot archive.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-I      PIC 9(03) VALUE 1.
       01 WS-TOTAL  PIC 9(05) VALUE 0.
       01 WS-A      PIC 9(05) VALUE 0.
       01 WS-B      PIC 9(05) VALUE 1.
       01 WS-T      PIC 9(05) VALUE 0.
       01 WS-K      PIC 9(03) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM UNTIL WS-I > 10
               ADD WS-I TO WS-TOTAL
               ADD 1 TO WS-I
           END-PERFORM
           PERFORM UNTIL WS-K >= 10
               ADD WS-A TO WS-B GIVING WS-T
               MOVE WS-B TO WS-A
               MOVE WS-T TO WS-B
               ADD 1 TO WS-K
           END-PERFORM
           DISPLAY "Hello from COBOL!"
           DISPLAY "sum(1..10) = " WS-TOTAL
           DISPLAY "fib(10)    = " WS-A
           IF WS-TOTAL NOT = WS-A
               DISPLAY "the 55 coincidence failed"
           END-IF
           STOP RUN.
''',
    ),
    dict(
        name="Fortran Free Form", ext=".f90", comment="bang", year=1957,
        author="John Backus / IBM",
        paradigm="Compiled, imperative, array-oriented",
        note="The first widely used high-level language; still dominant in scientific computing.",
        code=r'''! polyglot-100 :: entry 062 :: Fortran (free form, 2008)
program polyglot
    implicit none
    integer :: i, total, k
    integer(kind=8) :: a, b, t

    total = 0
    do i = 1, 10
        total = total + i
    end do

    a = 0
    b = 1
    do k = 1, 10
        t = a + b
        a = b
        b = t
    end do

    print '(A)', 'Hello from Fortran!'
    print '(A,I0)', 'sum(1..10) = ', total
    print '(A,I0)', 'fib(10)    = ', a

    if (int(a) /= total) then
        error stop 'the 55 coincidence failed'
    end if
end program polyglot
''',
    ),
    dict(
        name="Pascal", ext=".pas", comment="paren", year=1970, author="Niklaus Wirth",
        paradigm="Structured, imperative, strongly typed",
        note="Designed to teach structured programming; Delphi is its long-lived descendant.",
        code=r'''{ polyglot-100 :: entry 063 :: Pascal }
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
''',
    ),
    dict(
        name="Ada", ext=".adb", comment="dash", year=1980,
        author="Jean Ichbiah / CII Honeywell Bull, for the US DoD",
        paradigm="Statically typed, contract-based, safety-critical",
        note="Named after Ada Lovelace; range types catch overflow before it happens.",
        code=r'''-- polyglot-100 :: entry 064 :: Ada 2012
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Polyglot is
   type Nat is range 0 .. 1_000_000;

   function Fib (N : Natural) return Nat is
      A : Nat := 0;
      B : Nat := 1;
      T : Nat;
   begin
      for I in 1 .. N loop
         T := A + B;
         A := B;
         B := T;
      end loop;
      return A;
   end Fib;

   Total : Nat := 0;
begin
   for I in 1 .. 10 loop
      Total := Total + Nat (I);
   end loop;

   Put_Line ("Hello from Ada!");
   Put ("sum(1..10) = ");
   Put (Integer (Total), Width => 0);
   New_Line;
   Put ("fib(10)    = ");
   Put (Integer (Fib (10)), Width => 0);
   New_Line;

   pragma Assert (Total = Fib (10), "the 55 coincidence failed");
end Polyglot;
''',
    ),
    dict(
        name="ABAP", ext=".abap", comment="abap", year=1983, author="SAP SE",
        paradigm="Object-oriented, database-centric, enterprise",
        note="Advanced Business Application Programming: the language inside every SAP system.",
        code=r'''*& polyglot-100 :: entry 065 :: ABAP
REPORT z_polyglot_100.

CLASS lcl_polyglot DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS fib IMPORTING n TYPE i RETURNING VALUE(r) TYPE i.
    CLASS-METHODS run.
ENDCLASS.

CLASS lcl_polyglot IMPLEMENTATION.
  METHOD fib.
    DATA a TYPE i VALUE 0.
    DATA b TYPE i VALUE 1.
    DATA t TYPE i.
    DO n TIMES.
      t = a + b.
      a = b.
      b = t.
    ENDDO.
    r = a.
  ENDMETHOD.

  METHOD run.
    DATA total TYPE i VALUE 0.
    DO 10 TIMES.
      total = total + sy-index.
    ENDDO.
    WRITE: / 'Hello from ABAP!'.
    WRITE: / 'sum(1..10) =', total.
    WRITE: / 'fib(10)    =', fib( 10 ).
    IF total <> fib( 10 ).
      WRITE: / 'the 55 coincidence failed'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  lcl_polyglot=>run( ).
''',
    ),
    dict(
        name="Modula-2", ext=".mod", comment="paren", year=1978, author="Niklaus Wirth",
        paradigm="Structured, modular, imperative",
        note="Introduced the module as a compilation unit; the direct ancestor of Oberon.",
        code=r'''(* polyglot-100 :: entry 066 :: Modula-2 *)
MODULE Polyglot;

FROM InOut IMPORT WriteString, WriteInt, WriteLn;

PROCEDURE Fib (n : CARDINAL) : CARDINAL;
VAR a, b, t, i : CARDINAL;
BEGIN
    a := 0;
    b := 1;
    FOR i := 1 TO n DO
        t := a + b;
        a := b;
        b := t
    END;
    RETURN a
END Fib;

VAR total, i : CARDINAL;

BEGIN
    total := 0;
    FOR i := 1 TO 10 DO
        total := total + i
    END;

    WriteString ("Hello from Modula-2!"); WriteLn;
    WriteString ("sum(1..10) = "); WriteInt (total, 4); WriteLn;
    WriteString ("fib(10)    = "); WriteInt (Fib (10), 4); WriteLn;

    IF total # Fib (10) THEN
        WriteString ("the 55 coincidence failed"); WriteLn
    END
END Polyglot.
''',
    ),
    dict(
        name="RPGLE", ext=".rpgle", comment="slash", year=2001,
        author="IBM (RPG lineage from 1959)",
        paradigm="Business-oriented, totally free-form",
        note="Report Program Generator, now fully free-format on IBM i.",
        code=r'''// polyglot-100 :: entry 067 :: RPG IV free-form (RPGLE)
**FREE
ctl-opt dftactgrp(*no) actgrp(*new) main(Main);

dcl-proc Fib;
  dcl-pi *n int(10) value;
    n int(10) value;
  end-pi;
  dcl-s a int(10) inz(0);
  dcl-s b int(10) inz(1);
  dcl-s t int(10);
  dcl-s i int(10);
  for i = 1 to n;
    t = a + b;
    a = b;
    b = t;
  endfor;
  return a;
end-proc;

dcl-proc Main;
  dcl-s total int(10) inz(0);
  dcl-s i int(10);
  for i = 1 to 10;
    total += i;
  endfor;
  dsply ('Hello from RPGLE!');
  dsply ('sum(1..10) = ' + %char(total));
  dsply ('fib(10)    = ' + %char(Fib(10)));
  if total <> Fib(10);
    dsply ('the 55 coincidence failed');
  endif;
  *inlr = *on;
end-proc;
''',
    ),
    dict(
        name="Eiffel", ext=".e", comment="dash", year=1986, author="Bertrand Meyer",
        paradigm="Object-oriented, Design by Contract",
        note="Preconditions, postconditions and invariants are part of the language.",
        code=r'''-- polyglot-100 :: entry 068 :: Eiffel
class
    POLYGLOT

create
    make

feature -- Execution

    make
        local
            total: INTEGER
        do
            total := sum_to (10)
            print ("Hello from Eiffel!%N")
            print ("sum(1..10) = " + total.out + "%N")
            print ("fib(10)    = " + fib (10).out + "%N")
            check
                both_are_fifty_five: total = fib (10)
            end
        end

feature -- Computation

    fib (n: INTEGER): INTEGER
        require
            non_negative: n >= 0
        local
            a, b, t, i: INTEGER
        do
            from i := 1 until i > n loop
                t := a + b
                a := b
                b := t
                i := i + 1
            end
            Result := a
        ensure
            tenth_is_fifty_five: n = 10 implies Result = 55
        end

    sum_to (n: INTEGER): INTEGER
        local
            i: INTEGER
        do
            from i := 1 until i > n loop
                Result := Result + i
                i := i + 1
            end
        end

end
''',
    ),
    dict(
        name="Prolog", ext=".pro", comment="percent", year=1972,
        author="Alain Colmerauer, Philippe Roussel",
        paradigm="Logic programming, relational",
        note="You state facts and rules; the engine searches for proofs by unification.",
        code=r'''% polyglot-100 :: entry 069 :: Prolog
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
''',
    ),
    dict(
        name="Batchfile", ext=".bat", comment="rem", year=1981,
        author="Microsoft / IBM (MS-DOS 1.0)",
        paradigm="Command scripting",
        note="Still the default automation language on every Windows machine.",
        code=r'''@echo off
REM polyglot-100 :: entry 070 :: Windows Batch
setlocal enabledelayedexpansion

set /a SUM=0
for /l %%i in (1,1,10) do set /a SUM+=%%i

set /a A=0
set /a B=1
for /l %%k in (1,1,10) do (
    set /a T=A+B
    set /a A=B
    set /a B=T
)

echo Hello from Batch!
echo sum(1..10) = !SUM!
echo fib(10)    = !A!

if not "!SUM!"=="!A!" (
    echo the 55 coincidence failed
    exit /b 1
)

endlocal
exit /b 0
''',
    ),
]
