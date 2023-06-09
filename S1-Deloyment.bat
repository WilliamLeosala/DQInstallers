@echo off
set "url=https://cwa.connectwise.com/tools/sentinelone/SentinelOneAgent-Windows_64bit.exe"
set "destination=C:\DQQuestcare\SentinelOneAgent-Windows.exe"

If EXIST "%destination%" GOTO INSTALL
GOTO DOWNLOAD

:DOWNLOAD
curl -o "%destination%" -L "%url%"
If EXIST C:\DQQuestcare\SentinelOneAgent-Windows.exe GOTO INSTALL


:INSTALL
call ""C:\DQQuestcare\SentinelOneAgent-Windows.exe" -t "eyJ1cmwiOiAiaHR0cHM6Ly91c2VhMS1wYXg4LnNlbnRpbmVsb25lLm5ldCIsICJzaXRlX2tleSI6ICIyM2QzMDhmZDRmYmY4YmNjIn0=" --qn
If EXIST C:\DQQuestcare\SentinelOneAgent-Windows.exe GOTO INSTALLED

:EXIT
echo Failed Downloading the File.
Exit

:INSTALLED
Exit
