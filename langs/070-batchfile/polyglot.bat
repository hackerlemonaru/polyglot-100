@echo off
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
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- entry 070 of 100 in the polyglot-100 archive. Family: Enterp
REM Batchfile -- e
