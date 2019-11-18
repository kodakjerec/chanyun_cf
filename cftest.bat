echo off
NET TIME \\192.168.1.14 /SET /YES
xcopy \\192.168.1.14\it\chanyun_system\cftest\*.pbd c:\cftest /Y/Q
xcopy \\192.168.1.14\it\chanyun_system\cftest\*.exe c:\cftest /Y/Q
xcopy \\192.168.1.14\it\chanyun_system\cftest\*.jpg c:\cftest /Y/Q

del c:\cftest\*.txt /Q
del c:\cftest\*.prn /Q
del c:\cftest\*.dat /Q
del c:\cftest\*.xls /Q

ipconfig > c:\cftest\network.txt
cd c:\cftest
start cf.exe
REM del c:\cftest\network.txt /Q
echo on
exit