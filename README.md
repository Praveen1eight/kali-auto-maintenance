# kali-auto-maintenance
Kali Auto Maintenance is a lightweight automation tool for Kali Linux that keeps the system updated automatically at startup. It uses a systemd service to run a Bash script that checks for available package updates and upgrades them if needed, helping users maintain their system without manually running apt update and apt upgrade.
Features:
- Automatic Kali updates
- Removes unused packages
- Cleans APT cache
- Desktop notification after updates
- Reboot alert when required
