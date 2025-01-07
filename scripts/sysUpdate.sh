#!/bin/bash
# This script is used to update the system and bring everything current before installing tools

# Function to display a message with a border
display_message() {
    local message=$1
    local border="==============================================================================="
    echo -e "\n$border\n$message\n$border\n"
}

display_message "About to update the system and bring everything current before installing tools"

echo -e 'sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'

display_message "System update complete"