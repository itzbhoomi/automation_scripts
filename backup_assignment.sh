#!/bin/bash

###########

# Date: 26 March 2025
# A bash script that automates file backups, restoration, and cleanup, managing each feature in separate branches.

###########

# Restore

###########

set -e
mkdir -p "$HOME/restore"
ls /home/$USER/.backup/
echo "Enter the filename which you wish to restore: "
read filename

tar -xvf "$HOME/.backup/$filename" -C "$HOME/restore/"
echo "File restored: $filename"