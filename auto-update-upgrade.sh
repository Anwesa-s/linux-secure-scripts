#!/bin/bash 

# A script to update and upgrade all packages safely


# Exit the script if any command fails
set -e


echo "Starting system update and upgrade..."

#Check for root privilege
if [[ "$EUID" -ne 0 ]]; then
	echo "Please run this script with sudo or root."
	exit 1
fi

# Step 1: Update package list
echo "Updating package list.."
apt update

# Step 2: Upgrading packages
echo "Upgrading installed packages..."
apt upgrade -y


echo "System update and upgrade complete!"

