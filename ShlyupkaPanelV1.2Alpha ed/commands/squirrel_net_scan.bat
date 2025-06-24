@echo off
setlocal
title 🐿️ БелочкаNet Dota Scanner
color 0A

:: Устанавливаем папку и имя отчёта
set LOGDIR=%USERPROFILE%\Documents\SquirrelReports
set LOG=%LOGDIR%\dota_net_report_%DATE:/=-%_%TIME::=-%.txt

:: Создание папки при отсутствии
if not exist "%LOGDIR%" mkdir "%LOGDIR%"

:: Запись заголовка
echo === Сетевой отчёт от %DATE% %TIME% === > "%LOG"
echo. >> "%LOG%"

:: 1. Интерфейсы и MTU
echo 🔧 Интерфейсы и MTU: >> "%LOG%"
netsh interface ipv4 show interfaces >> "%LOG%"
echo. >> "%LOG%"

:: 2. Полная инфа IP, DNS
echo 🌐 IPConfig /all: >> "%LOG%"
ipconfig /all >> "%LOG%"
echo. >> "%LOG%"

:: 3. Фаервол Dota/Steam порты
echo 🔥 Фаервол (dota/steam): >> "%LOG%"
netsh advfirewall firewall show rule name=all | findstr /I "dota steam" >> "%LOG%"
echo. >> "%LOG%"

:: 4. Пинг до серверов Valve
echo 🎯 Ping до dedicated.valve.net: >> "%LOG%"
ping dedicated.valve.net -n 4 >> "%LOG%"
echo. >> "%LOG%"

:: 5. Подключения к портам 27000–27100
echo 📦 Активные соединения Valve-портов: >> "%LOG%"
netstat -an | find ":27" >> "%LOG%"
echo. >> "%LOG%"

:: Открыть лог после выполнения
echo.
echo ✅ Готово! Открываю отчёт:
start notepad "%LOG%"
