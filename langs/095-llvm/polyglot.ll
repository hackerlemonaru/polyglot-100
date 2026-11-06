; polyglot-100 :: entry 095 :: LLVM IR (opaque pointers)
; Run: clang polyglot.ll -o polyglot && ./polyglot

@greet = private unnamed_addr constant [18 x i8] c"Hello from LLVM!\0A\00"
@sumfmt = private unnamed_addr constant [17 x i8] c"sum(1..10) = %d\0A\00"
@fibfmt = private unnamed_addr constant [17 x i8] c"fib(10)    = %d\0A\00"

declare i32 @printf(ptr, ...)

define i32 @main() {
entry:
  br label %sum.loop

sum.loop:
  %i = phi i32 [ 1, %entry ], [ %i.next, %sum.loop ]
  %acc = phi i32 [ 0, %entry ], [ %acc.next, %sum.loop ]
  %acc.next = add i32 %acc, %i
  %i.next = add i32 %i, 1
  %more = icmp sle i32 %i.next, 10
  br i1 %more, label %sum.loop, label %fib.prep

fib.prep:
  br label %fib.loop

fib.loop:
  %a = phi i64 [ 0, %fib.prep ], [ %b, %fib.loop ]
  %b = phi i64 [ 1, %fib.prep ], [ %t, %fib.loop ]
  %k = phi i32 [ 0, %fib.prep ], [ %k.next, %fib.loop ]
  %t = add i64 %a, %b
  %k.next = add i32 %k, 1
  %again = icmp slt i32 %k.next, 10
  br i1 %again, label %fib.loop, label %report

report:
  %p0 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([18 x i8], ptr @greet, i64 0, i64 0))
  %p1 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([17 x i8], ptr @sumfmt, i64 0, i64 0),
    i32 %acc.next)
  %f = trunc i64 %a to i32
  %p2 = call i32 (ptr, ...) @printf(
    ptr getelementptr inbounds ([17 x i8], ptr @fibfmt, i64 0, i64 0),
    i32 %f)
  ret i32 0
}
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in the polyglot-100 archive. Family: Frontier & Es
; LLVM -- entry 095 of 100 in t
