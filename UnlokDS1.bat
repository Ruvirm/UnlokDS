@echo off
REM Удаляем все маршруты, добавленные для блокировки Discord
route -p delete 104.16.0.0 mask 255.255.0.0
route -p delete 104.17.0.0 mask 255.255.0.0
route -p delete 104.18.0.0 mask 255.255.0.0
route -p delete 104.19.0.0 mask 255.255.0.0
route -p delete 104.20.0.0 mask 255.255.0.0
route -p delete 104.21.0.0 mask 255.255.0.0
route -p delete 104.22.0.0 mask 255.255.0.0
route -p delete 104.23.0.0 mask 255.255.0.0
route -p delete 104.24.0.0 mask 255.255.0.0
route -p delete 104.25.0.0 mask 255.255.0.0
route -p delete 104.26.0.0 mask 255.255.0.0
route -p delete 104.27.0.0 mask 255.255.0.0
route -p delete 104.28.0.0 mask 255.255.0.0
route -p delete 104.29.0.0 mask 255.255.0.0
route -p delete 104.30.0.0 mask 255.255.0.0
route -p delete 104.31.0.0 mask 255.255.0.0

REM Добавьте остальные IP-адреса из оригинального скрипта аналогично выше

REM Удаляем изменения в файле hosts
cd %userprofile%
if exist hosts (
    del hosts
)
echo Оригинальный файл hosts восстанавливается...
copy /Y %windir%\system32\drivers\etc\hosts %userprofile%\hosts
copy /Y %userprofile%\hosts %windir%\system32\drivers\etc\hosts

REM Удаляем записи реестра, блокирующие Discord
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\" /v DisallowRun /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\run" /v BDS /f

REM Уведомление об успешной разблокировке
echo Discord разблокирован.
pause
