# https://github.com/microsoft/sql-server-samples/blob/8623db13a9806ffcf7891476ffacb9abb5cebdfb/samples/manage/windows-containers/mssql-server-2016-developer-windows/dockerfile
# MS SQL Server 2016 Developer Edition image

FROM fazleskhan/mssql-dev:mssql-iso

# ENV sql_server_iso "enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso"

# make install files accessible
COPY . /
WORKDIR /

#RUN powershell -Command \
#                        $iso = '%sql_server_iso%'; \
#                        $driveLetter = (Mount-DiskImage -ImagePath $iso -PassThru | Get-Volume).DriveLetter ; \
#                        Write-Information -MessageData "mounted to $driveLetter" -InformationAction Continue ; \
#                        Dismount-DiskImage $iso ; "
# RUN powershell -Command \
#                         $iso = '%sql_server_iso%' ; \
#                         Write-Information -MessageData 'test message' -InformationAction Continue ; 
# RUN powershell -Command \
#                         $iso = '%sql_server_iso%' ; \
#                         Write-Information -MessageData \"iso $iso\" -InformationAction Continue ; 
# RUN powershell -Command \
#                         Get-Location ; \
#                         Get-PSDrive C ; \
#                         Get-ChildItem -Path . -Name ; \
#                         Mount-DiskImage -ImagePath "C:\enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso" ;
                         # $isoPath = (Get-ChildItem -Path . -Include $iso).FullName ; \
                         # Write-Information -MessageData \"isoPath $isoPath\" -InformationAction Continue ; 
                         # $isoPath = "C:\\%(iso)" ; \
                         # Write-Information -MessageData \"isoPath $isoPath\" -InformationAction Continue ; 
RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;
RUN ["C:\\Program Files\\7-Zip\\7z.exe", "--help"]
RUN ["C:\\Program Files\\7-Zip\\7z.exe", "x", "-y","-oC:\\mssql-install","C:\\enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso"]




                         
                         
                         
