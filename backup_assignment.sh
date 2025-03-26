#!/bin/bash

###########

# Date: 26 March 2025
# A bash script that automates file backups, restoration, and cleanup, managing each feature in separate branches.

###########

###########
# Delete
###########

delete(){
set -e
TARGET_DIR="/home/$USER/.backup/"
find $TARGET_DIR -mtime +30 -exec rm -f{}\;
echo "Files older than 30 days deleted!"
}