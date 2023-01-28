-- Aggiungi/Rimuovi permessi OneArch/OneArea
USE [ArubaRegistry]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[AddUserRole]
		@UserName = N'fall.abdoullaj@aruba.it',
		@RoleName = N'InfrastructureAdmin'

SELECT	'Return Value' = @return_value

GO
------------------------------------------------------------------
--USE [ArubaRegistry]
--GO

--DECLARE	@return_value int

--EXEC	@return_value = [dbo].[DeleteUserRole]
--		@UserName = N'fall.abdoullaj@aruba.it',
--		@RoleName = N'NotificationsReadOnly'

--SELECT	'Return Value' = @return_value

--GO

------------------------------------------------------------------

USE [ArubaRegistry]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[GetAuthUserRoles]
		@UserId = 554

SELECT	'Return Value' = @return_value

GO
---------------  GET OPERATIONS OF PERMISSION  --------------------


-- 
select * from operations where operationid in (
select operationid from Operationpermissions where PermissionID in 
(select permissionid from [Permissions] where [Description] = 'NotificationsAdminPermission')
)


---------------  GET PERMISSIONS OF OPERATION --------------------

select * from [permissions] where permissionid in (
select permissionid from Operationpermissions where operationid in 
(select operationid from operations where OperationName = 'PostRelease')
)


---------------- GET USERS WITH PERMISSIONS -----------------------
select us.* from Users  us
INNER JOIN UserRoles usrl
ON us.UserId = usrl.UserId
INNER JOIN Roles  rl
ON rl.RoleID = usrl.RoleID
INNER JOIN RolePermissions rlpm
ON rlpm.RoleID = rl.RoleID
INNER JOIN  [Permissions] pm
ON rlpm.PermissionID = pm.PermissionID
WHERE rl.Description = 'NotificationsAdmin'

----------------------------------------------------------------
select * from Operations where operationname = 'GetQueuesBase'
select * from Operationpermissions where OperationID = 972
select * from Permissions where PermissionID in (51,54,50,55)

select * from Operations where operationname = 'GetQueues'
select * from Operationpermissions where OperationID = 974
select * from Permissions where PermissionID in (51,50)


select * from Permissions where Description = 'NotificationsUserPermission'
select * from Permissions where Description = 'NotificationsAdminPermission'
select * from Permissions where Description = 'NotificationsRootPermission'
select * from Permissions where Description = 'NotificationsReadOnlyPermission'
select * from Permissions where Description = 'NotificationsDrafterPermission'

select * from operations where servicename = 'release'
select * from Operationpermissions where OperationID in (select operationid from operations where servicename = 'release')
select * from Permissions where PermissionID in (select permissionid from Operationpermissions where OperationID in (select operationid from operations where servicename = 'WebApiLog'))
