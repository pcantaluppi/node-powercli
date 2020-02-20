# Node.js Image with VMware PowerCLI
FROM ubuntu:18.04
MAINTAINER Pascal Cantaluppi <pascal.cantaluppi@gmail.com>
RUN apt update && apt upgrade -y && ap install nodejs -y && apt install npm -y 