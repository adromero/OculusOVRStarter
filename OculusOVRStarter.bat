ECHO OFF
sc config OVRService start= demand
net start "OVRService"
if %errorlevel% == 2 net stop "OVRService"
if %errorlevel% == 2 ECHO Stopped OVRService
if %errorlevel% == 0 ECHO Started OVRService
PAUSE