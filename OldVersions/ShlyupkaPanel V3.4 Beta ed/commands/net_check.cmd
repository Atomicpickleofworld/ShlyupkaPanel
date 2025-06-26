@echo off
echo Проверка сети...
ping 8.8.8.8 -n 2
ipconfig | find "IPv4"
pause