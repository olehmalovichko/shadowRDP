@echo off

powershell -ExecutionPolicy Bypass -File shadow.ps1

rem  Create exe file:  ps2exe .\shadow.ps1 .\shadow.exe -noConsole -sta -winform -noOutput

rem shadow.exe

