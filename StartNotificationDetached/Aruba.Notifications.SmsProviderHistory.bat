TITLE Aruba.Notifications.SmsProviderCallback
set basePath=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderHistory\src\Aruba.Notifications.SmsProviderHistory.Api
rem restore
dotnet restore "%basePath%\Aruba.Notifications.SmsProviderHistory.Api.csproj"
rem build
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "%basePath%\Aruba.Notifications.SmsProviderHistory.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=%basePath%\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
rem publish
"C:\Program Files\IIS Express\iisexpress" /path:%basePath%\bin\Release\net6.0\publish /port:33386
