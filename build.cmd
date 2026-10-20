@echo off
rem Build shadow.exe from shadow.ps1 (requires: Install-Module ps2exe -Scope CurrentUser)

cd /d "%~dp0"

powershell -NoProfile -ExecutionPolicy Bypass -Command "Import-Module ps2exe -ErrorAction Stop; Invoke-ps2exe -inputFile .\shadow.ps1 -outputFile .\shadow.exe -noConsole -sta -noOutput"

if errorlevel 1 (
    echo Build failed.
    pause
    exit /b 1
)

echo Build OK: %~dp0shadow.exe
