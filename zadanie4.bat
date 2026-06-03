@echo off
setlocal enabledelayedexpansion

if -%1==- goto NoParam

set /a n=%1

if %n% LSS 0 goto Negative
if %n% GTR 12 goto TooBig

set /a fact=1

for /L %%i in (2,1,%n%) do (
    set /a fact=fact*%%i
)

echo %n%! = %fact%
goto End

:NoParam
echo No number specified!
goto End

:Negative
echo Error: number must be non-negative!
goto End

:TooBig
echo Error: number too large (max 12)!

:End