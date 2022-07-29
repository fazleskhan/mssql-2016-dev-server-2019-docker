# https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:mssql-iso

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

RUN ["C:\\Program Files\\7-Zip\\7z.exe", "--help"]

RUN ["C:\\Program Files\\7-Zip\\7z.exe", "x", "-y","-oC:\\mssql-install","C:\\enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso"]

RUN powershell -Command Remove-Item C:\enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso

# Need to test the previous delete command completed because file io are async operations
# image create will exit before the file is actually removed
RUN powershell while ((Test-Path "C:\enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso")) {  \
                                                          Get-ChildItem -Path . -Name ; \
                                                          Start-Sleep 10 \
                                                       }
RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;




                         
                         
                         
