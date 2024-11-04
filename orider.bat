@echo off

:: cygwin encoding fix (not needed in .bat)
setlocal

:: Get the base directory of the script
set basedir=%~dp0

:: Check if we're in a Cygwin environment (not needed in .bat, so skip)
:: If needed, translate to Windows path with `cygpath` equivalent
:: The `cygpath` command doesn't have an equivalent in Windows Batch, so we'll assume `basedir` is correct.

:: Set the Rider executable path
set RIDER_EXE=%basedir%rider64.exe

:: Check if rider64.exe exists and is executable
if not exist "%RIDER_EXE%" (
    :: If not, fallback to rider.bat
    set RIDER_EXE=%basedir%rider.bat
)

:: If both fail, fallback to simply 'rider'
if not exist "%RIDER_EXE%" (
    set RIDER_EXE=rider
)

:: Execute the rider executable in the background and suppress output
start "" "%RIDER_EXE%" %*