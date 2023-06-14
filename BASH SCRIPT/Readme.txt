-------------   	xxxxxxxxxxxxxxxxxxxxxxxxxxx		-------------
-------------   CreateBranchScriptNotification.bat	-------------
Avvia CreateBranchScriptNotification.bat senza passare nulla come argomento. Ti verrà chiesto il nome della folder che vuoi creare. 
Lo script si occuperà di creare il branch con il nome che gli hai passato e anche le sottocartelle e farà il checkout dello stesso sulla tua macchina.
Localmente, nel path "C:\svn" ti ritroverai il branch, a cui dovrai aggiungere lo script nella cartella più interna e committare. 
Su buildMaster valorizzare la variabile branch con tutto ciò che c'è da /branches a /ScriptDB (non compreso, quindi non includere /ScriptDB) .

dev db: 95.110.150.220  		ArubaNotificationV2.db.aruba 		220-Dev-SQLDBARUBA1-2

-------------   	CreateBranch_SCRIPT_OneArch.bat		-------------
Crea un branch con la struttura di OneArchitecture contenente la cartella ScriptDB. 
NON ESEGUE IL CHECKOUT DAL TRUNK. Serve solo per pubblicare degli script di database questo file.
È necessario avere già la release di buildmaster creata siccome ne chiede il numero, per esempio 0.21.1427.
-------------   	xxxxxxxxxxxxxxxxxxxxxxxxxxx		-------------
-------------   	xxxxxxxxxxxxxxxxxxxxxxxxxxx		-------------

dev-20382