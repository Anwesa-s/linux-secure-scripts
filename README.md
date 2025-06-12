# 🔐 Linux Secure Scripts

A set of Bash scripts to **automate the hardening of Ubuntu Linux systems**, making them safer and more secure with minimal effort. Perfect for beginners learning system administration or cybersecurity.

---

## 📌 Features

- 🔒 Disable root login via SSH and 🔓 Enable root login
- 🔥 Install and configure UFW firewall
- 📦 Enable automatic system updates
- 👤 Create secure, limited-privilege user accounts

---

## linux-secure-scripts/
- disable-root-ssh.sh # Disable root SSH access
- enable-root-ssh.sh # Enable root SSH access
- enable_ufw.sh # Enable and configure firewall
- auto-update.sh # Auto-update installed packages
- create-user.sh # Create a new user with sudo access
- README.md # This file 
---

## 🛠️ Requirements

- Ubuntu based Linux machine
- `sudo` privileges
- Internet access
- Basic familiarity with the terminal

---

## 🚀 Getting Started

1. **Clone this repository**:
```bash
git clone https://github.com/Anwesa-s/linux-secure-scripts.git
cd linux-secure-scripts
```
2. Make all scripts executable:
```bash
chmod +x *.sh
```
3. Run each scripts:
```bash
sudo ./disable-root-ssh.sh
sudo ./enable-root-ssh.sh
sudo ./enable_ufw.sh
sudo ./auto-update-upgrade.sh
sudo ./user_make.sh
```
💡 Pro tip: Always test scripts on a virtual machine before deploying to a real server.

## 🧪 Script Details

1.  `disable-root-ssh.sh`
Disables SSH login for the root user by modifying /etc/ssh/sshd_config, then restarts the SSH service.

1.1 `enable-root-ssh.sh`
Enables SSH login for the root via the backup file, then restart the SSH service.

2.  `enable_ufw.sh`
Installs UFW (Uncomplicated Firewall), sets secure default rules, and allows only SSH traffic.

3.  `auto-update-upgrade.sh`
Updates and upgrades system packages using APT. Automate this with cron for regular updates.

4.  `user_make.sh`
Prompts for a username, creates a user, sets a password, and adds the user to the sudo group.


## 🎓 Learning Outcomes
By completing this project, you'll learn:

✅ Bash scripting fundamentals

✅ Linux server hardening techniques

✅ Basic firewall configuration with UFW

✅ Secure user management







