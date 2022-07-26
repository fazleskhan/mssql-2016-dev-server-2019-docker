# restore sample https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:adventureworks-2008r2-download

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

RUN sqlcmd -?                        

RUN sqlcmd -i C:\restore-2008r2-adventureworks.sql
                        
