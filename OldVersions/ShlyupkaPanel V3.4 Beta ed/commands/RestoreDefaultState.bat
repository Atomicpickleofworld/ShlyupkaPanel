@echo off
chcp 65001 >nul
title Восстановление настроек системы

setlocal enabledelayedexpansion
set "balancedGuid="

echo 🔎 Ищу схему питания "Balanced" / "Сбалансированная"...

for /f "tokens=1,*" %%A in ('powercfg /l') do (
    echo %%B | findstr /i "Balanced Сбалансированная" >nul
    if !errorlevel! == 0 (
        set "balancedGuid=%%A"
    )
)

if defined balancedGuid (
    echo ⚙️ Применяю схему: !balancedGuid!
    powercfg /setactive !balancedGuid!
) else (
    echo ⚠️ Не удалось найти схему. Пробую восстановить по стандартному GUID...
    powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e >nul
    powercfg /setactive 381b4222-f694-41f0-9685-ff5bb260df2e
)

echo 🧹 Очистка временных данных — по желанию (отключено):
REM del /q /s "%TEMP%\*"

echo 🛠 Дополнительные настройки можно вернуть здесь...
REM netsh interface tcp set global autotuninglevel=normal

echo ✅ Всё готово! Система приведена в норму.
timeout /t 2 >nul
exit /b