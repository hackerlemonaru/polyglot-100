-- polyglot-100 :: entry 064 :: Ada 2012
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
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064 of 100 in the polyglot-100 archive. Family: Enterprise & 
-- Ada -- entry 064
