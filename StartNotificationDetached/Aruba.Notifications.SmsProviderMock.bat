title Aruba.Notifications.SmsProviderMock

dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

"C:\Program Files\IIS Express\iisexpress" /path:C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\bin\Release\net6.0\publish /port:31918
