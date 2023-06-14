set folderName=%1
set projectName=%2
set port=%3
echo %folderName%
echo %projectName%
echo %port%
dotnet restore "%folderName%\%projectName%"
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "%folderName%\%projectName%" /p:DeployOnBuild=true   /p:PublishProfile=%folderName%\Properties\PublishProfiles\FolderProfile.pubxml /p:RestorePackages=false /p:SkipPostSharp=true
"C:\Program Files\IIS Express\iisexpress" /path:%folderName%\bin\Release\net6.0\publish /port:%port%
