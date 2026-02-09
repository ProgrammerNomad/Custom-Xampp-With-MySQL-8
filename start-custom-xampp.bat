@echo off
title Custom High-Performance XAMPP Launcher
color 0B
cls

echo ================================================================================
echo.
echo       CUSTOM HIGH-PERFORMANCE XAMPP - MySQL 8.0 Edition
echo.
echo ================================================================================
echo.
echo  Performance Enhancements:
echo  - MySQL 8.0.45 (Not default MariaDB)
echo  - PHP OPcache Enabled (256MB)
echo  - 1GB PHP Memory Limit
echo  - 4GB InnoDB Buffer Pool
echo  - phpMyAdmin 5.2.3 Latest
echo.
echo ================================================================================
echo.
echo  Starting XAMPP Control Panel...
echo.

timeout /t 2 /nobreak >nul

start "" "%~dp0xampp-control.exe"

exit
