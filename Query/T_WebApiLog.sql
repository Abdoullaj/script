--- Query WebApiLog


------------ Ricerca di una chiamata specifica in entrata a Notification: 
select top(100)* from webapilog 
-- where request_contextUsername = 'fall.abdoullaj@aruba.it' 
order by logid desc
select top(200)* from webapilog 
where 1=1
--and Request_Controller =  'UserDevices'
--or request_action = 'PostAuthorize'
and Request_Body like '%0869354036246370300011793400IT01%'
order by logid desc


-- Log delle chiamate in entrata a Notification 
select top(10)MsgProvider,ServerIp,* from webapilog 
where 1=1 
and request_contextUsername like '%pancioni%' 
order by logid desc


select top(13000)* from webapilog where 1=1
-- and request_contextUsername = 'fall.abdoullaj@aruba.it' 
and Request_Action = 'SendNotificationLite'
and logDate > '2021-10-19 12:39:00.000'
--and serverip = '10.150.31.32'
order by logid desc

--- Panoramica chiamate in entrata a Notification raggruppati per esiti positivi e negativi
select ServerIp, LogLevel, COUNT(1) from webapilog where 1=1
and Request_Action = 'SendNotificationLite'
-- and logDate > '2021-10-19 12:39:00.000'
group by ServerIp , LogLevel


