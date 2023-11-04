#!/bin/bash

# Update the package repository
yum update -y

# Install cockpit
yum install cockpit -y

# Start and enable the cockpit
systemctl enable --now cockpit.socket

# Check the cockpit status
systemctl status cockpit.socket

# Configuring the firewall
firewall-cmd --permanent --zone=public --add-port=9090/tcp
firewall-cmd --reload

# Navigate to the cockpit web interface
echo "Navigate to the cockpit web interface using following url: https://<your-server-ip-or-hostname>:9090"