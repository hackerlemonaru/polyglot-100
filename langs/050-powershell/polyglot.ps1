#!/usr/bin/env pwsh
# polyglot-100 :: entry 050 :: PowerShell
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-Fibonacci {
    param([int]$N)
    $a, $b = [bigint]0, [bigint]1
    foreach ($i in 1..$N) {
        $t = $a + $b
        $a, $b = $b, $t
    }
    return $a
}

$total = (1..10 | Measure-Object -Sum).Sum

Write-Output 'Hello from PowerShell!'
Write-Output "sum(1..10) = $total"
Write-Output "fib(10)    = $(Get-Fibonacci -N 10)"

if ($total -ne (Get-Fibonacci -N 10)) {
    throw 'the 55 coincidence failed'
}
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in the polyglot-100 archive. Family: Lisp & 
# PowerShell -- entry 050 of 100 in 
