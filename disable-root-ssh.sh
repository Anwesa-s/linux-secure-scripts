#!/bin/bash

CONFIG_FILE="/etc/ssh/sshd_config"
BACKUP_FILE="/etc/ssh/sshd_config.bak"

echo "Backing up original SSH config..."
sudo cp "$CONFIG_FILE" "$BACKUP_FILE" && echo "Backup saved as $BACKUP_FILE"

echo "Disabling root login via SSH..."
if grep -q "^PermitRootLogin" "$CONFIG_FILE"; then
    sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' "$CONFIG_FILE"
else
    echo "PermitRootLogin no" | sudo tee -a "$CONFIG_FILE" > /dev/null
fi

echo "Restarting SSH service..."
if systemctl list-units --type=service | grep -q 'ssh.service'; then
    sudo systemctl restart ssh
elif systemctl list-units --type=service | grep -q 'sshd.service'; then
    sudo systemctl restart sshd
else
    echo "[!] SSH service not found!"
    exit 1
fi

echo "Root login via SSH has been disabled."

