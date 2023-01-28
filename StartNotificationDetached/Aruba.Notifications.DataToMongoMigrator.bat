@ECHO OFF
echo Running DataToMongoMigrator by user : aruba\fall.abdoullaj ...
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.DataToMongoMigrator\Aruba.Notifications.DataToMongoMigrator.csproj" /p:Configuration=Release /t:Rebuild
runas /netonly /user:aruba\fall.abdoullaj "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.DataToMongoMigrator\bin\Release\Aruba.Notifications.DataToMongoMigrator.exe"
rem TITLE Aruba.Notifications.DataToMongoMigrator