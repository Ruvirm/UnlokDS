@echo off
REM ����塞 �� ��������, ���������� ��� �����஢�� Discord
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

REM ������� ��⠫�� IP-���� �� �ਣ����쭮�� �ਯ� �������筮 ���

REM ����塞 ��������� � 䠩�� hosts
cd %userprofile%
if exist hosts (
    del hosts
)
echo �ਣ������ 䠩� hosts ����⠭����������...
copy /Y %windir%\system32\drivers\etc\hosts %userprofile%\hosts
copy /Y %userprofile%\hosts %windir%\system32\drivers\etc\hosts

REM ����塞 ����� ॥���, ��������騥 Discord
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\" /v DisallowRun /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\run" /v BDS /f

REM ����������� �� �ᯥ譮� ࠧ�����஢��
echo Discord ࠧ�����஢��.
pause
