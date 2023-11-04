#!/bin/bash

# Update the package repository
apt update -y

# Install chrony
apt install -y chrony

# Start and enable the chrony
systemctl enable --now chronyd

# Check the chrony status
systemctl status chronyd

# Configuring the firewall
ufw allow ntp

echo "Make the changes on Chrony main configuration file: /etc/chrony/chrony.conf and restart chronyd service"

