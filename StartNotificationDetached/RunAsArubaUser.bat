
type outputRunAs.txt;
set /p consoleToRun="Which program do you want to run?"
echo %consoleToRun%
rem runas runas /netonly /user:aruba\fall.abdoullaj 
if %consoleToRun% == 1 (runas /netonly /user:aruba\fall.abdoullaj Aruba.Notifications.Api.bat)
if %consoleToRun% == 2 (runas /netonly /user:aruba\fall.abdoullaj Aruba.Notifications.Consumer.bat)
if %consoleToRun% == 3 (runas /netonly /user:aruba\fall.abdoullaj randomFile.bat)
