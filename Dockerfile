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
&& curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add –
&& curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list
&& apt update && apt upgrade -y
&& apt install powershell-preview
&& powershell -Command Install-Module -Name VMware.PowerCLI
&& powershell -Command Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
