# Node.js Image with VMware PowerCLI
FROM ubuntu:18.04
MAINTAINER Pascal Cantaluppi <pascal.cantaluppi@gmail.com>
RUN apt update && apt upgrade -y && curl -sL https://deb.nodesource.com/setup_13.x | -E bash - && apt-get install -y nodejs && apt install -y npm 