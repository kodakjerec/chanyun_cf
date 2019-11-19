echo off
NET TIME \\192.168.1.14 /SET /YES
xcopy \\192.168.1.14\it\chanyun_system\cf\*.pbd c:\cf /Y/Q
xcopy \\192.168.1.14\it\chanyun_system\cf\*.exe c:\cf /Y/Q
xcopy \\192.168.1.14\it\chanyun_system\cf\*.jpg c:\cf /Y/Q

del c:\cf\*.txt /Q
del c:\cf\*.prn /Q
del c:\cf\*.dat /Q
del c:\cf\*.xls /Q

ipconfig > c:\cf\network.txt
call cf.exe
del c:\cf\network.txt /Q
echo on
