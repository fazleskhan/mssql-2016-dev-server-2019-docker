# based on https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:mssql-extracted

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;


RUN c:\\mssql-install\\setup.exe /q /ACTION=Install /INSTANCENAME=SQLDEV /FEATURES=SQLEngine /UPDATEENABLED=0 /SQLSVCACCOUNT="NT AUTHORITY\System" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" /TCPENABLED=1 /NPENABLED=0 /IACCEPTSQLSERVERLICENSETERMS

RUN powershell -Command Remove-Item -LiteralPath "c:\\mssql-install" -Force -Recurse

# Need to test the previous delete command completed because file io are async operations
# image create will exit before the file is actually removed
RUN powershell while ((Test-Path "c:\\mssql-install")) {  \
                                Get-ChildItem -Path . -Name ; \
                                Start-Sleep 10 \
                        }