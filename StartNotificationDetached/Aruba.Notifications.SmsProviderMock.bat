set project=SmsProviderMock
set port=31918
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
TITLE Aruba.Notifications.%project%
CALL "Build&Publish.bat" %folderName% %projectName% %port%


REM title Aruba.Notifications.SmsProviderMock
REM dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj"
REM "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
REM "C:\Program Files\IIS Express\iisexpress" /path:C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\bin\Release\net6.0\publish /port:31918
