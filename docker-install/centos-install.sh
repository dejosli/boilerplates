#!/bin/bash

# Set up the repository
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker Engine, containerd, and Docker Compose
yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start and enable the docker daemon
systemctl enable --now docker

# Check the docker status
systemctl status docker

# Executing the docker command without sudo
usermod -aG docker ${USER}
su - ${USER}

# Displays system wide information regarding the docker installation
docker info