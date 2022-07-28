# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:zip-installed

# https://my.visualstudio.com/Downloads?q=SQL%20Server%202016

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

RUN powershell if (!(Test-Path "enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso")) { \
                               WRITE-HOST "ISO NOT FOUND `n \
                                           1. Download MSSQL 2016 DEV from https://my.visualstudio.com/Downloads `n \
                                           2. Copy MSSQL 2016 DEV to /mssql-iso directory  `n \
                                           3. Rerun build.bat" ; \ 
                               Exit 1 ; \
                             }

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;



                         
                         
                         
