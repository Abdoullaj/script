
set /P folderName="Enter folder name to create on svn: "
set /P releaseNumber="Enter release number of BuildMaster: (es.: 0.21.1427)"
echo Creating folder %folderName% for release %releaseNumber%
echo The full path will be: https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/OneArchitecture/ScriptDB/%releaseNumber% 

svn mkdir -m "Creating branch %folderName%" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%
wait
svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/OneArchitecture
wait
svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/OneArchitecture/ScriptDB
wait
svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/OneArchitecture/ScriptDB/%releaseNumber% 
wait
svn checkout https://svn.ad.aruba.it/svn/aruba/branches/%folderName% C:\svn\%folderName%
pause;

echo "Add these two deployable: DB_ArubaRegistry OneArchitecture" on your release