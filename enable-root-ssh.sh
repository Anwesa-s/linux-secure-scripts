#!/bin/bash

CONFIG_FILE="/etc/ssh/sshd_config"
BACKUP_FILE="/etc/ssh/sshd_config.bak"

if [ ! -f "$BACKUP_FILE" ]; then
    echo "[!] Backup file not found: $BACKUP_FILE"
    exit 1
fi

echo "Restoring original sshd_config..."
sudo cp "$BACKUP_FILE" "$CONFIG_FILE"

echo "Restarting SSH service..."
if systemctl list-units --type=service | grep -q 'ssh.service'; then
    sudo systemctl restart ssh
elif systemctl list-units --type=service | grep -q 'sshd.service'; then
    sudo systemctl restart sshd
else
    echo "[!] SSH service not found!"
    exit 1
fi

echo "Root login has been re-enabled (restored from backup)."

