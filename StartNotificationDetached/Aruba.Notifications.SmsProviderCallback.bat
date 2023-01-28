TITLE Aruba.Notifications.SmsProviderCallback
set folderName=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderCallback\src\Aruba.Notifications.SmsProviderCallback.Api
set projectName=Aruba.Notifications.SmsProviderCallback.Api.csproj
set port=31082
dotnet restore "%folderName%\%projectName%"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "%folderName%\%projectName%" /p:DeployOnBuild=true   /p:PublishProfile=%folderName%\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
"C:\Program Files\IIS Express\iisexpress" /path:%folderName%\bin\Release\net6.0\publish /port:%port%


