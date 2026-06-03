@echo off
if -%1==- goto NoDir
if -%2==- goto NoExt
dir %1\*.%2 /b
goto End

:NoDir
echo No directory specified!
goto End

:NoExt
echo No extension specified!

:End