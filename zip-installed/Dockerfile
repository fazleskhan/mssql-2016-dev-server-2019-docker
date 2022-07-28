
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;

# https://www.7-zip.org/a/7z2201-x64.exe  
RUN powershell -Command (New-Object System.Net.WebClient).DownloadFile('https://www.7-zip.org/a/7z2201-x64.exe', 'c:\\7z2201-x64.exe')                      

RUN ["C:\\7z2201-x64.exe", "/S"]

RUN ["C:\\Program Files\\7-Zip\\7z.exe", "--help"]

RUN powershell -Command Remove-Item C:\7z2201-x64.exe

# Need to test the previous delete command completed because file io are async operations
# image create will exit before the file is actually removed
RUN powershell while ((Test-Path "C:\7z2201-x64.exe")) {  \
                                                          Get-ChildItem -Path . -Name ; \
                                                          Start-Sleep 10 \
                                                       }

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;




                         
                         
                         
