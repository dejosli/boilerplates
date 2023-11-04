#!/bin/bash

# Update the package repository
apt update -y

# Install cockpit
apt install cockpit -y

# Start and enable the cockpit
systemctl enable --now cockpit.socket

# Check the cockpit status
systemctl status cockpit.socket

# Configuring the firewall
ufw allow 9090/tcp

# Navigate to the cockpit web interface
echo "Navigate to the cockpit web interface using following url: https://<your-server-ip-or-hostname>:9090"