# 🔐 Linux Secure Scripts

A set of Bash scripts to **automate the hardening of Ubuntu/Debian Linux systems**, making them safer and more secure with minimal effort. Perfect for beginners learning system administration or cybersecurity.

---

## 📌 Features

- 🔒 Disable root login via SSH
- 🔥 Install and configure UFW firewall
- 📦 Enable automatic system updates
- 👤 Create secure, limited-privilege user accounts
- ⏰ (Optional) Schedule updates with `cron`

---

## 📁 Repository Structure
linux-secure-scripts/
├── disable-root-ssh.sh # Disable root SSH access
├── enable-ufw.sh # Enable and configure firewall
├── auto-update-upgrade.sh # Auto-update and upgrade installed packages
├── user_make.sh # Create a new user account
├── setup-cron.sh # Optional: Schedule auto-update with cron
└── README.md # This file

---

## 🛠️ Requirements

- Ubuntu or Debian-based Linux machine
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
sudo ./enable-ufw.sh
sudo ./auto-update-upgrade.sh
sudo ./user_make.sh
sudo ./setup-cron.sh   # Optional
```
💡 Pro tip: Always test scripts on a virtual machine before deploying to a real server.
🧪 Script Details
1. disable-root-ssh.sh
Disables SSH login for the root user by modifying /etc/ssh/sshd_config, then restarts the SSH service.

2. enable-ufw.sh
Installs UFW (Uncomplicated Firewall), sets secure default rules, and allows only SSH traffic.

3. auto-update-upgrade.sh
Updates and upgrades system packages using APT. Automate this with cron for regular updates.

4. user_make.sh
Prompts for a username, creates a user, sets a password, and adds the user to the sudo group.

5. setup-cron.sh (optional)
Adds a cron job to run auto-update-upgrade.sh daily at 2 AM.

🎓 Learning Outcomes
By completing this project, you'll learn:

✅ Bash scripting fundamentals

✅ Linux server hardening techniques

✅ Basic firewall configuration with UFW

✅ Secure user management

✅ Automation with cron






