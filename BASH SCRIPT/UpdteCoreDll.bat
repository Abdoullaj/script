
set mainfolder=C:\git\devspa\notifications\nv4\build
set dll=C:\Users\Abdoullaj.Fall\Desktop\lay\work\Lay\Aruba\utility_devs\Notification\NV4\Fornitore\Aruba.Notifications.SmsKPI.Core(1)\Aruba.Notifications.SmsKPI.Core\bin\Release\net6.0\Aruba.Notifications.SmsKPI.Core.dll
echo "mainfolder : %mainfolder%"
echo "dll : %dll%"

rem Aruba.Notifications.SmsCallbackWriter
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Notifications.SmsCallbackWriter.Api\Library
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsCallbackWriter\tests\Aruba.Notifications.SmsCallbackWriter.Tests\Library
rem Aruba.Notifications.SmsKPIBuilder
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsKPIBuilder\src\Aruba.Notifications.SmsKPIBuilder.Api\Library
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsKPIBuilder\tests\Aruba.Notifications.SmsKPIBuilder.Tests\Library
rem Aruba.Notifications.SmsKPIHistory
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsKPIHistory\src\Aruba.Notifications.SmsKPIHistory.Api\Library
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsKPIHistory\tests\Aruba.Notifications.SmsKPIHistory.Tests\Library
pause
rem Aruba.Notifications.SmsPrefixRouting
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Library
copy /Y %dll% %mainfolder%\Aruba.Notifications.SmsPrefixRouting\tests\Aruba.Notifications.SmsPrefixRouting.Tests\Library
pause
rem Aruba.Notifications.SmsProviderCallback
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsProviderCallback\src\Aruba.Notifications.SmsProviderCallback.Api\Library
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsProviderCallback\tests\Aruba.Notifications.SmsProviderCallback.Tests\Library
pause
rem Aruba.Notifications.SmsProviderHistory
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsProviderHistory\src\Aruba.Notifications.SmsProviderHistory.Api\Library
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsProviderHistory\tests\Aruba.Notifications.SmsProviderHistory.Tests\Library
pause
rem Aruba.Notifications.SmsProviderMock
copy /Y %dll% %mainfolder%\\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Library
pause

