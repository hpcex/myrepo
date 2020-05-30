REM list本机所有的ipv4地址
@echo off 

for /f "delims=: tokens=2" %%i in ('ipconfig ^| find /i "IPv4"') do set ip=%%i 
ECHO +---------------------------------------+
echo Your IP address is %ip% 
ECHO +---------------------------------------+
pause