set project=SmsCallbackWriter
set port=43731
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
TITLE Aruba.Notifications.%project%
CALL "Build&Publish.bat" %folderName% %projectName% %port%


rem TITLE Aruba.Notifications.SmsCallbackWriter
rem dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Notifications.SmsCallbackWriter.Api\Aruba.Notifications.SmsCallbackWriter.Api.csproj"
rem "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Notifications.SmsCallbackWriter.Api\Aruba.Notifications.SmsCallbackWriter.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Aruba.Notifications.SmsCallbackWriter.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
rem "C:\Program Files\IIS Express\iisexpress" /path:C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Notifications.SmsCallbackWriter.Api\bin\Release\net6.0\publish /port:43731
