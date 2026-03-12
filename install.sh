#!/bin/bash

echo "Installing Kali Auto Maintenance..."

sudo cp smart-update.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/smart-update.sh

sudo cp smart-update.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable smart-update.service

echo "Installation complete!"
