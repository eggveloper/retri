@REM Format with black
@echo off
setlocal EnableDelayedExpansion

echo Grabbing '.py' files..

set pyFiles=
for /R %%f in (*.py) do (
    set pyFiles=!pyFiles! %%f
)

echo   Grabbed '.py' files. Formatting..

black %pyFiles% -q

echo   Formatted '.py' files.