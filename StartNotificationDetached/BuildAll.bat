rem Script to build and release all project 

rem  Aruba.Notifications.Api.
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.Api\Aruba.Notifications.Api.csproj" /p:DeployOnBuild=true /p:TargetFramework=v4.7.2  /p:PublishProfile=C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.Consumer
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.Consumer\Aruba.Notifications.Consumer.csproj" /p:Configuration=Release /t:Rebuild

rem Aruba.Notifications.PostSend
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.PostSend\Aruba.Notifications.PostSend.csproj" /p:Configuration=Release /t:Rebuild

rem Aruba.Notifications.SmsCallbackWriter
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Aruba.Notifications.SmsCallbackWriter.Api\Aruba.Aruba.Notifications.SmsCallbackWriter.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Aruba.Notifications.SmsCallbackWriter.Api\Aruba.Aruba.Notifications.SmsCallbackWriter.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsCallbackWriter\src\Aruba.Aruba.Notifications.SmsCallbackWriter.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsKPIBuilder
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIBuilder\src\Aruba.SmsKPIBuilder.Api\Aruba.Notifications.SmsKPIBuilder.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIBuilder\src\Aruba.SmsKPIBuilder.Api\Aruba.Notifications.SmsKPIBuilder.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIBuilder\src\Aruba.SmsKPIBuilder.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsKPIHistory
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIHistory\src\Aruba.SmsKPIHistory.Api\Aruba.Notifications.SmsKPIHistory.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIHistory\src\Aruba.SmsKPIHistory.Api\Aruba.Notifications.SmsKPIHistory.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsKPIHistory\src\Aruba.SmsKPIHistory.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsPrefixRouting
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Aruba.Notifications.SmsPrefixRouting.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Aruba.Notifications.SmsPrefixRouting.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsPrefixRouting\src\Aruba.Notifications.SmsPrefixRouting.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsProviderCallback
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderCallback\src\Aruba.SmsProviderCallback.Api\Aruba.Notifications.SmsProviderCallback.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderCallback\src\Aruba.SmsProviderCallback.Api\Aruba.Notifications.SmsProviderCallback.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderCallback\src\Aruba.SmsProviderCallback.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsProviderHistory
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderHistory\src\Aruba.SmsProviderHistory.Api\Aruba.SmsProviderHistory.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderHistory\src\Aruba.SmsProviderHistory.Api\Aruba.SmsProviderHistory.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderHistory\src\Aruba.SmsProviderHistory.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

rem Aruba.Notifications.SmsProviderMock
dotnet restore "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Aruba.Notifications.SmsProviderMock.Api.csproj" /p:DeployOnBuild=true   /p:PublishProfile=C:\git\devspa\notifications\nv4\build\Aruba.Notifications.SmsProviderMock\src\Aruba.Notifications.SmsProviderMock.Api\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true

pause;
