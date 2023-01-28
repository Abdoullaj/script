--------Query Utili su ArubaNotificationV2

------------ PANORAMICA STATO DEI DELIVERY DATA (RABBIT, SCODAMENTI ECC...) - ---------------------
SELECT TOP(200)* FROM DELIVERYDATA ORDER BY DELIVERYDATAID DESC
SELECT COUNT(1) [Occurrances], [Retries] FROM DeliveryData GROUP BY retries order by Retries  ---- panoramica del numero di retry generale
SELECT statusid, COUNT(1) occurr FROM DeliveryData GROUP BY StatusID  order by statusid --- panoramica agli stati delle notifiche
SELECT COUNT(1) NumberOfRecords from DELIVERYDATA


-- DeliveryData con informazioni sui server (per capire l'ambiente in cui è stata inviata una determinata notifica), se non è specificato alcuna informazione sui server, allora è una notifica volatile che non ha corrispondenze con il messagebroker su db
SELECT top(1000) mq.CallerIp,mq.ServerIp, ne.QueueID, q.QueueName, dd.* FROM DELIVERYDATA dd
left join [ArubaMessageBroker].[dbo].[messagequeue] mq
on dd.ParentMessageID = mq.MessageID
left join NotificationEvents ne
on ne.NotificationEventID = dd.NotificationEventID
inner join [Queue] q
on ne.QueueID = q.QueueID
where 1=1
--and Recipient = 'fall.abdoullaj@consultant.aruba.it'
--and StatusID not in (3,4)
--and CallerIP != '10.150.36.22'
--and CallerIP != '10.150.37.22'
order by DeliveryDataID desc

---------  PANORAMICA SERVER DI ELABORAZIONE E STATI DI NOTIFICA
SELECT mq.CallerIP,StatusID, COUNT(*) record FROM [ArubaNotificationV2].[dbo].DeliveryData dd
LEFT JOIN [ArubaMessageBroker].[dbo].[messagequeue] mq
on dd.ParentMessageID = mq.MessageID
group by StatusID,mq.CallerIP
order by CallerIp


---------  PANORAMICA DELIVERYDATA PER CODA
SELECT  q.QueueID, q.QueueName, COUNT(*) record FROM [ArubaNotificationV2].[dbo].DeliveryData dd
--LEFT JOIN [ArubaMessageBroker].[dbo].[messagequeue] mq
--on dd.ParentMessageID = mq.MessageID
join NotificationEvents ne
on ne.NotificationEventID = dd.NotificationEventID
join [Queue] q
on ne.QueueID = q.QueueID
group by q.QueueID, q.QueueName
order by QueueID

-----------  NUMERO DI NOTIFICHE INVIATE E STATO NOTIFICHE PER NOTIFICA --------------
SELECT 
	ServiceTypeCode, NotificationTypeCode, [statusid], COUNT(1) record
	--top(5000) ne.ServiceTypeCode, ne.NotificationTypeCode, dd .* 
	-- COUNT(1)	
FROM DeliveryData dd 
join NotificationEvents ne
on dd.NotificationEventID = ne.NotificationEventID
--where ne.ServiceTypeCode = 'FirmaDigitale'
GROUP by ServiceTypeCode, NotificationTypeCode, [statusid]
order by ServiceTypeCode desc


-------- PANORAMICA NOTIFICHE PER CANALE ( 1 MAIL, 2 SMS, 3 PUSH )  -----------------
SELECT ChannelID, COUNT(1) NumberOfNotification FROM DeliveryData dd 
inner join NotificationEvents ne
on dd.NotificationEventID = ne.NotificationEventID
--where ne.ServiceTypeCode = 'FirmaDigitale'
group by ChannelID
--order by DeliveryDataID desc

------------ RICERCA USERDEVICES
 select pp.PushProviderName, st.ServiceTypeCode,ud.* from userdevices ud
inner join servicetypes st on ud.servicetypeid = st.servicetypeid
inner join PushProviders pp on ud.PushProviderID = pp.PushProviderID
where 1=1
and DeviceID = 'IQAAAACy0iquAACFWKHx8MUi5-5gr8_raGT7oIoELphYgJdb9Uejy5nZSKgpvFstrGHbrodXqBTXd7XX3AyqME78KO2vG7Weqy5I0Lk0--gVFGzflw'
--and [DeviceID] like '%FCM%'
--and [User] like 'ARUBA%'
and [User] like 'ARUBA66554941592%'
--and [User] = 'ARUBA32275225954-2455877489'
-- or  [User] = 'ARUBA26757672865-3376045084'
and [User] = 'testDevice54'
--and st.servicetypecode = 'FirmaDigitale' 
--and DeviceID = 'eCF6-CfdT-yanDMr9dXiox:APA91bGoHA-909qYsM5OtR2TMWtiKyVsuXTfyMZAMs1FRglHVtviIf_-lt9AhnprXag9HgXwBaWFzwgn4hNiyLJh4tH3N14UZH-JiTcuo4lx2fSFy8xt4WC692Uoiy_xQvGmjLJ93U7d'

-- update userdevices set connected = 1 where [user] = 'testDevice54' and servicetypeid = 76

--------- PANORAMICA REQUEST NEL TEMPO -----------------
select 

	   DATEADD(day,datediff(day,0,CreatedOnUtc),0)   AS ForDate,
          RIGHT('0' + CAST(DATEPART(hour,CreatedOnUtc)AS VARCHAR(2)), 2) AS OnHour,
	   RIGHT('0' + CAST(DATEPART(minute,CreatedOnUtc)AS VARCHAR(2)), 2) AS OnMinute,
	   COUNT(1) Records,
	   statusid
		from deliverydata 
		where CreatedOnUtc > '2021-08-08 00:00:00.000'
GROUP BY DATEADD(day,datediff(day,0,CreatedOnUtc),0),
       DATEPART(hour,CreatedOnUtc),
	   DATEPART(minute,CreatedOnUtc),
	   statusid	   
	   order by fordate


-- DeliveryData con informazioni sul server (per capire l'ambiente in cui è stata inviata una determinata notifica)
SELECT top(2000) mq.CallerIp,mq.ServerIp, ne.ServiceTypeCode, ne.NotificationTypeCode, dd.* FROM DELIVERYDATA dd
left join [ArubaMessageBroker].[dbo].[messagequeue] mq
on dd.ParentMessageID = mq.MessageID
left join NotificationEvents ne 
ON dd.NotificationEventID = ne.NotificationEventID
where 1=1
AND ne.ServiceTypeCode = 'FirmaDigitale'
AND ne.NotificationTypeCode = '2FA_Authorization'
order by DeliveryDataID desc



------------------------ ID UTILI DI NOTIFICA -------------------
select 
	st.ServiceTypeID, st.ServiceTypeCode,
	n.NotificationID,
	nt.NotificationTypeID, nt.NotificationTypeCode

from ServiceTypes st
inner join Notifications n
on n.ServiceTypeID = st.ServiceTypeID
inner join NotificationTypes nt
on nt.NotificationTypeID = n.NotificationTypeID
where 1=1
and ServiceTypeCode = 'FirmaDigitale'
and NotificationTypeCode = '2FA_Authorization'


---- SEARCH INFO FOR  SNIPPETS 
select us.SnippetName,
	st.ServiceTypeID, st.ServiceTypeCode,
	n.NotificationID,
	nt.NotificationTypeID, nt.NotificationTypeCode,
	COUNT(1)
	from UsedSnippets us inner join Notifications n
on us.NotificationID = n.NotificationID
inner join ServiceTypes st
on n.ServiceTypeID = st.ServiceTypeID
inner join NotificationTypes nt
on nt.NotificationTypeID = n.NotificationTypeID
inner join [Parameters] p on p.NotificationID = n.NotificationID 
where 1=1
group by us.SnippetName,st.ServiceTypeID, st.ServiceTypeCode,
	n.NotificationID,
	nt.NotificationTypeID, nt.NotificationTypeCode



----- OVERVIEW SERVICETYPE AND PROVIDERTYPE
-- 1: SMTP 
-- 2: SMS
-- 3: Push
SELECT 
ProviderName,
	st.servicetypeid, 
	st.servicetypecode  
FROM SERVICETYPES st
INNER JOIN SERVICETYPEPROVIDERS  stp
ON st.servicetypeid = stp.servicetypeid
inner join deliveryproviders dp
on dp.providerid = stp.providerid
inner join DeliveryProviderTypes dpt
on dpt.ProviderTypeID = dp.ProviderTypeID
where dp.providertypeid = 3 



------------ TEST DI CARICO 

SELECT COUNT(1) errors FROM DELIVERYDATA 
WHERE 1=1
AND Recipient = '<Recipient><Type>Token</Type><Value>grgregrfgvjhyjuhtfreOTbqHyv7wbT9AfO:APA91bGTkQE_67PZ3Xu8YYMBhUql5FpDjBdQ_Gk9ZALGTF1pXiGjNgxMn2QtBmU1NBNz2tkGRaEv42e3kGQsjdLTvjLjF_vJIQlVNeWt707zj1o5Wz0iafETqpzthB1Qs6WpneDIvndo</Value><Provider>FCM</Provider></Recipient>'
and CreatedOnUtc > '2021-10-19 10:39:00.000'
and Error is not null
SELECT COUNT(1) success FROM DELIVERYDATA 
WHERE 1=1
AND Recipient = '<Recipient><Type>Token</Type><Value>grgregrfgvjhyjuhtfreOTbqHyv7wbT9AfO:APA91bGTkQE_67PZ3Xu8YYMBhUql5FpDjBdQ_Gk9ZALGTF1pXiGjNgxMn2QtBmU1NBNz2tkGRaEv42e3kGQsjdLTvjLjF_vJIQlVNeWt707zj1o5Wz0iafETqpzthB1Qs6WpneDIvndo</Value><Provider>FCM</Provider></Recipient>'
and CreatedOnUtc > '2021-10-19 10:39:00.000'
and Error is  null


---- RELEASES 

select distinct createdby,modifiedby from releases where createdby like '%panc%'
select * from releases where createdby like '%panc%'
--join ArubaRegistry.

select us.* from ArubaRegistry.dbo.Users us
INNER JOIN ArubaRegistry.dbo.UserRoles usrl
ON us.UserId = usrl.UserId
INNER JOIN ArubaRegistry.dbo.Roles  rl
ON rl.RoleID = usrl.RoleID
INNER JOIN ArubaRegistry.dbo.RolePermissions rlpm
ON rlpm.RoleID = rl.RoleID
INNER JOIN  ArubaRegistry.dbo.[Permissions] pm
ON rlpm.PermissionID = pm.PermissionID
inner join releases r
on us.username = r.createdby
WHERE rl.Description = 'NotificationsRoot'