#!/bin/bash

echo "Installing UFW..."
sudo apt update
sudo apt install ufw -y

echo "UFW installation complete."

echo "Enabling UFW..."
sudo ufw enable

echo "UFW is now active."

echo "Setting up basic UFW rules..."

# Allow SSH (port 22) — important to avoid being locked out
sudo ufw allow OpenSSH

# Allow HTTP (port 80)
sudo ufw allow http

# Allow HTTPS (port 443)
sudo ufw allow https

echo "Basic rules applied:"
sudo ufw status verbose


