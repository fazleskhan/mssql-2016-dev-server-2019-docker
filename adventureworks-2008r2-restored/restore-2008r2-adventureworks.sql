USE [master]
GO
RESTORE DATABASE [AdventureWorks2008R2] 
FROM  DISK = N'C:\AdventureWorks2008R2-Full Database Backup.bak' 
WITH 
 MOVE N'AdventureWorks2008R2_Data' 
  TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLDEV\MSSQL\DATA\AdventureWorks2008R2_Data.mdf',
 MOVE N'AdventureWorks2008R2_Log' 
  TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLDEV\MSSQL\DATA\AdventureWorks2008R2_Log.ldf',
FILE = 1,  NOUNLOAD,  STATS = 5
GO
ALTER DATABASE [AdventureWorks2008R2] SET COMPATIBILITY_LEVEL = 100
GO
EXEC sp_databases
GO
USE [AdventureWorks2008R2]
GO
EXEC sp_tables
GO
