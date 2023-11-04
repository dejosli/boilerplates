#!/bin/bash

# Downloading and installing repository
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
chmod +x setup-repos.sh
sh setup-repos.sh

# Update the package repository
yum update -y

# Install webmin
yum install webmin -y

# Start and enable the webmin
systemctl enable --now webmin

# Check the webmin status
systemctl status webmin

# Configuring the firewall
firewall-cmd --permanent --zone=public --add-port=10000/tcp
firewall-cmd --reload

# Navigate to the webmin web interface
echo "Navigate to the webmin web interface using following url: https://<your-server-ip-or-hostname>:10000"