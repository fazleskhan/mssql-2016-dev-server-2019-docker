# restore sample https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:mssql-configured

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

# download https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2016.bak
# set environment variables
ENV adventureworks_bak_download_url "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2016.bak"

RUN powershell -Command (New-Object System.Net.WebClient).DownloadFile('%adventureworks_bak_download_url%', 'AdventureWorks2016.bak')

RUN sqlcmd -?                        

RUN sqlcmd -i C:\restore-adventureworks.sql

RUN powershell -Command Remove-Item C:\AdventureWorks2016.bak

# Need to test the previous delete command completed because file io are async operations
# image create will exit before the file is actually removed
RUN powershell while ((Test-Path "C:\AdventureWorks2016.bak")) {  \
                                                          Get-ChildItem -Path . -Name ; \
                                                          Start-Sleep 10 \
                                                       }
RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;



                        
