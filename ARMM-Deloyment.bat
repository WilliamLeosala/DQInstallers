@echo off
set "url=https://cwa.connectwise.com/tools/sentinelone/SentinelOneAgent-Windows_64bit.exe"
set "destination=C:\DQQuestcare\SentinelOneAgent-Windows.exe"

If EXIST "%destination%" GOTO INSTALL
GOTO DOWNLOAD

:DOWNLOAD
curl -o "%destination%" -L "%url%"
If EXIST C:\DQQuestcare\SentinelOneAgent-Windows.exe GOTO INSTALL


:INSTALL
call "C:\Bluepeak Core Library\Agent_Install.exe" /s
If EXIST C:\DQQuestcare\SentinelOneAgent-Windows.exe GOTO INSTALLED

:EXIT
echo Failed Downloading the File.
Exit

:INSTALLED
Exit
