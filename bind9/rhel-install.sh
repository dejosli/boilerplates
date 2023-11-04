#!/bin/bash

# Update the package repository
yum update -y

# Install bind
yum install -y bind bind-utils

# Start and enable the bind
systemctl enable --now named

# Check the bind status
systemctl status named

# Configuring the firewall
firewall-cmd --permanent --zone=public --add-service=dns
firewall-cmd --reload

echo "Make the changes on bind main configuration file: /etc/named.conf, check the configurations and restart bind service"

