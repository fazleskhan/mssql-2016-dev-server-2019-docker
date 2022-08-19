# Original script https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/start.ps1
param(
    [Parameter(Mandatory=$true)]
    [string]$sa_password
)

# start the service
Write-Verbose "Starting SQL Server"
start-service MSSQL`$SQLDEV

$sqlcmd = "ALTER LOGIN sa with password=" +"'" + $sa_password + "'" + ";ALTER LOGIN sa ENABLE;"

Invoke-Sqlcmd -Query $sqlcmd -ServerInstance ".\SQLDEV" 

$sqlcmd = "EXEC sp_databases"

Invoke-Sqlcmd -Username sa -Password $sa_password -Query $sqlcmd -ServerInstance ".\SQLDEV"

Write-Verbose "Started SQL Server."
while ($true) { Start-Sleep -Seconds 3600 }