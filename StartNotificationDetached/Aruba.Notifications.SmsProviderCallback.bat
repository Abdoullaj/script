set project=SmsProviderCallback
set port=31082
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
CALL "Build&Publish.bat" %folderName% %projectName% %port%


REM TITLE Aruba.Notifications.SmsProviderCallback
REM set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderCallback\src\Aruba.Notifications.SmsProviderCallback.Api
REM set projectName=Aruba.Notifications.SmsProviderCallback.Api.csproj
REM set port=31082
REM dotnet restore "%folderName%\%projectName%"
REM "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "%folderName%\%projectName%" /p:DeployOnBuild=true   /p:PublishProfile=%folderName%\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
REM "C:\Program Files\IIS Express\iisexpress" /path:%folderName%\bin\Release\net6.0\publish /port:%port%


