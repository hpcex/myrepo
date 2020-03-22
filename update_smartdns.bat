@echo OFF

wget -qO- https://github.com/felixonmars/dnsmasq-china-list/raw/master/accelerated-domains.china.conf > accelerated-domains.china.conf.pre

choice /t 4 /d y /n >NUL

sed "s|^server=\(.*\)/[^/]*$|nameserver \1/inside|" accelerated-domains.china.conf.pre > accelerated-domains.china.conf

choice /t 2 /d y /n >NUL

wget -qO- https://github.com/felixonmars/dnsmasq-china-list/raw/master/bogus-nxdomain.china.conf > bogus-nxdomain.china.conf.pre

choice /t 4 /d y /n >NUL

sed "s|=| |" bogus-nxdomain.china.conf.pre > bogus-nxdomain.china.conf

choice /t 2 /d y /n >NUL

wget -qO- https://raw.githubusercontent.com/hectorm/hmirror/master/data/adguard-simplified/list.txt > adguard.conf.pre

choice /t 4 /d y /n >NUL

sed "s/^\(.*\)$/address \/\1\/#/g" adguard.conf.pre > adguard.conf

choice /t 2 /d y /n >NUL

del .\*.pre /s /q

choice /t 3 /d y /n >NUL

MOVE .\*.conf c:\incom\

PAUSE
