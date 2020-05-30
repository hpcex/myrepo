rem 升级geekuninstaller

curl -O https://geekuninstaller.com/geek.zip
choice /t 4 /d y /n >nul
7z x geek.zip
choice /t 3 /d y /n >nul
DEL geek.zip
choice /t 3 /d y /n >nul
MOVE geek.exe "P:\IT\06 Software\Geek\"
