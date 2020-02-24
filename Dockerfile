# Microsoft PowerShell Image with Node.js and VMware PowerCLI
FROM mcr.microsoft.com/powershell:latest
MAINTAINER Pascal Cantaluppi <pascal.cantaluppi@gmail.com>
RUN apt update && apt upgrade -y && apt install -y build-essential && apt install -y nodejs && apt install -y npm && apt install -y git && powershell -Command Install-Module -Name VMware.PowerCLI Force
