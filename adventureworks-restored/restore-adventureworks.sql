USE [master]
RESTORE DATABASE [AdventureWorks2016] 
FROM  DISK = N'C:\AdventureWorks2016.bak' 
WITH 
 MOVE N'AdventureWorks2016_Data' 
  TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLDEV\MSSQL\DATA\AdventureWorks2016_Data.mdf',
 MOVE N'AdventureWorks2016_Log' 
  TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLDEV\MSSQL\DATA\AdventureWorks2016_Log.ldf',
FILE = 1,  NOUNLOAD,  STATS = 5
GO
EXEC sp_databases
GO
USE [AdventureWorks2016]
EXEC sp_tables
GO
