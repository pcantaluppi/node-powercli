# Node.js Image with VMware PowerCLI
FROM 7.0.0-rc.2-arm32v7-ubuntu-bionic
MAINTAINER Pascal Cantaluppi <pascal.cantaluppi@gmail.com>
RUN apt update && apt upgrade -y && apt install -y build-essential && apt install -y nodejs && apt install -y npm && apt install -y git 
