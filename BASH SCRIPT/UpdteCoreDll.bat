
set mainfolder=C:\git\devspa\notifications\nv4\build
set dll=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPICore\src\Aruba.Notifications.SmsKPICore.Lib\bin\Release\net6.0\Aruba.Notifications.SmsKPICore.Lib.dll
echo "mainfolder : %mainfolder%"
echo "dll : %dll%"

set smscallbackWriter=Aruba.Notifications.SmsCallbackWriter
set smskpibuilder=Aruba.Notifications.SmsKPIBuilder
set smskpihistory=Aruba.Notifications.SmsKPIHistory
set smsprefixrouting=Aruba.Notifications.SmsPrefixRouting
set smsprovidercallback=Aruba.Notifications.SmsProviderCallback
set smsproviderhistory=Aruba.Notifications.SmsProviderHistory
set smsprovidermock=Aruba.Notifications.SmsProviderMock


echo %smscallbackWriter%
echo %smskpibuilder%
echo %smskpihistory%
echo %smsprefixrouting%
echo %smsprovidercallback%
echo %smsproviderhistory%
echo %smsprovidermock%

rem Aruba.Notifications.SmsCallbackWriter
copy /Y %dll% %mainfolder%\%smscallbackWriter%\src\%smscallbackWriter%.Api\Library
copy /Y %dll% %mainfolder%\%smscallbackWriter%\tests\%smscallbackWriter%.Tests\Library
pause
rem Aruba.Notifications.SmsKPIBuilder
copy /Y %dll% %mainfolder%\%smskpibuilder%\src\%smskpibuilder%.Api\Library
copy /Y %dll% %mainfolder%\%smskpibuilder%\tests\%smskpibuilder%.Tests\Library
pause
rem Aruba.Notifications.SmsKPIHistory
copy /Y %dll% %mainfolder%\%smskpihistory%\src\%smskpihistory%.Api\Library
copy /Y %dll% %mainfolder%\%smskpihistory%\tests\%smskpihistory%.Tests\Library
pause
rem Aruba.Notifications.SmsPrefixRouting
copy /Y %dll% %mainfolder%\%smsprefixrouting%\src\%smsprefixrouting%.Api\Library
copy /Y %dll% %mainfolder%\%smsprefixrouting%\tests\%smsprefixrouting%.Tests\Library
pause
rem Aruba.Notifications.SmsProviderCallback
copy /Y %dll% %mainfolder%\%smsprovidercallback%\src\%smsprovidercallback%.Api\Library
copy /Y %dll% %mainfolder%\%smsprovidercallback%\tests\%smsprovidercallback%.Tests\Library
pause
rem Aruba.Notifications.SmsProviderHistory
copy /Y %dll% %mainfolder%\%smsproviderhistory%\src\%smsproviderhistory%.Api\Library
copy /Y %dll% %mainfolder%\%smsproviderhistory%\tests\%smsproviderhistory%.Tests\Library
pause
rem Aruba.Notifications.SmsProviderMock
copy /Y %dll% %mainfolder%\%smsprovidermock%\src\%smsprovidermock%.Api\Library
pause

