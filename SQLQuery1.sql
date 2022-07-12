--===========================================
--Create DB 
CREATE DATABASE MASTERINFO_1;
--'============================================================
--Create user and login (explicitly) and make it as owner of a DB
use MASTERINFO_1;
CREATE LOGIN SN WITH PASSWORD=N'SN', DEFAULT_DATABASE=MASTERINFO_1, CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
CREATE USER SR FOR LOGIN SN
-------SN/SN ; sa/SSS;
EXEC sp_addrolemember N'db_owner', N'SR'
--'=============================================================

Select * from sys.sysusers
-------------------'======================================================
use master
EXEC sp_addsrvrolemember N'SN', N'dbcreator'
GO
---------------'====================================
Use FUNDAMENTALS
execute sp_help 'dbo.Track'
exec sp_help 'dbo.Track'
go--if go isn't written, syntax error is seen as its not considered as batch 
sp_help 'dbo.track';
execute sp_help 'dbo.Track';
---------------'====================================
SELECT * FROM [server_name].[database_name].[schema_name].[table_name]
---------------'====================================


