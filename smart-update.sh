#!/bin/bash

echo "Checking for updates..."

apt update

updates=$(apt list --upgradable 2>/dev/null | grep upgradable)

if [ -n "$updates" ]; then
    echo "Updates found. Upgrading..."
    apt upgrade -y
else
    echo "System already up to date."
fi
