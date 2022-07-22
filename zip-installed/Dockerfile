
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# make install files accessible
COPY . /
WORKDIR /

RUN powershell -Command \
                         Get-Location ; \
                        Get-PSDrive C ; \
                        Get-ChildItem -Path . -Name ;
RUN ["C:\\7z2201-x64.exe", "/S"]
RUN ["C:\\Program Files\\7-Zip\\7z.exe", "--help"]




                         
                         
                         
