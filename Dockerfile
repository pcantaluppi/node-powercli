# Node.js Image with VMware PowerCLI
FROM ubuntu:18.04
MAINTAINER Pascal Cantaluppi <pascal.cantaluppi@gmail.com>
RUN apt update 
&& apt upgrade -y 
&& apt install -y build-essential 
&& apt install -y nodejs 
&& apt install -y npm 
&& apt install -y git 
&& apt install curl
&& wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
&& dpkg -i packages-microsoft-prod.deb
&& apt-get update
&& add-apt-repository universe
&& apt-get install -y powershell
&& pwsh -Command Install-Module -Name VMware.PowerCLI Force
&& pwsh -Command Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
