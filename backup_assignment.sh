#!/bin/bash

###########

# Date: 26 March 2025
# A bash script that automates file backups, restoration, and cleanup, managing each feature in separate branches.

###########
# Backup
###########

backup(){
set -e
mkdir -p "$HOME/.backup"
backup="/home/$USER/Documents"
dest="/home/$USER/.backup/"
timestamp=$(date +%Y%m%d_%H%M%S)
filename=backup_$timestamp.tar.gz
tar -czvf "$dest/$filename" "$backup"
echo "File backup completed: $dest/$filename"
}

############
# Restore
############

restore(){
set -e
mkdir -p "$HOME/restore"
ls /home/$USER/.backup/
echo "Enter the filename which you wish to restore: "
read filename

tar -xvf "$HOME/.backup/$filename" -C "$HOME/restore/"
echo "File restored: $filename"
}

###########
# Delete
###########

delete(){
set -e
TARGET_DIR="/home/$USER/.backup/"
find "$TARGET_DIR" -cmin +1 -delete
echo "Deletion completed!"
}
