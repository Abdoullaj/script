@ECHO OFF
echo Running Consumer by user : aruba\fall.abdoullaj ...
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.Consumer\Aruba.Notifications.Consumer.csproj" /p:Configuration=Release /t:Rebuild
runas /netonly /user:aruba\fall.abdoullaj "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.Consumer\bin\Release\Aruba.Notifications.Consumer.exe"
rem TITLE Aruba.Notifications.Consumer