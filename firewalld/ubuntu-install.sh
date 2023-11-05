#!/bin/bash

# Update the package repository
apt update -y

# Disable UFW firewall
ufw disable

# Install firewalld
apt install firewalld -y

# Start and enable the firewalld
systemctl enable --now firewalld

# Check the firewalld status
systemctl status firewalld
