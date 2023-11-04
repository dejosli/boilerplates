#!/bin/bash

# Update the package repository
apt update -y

# Install bind
sudo apt install bind9 bind9utils bind9-doc

# Start and enable the chrony
systemctl enable --now bind9

# Check the chrony status
systemctl status bind9

# Configuring the firewall
ufw allow Bind9

echo "Make the changes on bind main configuration file: /etc/bind/named.conf, check the configurations and restart bind service"

