set project=SmsProviderHistory
set port=33386
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
CALL "Build&Publish.bat" %folderName% %projectName% %port%


