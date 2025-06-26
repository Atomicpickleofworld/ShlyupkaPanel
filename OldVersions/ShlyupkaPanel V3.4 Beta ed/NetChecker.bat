@echo off
setlocal
title 🐿 Интернет-Чекер (BelочкаNet)
color 0A

:: Получаем путь к текущей папке
set APPDIR=%~dp0
set LOG=%APPDIR%NetCheckReport.log

:: Создание/обновление лога
echo === Интернет-отчёт (%DATE% %TIME%) === > "%LOG%"
echo. >> "%LOG%"

echo 📡 Сетевые интерфейсы и MTU: >> "%LOG%"
netsh interface ipv4 show interfaces >> "%LOG%"
echo. >> "%LOG%"

echo 🌐 IP/DNS информация: >> "%LOG%"
ipconfig /all >> "%LOG%"
echo. >> "%LOG%"

echo 🔄 Пинг до 8.8.8.8 (Google DNS): >> "%LOG%"
ping 8.8.8.8 -n 4 >> "%LOG%"
echo. >> "%LOG%"

echo 🔍 DNS-резолвинг microsoft.com: >> "%LOG%"
nslookup microsoft.com >> "%LOG%"
echo. >> "%LOG%"

echo 📶 Активные подключения (ESTABLISHED): >> "%LOG%"
netstat -an | find "ESTABLISHED" >> "%LOG%"
echo. >> "%LOG%"

echo ✅ Готово! Открываю лог...
start notepad "%LOG%"