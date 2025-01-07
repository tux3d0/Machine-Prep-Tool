#!/bin/bash
#==============================================================================
#
#          FILE: enable2fa.sh
# 
#         USAGE: ./scripts/enable2fa.sh
# 
#   DESCRIPTION: A script to automate the configuration of SSH,PAM, & Google Authenticator API 2FA
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: unknown at this time
#         NOTES: This script is a work in progress and is not yet complete.
#        AUTHOR: Tuxnix
#  ORGANIZATION: 
#       CREATED: $(date +%Y-%m-%d)
#      REVISION: 
#
#==============================================================================
#
## Adds a fancy border around messages
display_message() {
    local message=$1
    local border="==============================================================================="
    echo -e "\n$border\n$message\n$border\n"
}

enable2fa() {
    # Update package list and install Google Authenticator
    sudo apt-get update
    sudo apt-get install libpam-google-authenticator -y

    # Configure Google Authenticator for the current user
    google-authenticator -t -d -f -r 3 -R 30 -w 3

    # Backup the SSH configuration file
    sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

    # Enable ChallengeResponseAuthentication in SSH configuration
    sudo sed -i 's/^#ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config

    # Backup the PAM configuration file
    sudo cp /etc/pam.d/sshd /etc/pam.d/sshd.bak

    # Add Google Authenticator to PAM configuration
    echo "auth required pam_google_authenticator.so" | sudo tee -a /etc/pam.d/sshd

    # Restart SSH service to apply changes
    sudo systemctl restart sshd || sudo system restart ssh

    display_message "2FA SSH authentication has been enabled using Google's Authenticator app."
}
enable2fa