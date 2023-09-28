# FROM ubuntu:20.04
FROM debian:buster
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
# RUN DEBIAN_FRONTEND=noninteractive \
#   apt-get update \
#   && apt-get install -y python3 \
#   && rm -rf /var/lib/apt/lists/*
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 
RUN apt-get install -y apt-transport-https curl wget \
  && apt-get install -y --reinstall ca-certificates \
  && update-ca-certificates -y
WORKDIR /app/config
# ADD https://github.com/atnnewstv/minetv-vps/raw/master/debian_ubuntu_install.sh ./debian_ubuntu_install.sh
RUN wget -O debian_ubuntu_install.sh https://github.com/atnnewstv/minetv-vps/raw/master/debian_ubuntu_install.sh 
RUN chmod +x ./debian_ubuntu_install.sh
CMD ./debian_ubuntu_install.sh
EXPOSE 59999 60011