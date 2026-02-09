@echo off
cd /D %~dp0
echo MySQL shutdown ...
cmd.exe /C start "" /MIN call "C:\xampp\killprocess.bat" "mysqld.exe"

if not exist mysql\data\%computername%.pid GOTO exit
echo Delete %computername%.pid ...
del mysql\data\%computername%.pid

:exit
