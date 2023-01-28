set project=SmsKPIHistory
set port=34505
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
TITLE Aruba.Notifications.%project%
CALL "Build&Publish.bat" %folderName% %projectName% %port%

REM dotnet restore "%fullProjectName%"
REM "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "%fullProjectName%" /p:DeployOnBuild=true   /p:PublishProfile=%folderName%\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
REM "C:\Program Files\IIS Express\iisexpress" /path:%folderName%\bin\Release\net6.0\publish /port:34505