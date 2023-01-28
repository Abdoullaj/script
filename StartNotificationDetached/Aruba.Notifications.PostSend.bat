@ECHO OFF
echo Running PostSend by user : aruba\fall.abdoullaj ...
"C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe" "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.PostSend\Aruba.Notifications.PostSend.csproj" /p:Configuration=Release /t:Rebuild
runas /netonly /user:aruba\fall.abdoullaj "C:\git\devspa\notifications\build\notifications\src\Aruba.Notifications.PostSend\bin\Release\Aruba.Notifications.PostSend.exe"
rem TITLE Aruba.Notifications.PostSend