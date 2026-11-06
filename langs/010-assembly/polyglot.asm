; polyglot-100 :: entry 010 :: x86-64 Assembly (NASM, Linux)
section .data
    msg  db "Hello from Assembly!", 10
    mlen equ $ - msg
    sum  db "sum(1..10) = 55", 10
    slen equ $ - sum
    fibm db "fib(10)    = 55", 10
    flen equ $ - fibm

section .text
    global _start

_start:
    xor ecx, ecx                ; i = 0
    xor eax, eax                ; acc = 0
.loop:
    inc ecx
    add eax, ecx
    cmp ecx, 10
    jl .loop                    ; acc = 55

    mov rbx, 0                  ; fib: a = 0
    mov rdx, 1                  ; b = 1
    mov esi, 10
.fib:
    mov rdi, rbx
    add rdi, rdx
    mov rbx, rdx
    mov rdx, rdi
    dec esi
    jnz .fib                    ; rbx = 55

    mov eax, 1
    mov edi, 1
    mov rsi, msg
    mov edx, mlen
    syscall
    mov eax, 1
    mov rsi, sum
    mov edx, slen
    syscall
    mov eax, 1
    mov rsi, fibm
    mov edx, flen
    syscall
    mov eax, 60
    xor edi, edi
    syscall
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 in the polyglot-100 archive. Family: Systems &
; Assembly -- entry 010 of 100 
