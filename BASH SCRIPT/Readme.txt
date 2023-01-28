Avvia CreateBranchScriptNotification.bat senza passare nulla come argomento. Ti verrà chiesto il nome della folder che vuoi creare. 
Lo script si occuperà di creare il branch con il nome che gli hai passato e anche le sottocartelle e farà il checkout dello stesso sulla tua macchina.
Localmente, nel path "C:\svn" ti ritroverai il branch, a cui dovrai aggiungere lo script nella cartella più interna e committare. 
Su buildMaster incollare in branch tutto tranne ciò che c'è da /ScriptDB (compreso, quindi non includere /ScriptDB) in poi.

dev db: 95.110.150.220  		ArubaNotificationV2.db.aruba 		220-Dev-SQLDBARUBA1-2