@echo OFF
title ..::IPIP的最新国内IP地址数据转换到ROS脚本进行中::..
echo.
echo ..::IPIP的最新国内IP地址数据转换到ROS脚本进行中::..
echo.

curl -O https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt

choice /t 5 /d y /n >nul

sed "s/^\(.*\)$/add address=\1\ disabled=no list=cn-ip/g" china_ip_list.txt > cn-ip.rsc

choice /t 1 /d y /n >nul

sed -i "1i\remove [/ip firewall address-list find list=cn-ip]" cn-ip.rsc

choice /t 1 /d y /n >nul

sed -i "1i\/ip firewall address-list" cn-ip.rsc

choice /t 2 /d y /n >nul

del china_ip_list.txt

echo.
echo 完成啦！生成了新的cn-ip.rsc！
echo.
PAUSE
