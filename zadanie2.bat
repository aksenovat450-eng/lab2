@echo off
setlocal enabledelayedexpansion

set /p num="Enter number (or - to finish): "
if %num%==- goto Empty

set max=%num%
set min=%num%

:Loop
set /p num="Enter number (or - to finish): "
if %num%==- goto Result

if %num% GTR %max% set max=%num%
if %num% LSS %min% set min=%num%
goto Loop

:Empty
echo No numbers entered!
goto End

:Result
echo Maximum: %max%
echo Minimum: %min%

:End