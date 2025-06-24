@echo off
echo Cleaning up TEMP folders...
del /s /q "%TEMP%\*.*"
del /s /q "C:\Windows\Temp\*.*"
echo Done!
pause