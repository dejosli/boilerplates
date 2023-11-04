#!/bin/bash

# Downloading and installing repository
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
chmod +x setup-repos.sh
sh setup-repos.sh

# Update the package repository
apt update -y

# Install webmin
apt install webmin -y --install-recommends

# Start and enable the webmin
systemctl enable --now webmin

# Check the webmin status
systemctl status webmin

# Configuring the firewall
ufw allow 10000/tcp

# Navigate to the webmin web interface
echo "Navigate to the webmin web interface using following url: https://<your-server-ip-or-hostname>:10000"