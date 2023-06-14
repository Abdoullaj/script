
set /P folderName="Enter folder name to create on svn: "
echo Creating folder %folderName%
echo The full path will be: https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/ScriptDB/NotificationsV2-Database/ArubaNotificationV2 

svn mkdir -m "Creating branch %folderName%" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%

svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/ScriptDB

svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/ScriptDB/NotificationsV2-Database

svn mkdir -m "Creating folder" https://svn.ad.aruba.it/svn/aruba/branches/%folderName%/ScriptDB/NotificationsV2-Database/ArubaNotificationV2 

svn checkout https://svn.ad.aruba.it/svn/aruba/branches/%folderName% C:\svn\%folderName%
pause;