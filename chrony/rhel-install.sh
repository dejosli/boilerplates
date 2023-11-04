#!/bin/bash

# Update the package repository
yum update -y

# Install chrony
yum install -y chrony

# Start and enable the chrony
systemctl enable --now chronyd

# Check the chrony status
systemctl status chronyd

# Configuring the firewall
firewall-cmd --permanent --zone=public --add-service=ntp
firewall-cmd --reload

echo "Make the changes on Chrony main configuration file: /etc/chrony.conf and restart chronyd service"

