@echo off
setlocal enabledelayedexpansion

set /a count=0

for /r %1 %%d in (.) do (
    set /a count=count+1
)

set /a count=count-1
echo %count%