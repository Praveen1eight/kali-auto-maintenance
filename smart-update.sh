#!/bin/bash

echo "Checking for updates..."

updates=$(apt list --upgradable 2>/dev/null | grep -v "Listing")

if [ -n "$updates" ]; then
    echo "Updates found. Upgrading..."
    
    apt update
    apt upgrade -y
    
    echo "Cleaning unused packages..."
    apt autoremove -y
    apt autoclean

    notify-send "Kali Auto Maintenance" "System updates installed and cleaned successfully."

else
    echo "System already up to date."
fi

if [ -f /var/run/reboot-required ]; then
    notify-send "Kali Auto Maintenance" "Reboot required to complete updates."
fi
