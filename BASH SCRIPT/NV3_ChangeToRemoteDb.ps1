(Get-Content myFile.txt) -replace 'foo', 'bar' | Out-File -encoding ASCII myFile.txt
pause;