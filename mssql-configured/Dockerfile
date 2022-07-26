# based on https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:mssql-installed

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

RUN powershell -Command \
        set-strictmode -version latest ; \
        stop-service MSSQL`$SQLDEV ; \
        set-itemproperty -path 'HKLM:\software\microsoft\microsoft sql server\mssql13.SQLDEV\mssqlserver\supersocketnetlib\tcp\ipall' -name tcpdynamicports -value '' ; \
        set-itemproperty -path 'HKLM:\software\microsoft\microsoft sql server\mssql13.SQLDEV\mssqlserver\supersocketnetlib\tcp\ipall' -name tcpport -value 1433 ; \
        set-itemproperty -path 'HKLM:\software\microsoft\microsoft sql server\mssql13.SQLDEV\mssqlserver\' -name LoginMode -value 2 ;

CMD powershell ./start -sa_password %sa_password% -attach_dbs \"%attach_dbs%\" -Verbose
