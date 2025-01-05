#!/bin/bash
#===============================================================================
#
#          FILE: importKeys.sh
# 
#         USAGE: ./importKeys.sh
# 
#   DESCRIPTION: A quick script to import an SSH key into the authorized_keys file
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Tuxnix
#  ORGANIZATION: ---
#       CREATED: $(date +%Y-%m-%d)
#      REVISION: ---
#===============================================================================
# Function to display a message with a border
display_message() {
    local message=$1
    local border="========================================"
    echo -e "\n$border\n$message\n$border\n"
}

# Function to import SSH key
import_ssh_key() {
    local key_path=$1
    if [ -f "$key_path" ]; then
        cat "$key_path" >> ~/.ssh/authorized_keys
        display_message "SSH key imported successfully!"
    else
        display_message "Error: File not found at $key_path"
    fi
}

# Main script
clear
display_message "SSH Key Importer"

read -p "Enter the path to your SSH key: " key_path
import_ssh_key "$key_path"