set project=SmsPrefixRouting
set port=19151
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.%project%\src\Aruba.Notifications.%project%.Api
set projectName=Aruba.Notifications.%project%.Api.csproj
CALL "Build&Publish.bat" %folderName% %projectName% %port%


REM dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Aruba.Notifications.SmsPrefixRouting.Api.csproj"
REM "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Aruba.Notifications.SmsPrefixRouting.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
REM "C:\Program Files\IIS Express\iisexpress" /path:C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\bin\Release\net6.0\publish /port:19151
REM TITLE Aruba.Notifications.SmsPrefixRouting

