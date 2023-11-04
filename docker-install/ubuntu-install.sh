#!/bin/bash

# Update the Package Repository
apt update -y

# Install Prerequisite Packages
apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker Repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Specify Installation Source
apt-cache policy docker-ce

# Install Docker
apt install docker-ce -y

# Start And Enable Docker Daemon
systemctl enable --now docker

# Check Docker Status
systemctl status docker

# Executing Docker Command Without Sudo
usermod -aG docker ${USER}
su - ${USER}

# Displays System Wide Information Regarding Docker Installation
docker info


