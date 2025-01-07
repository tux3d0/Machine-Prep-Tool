#!/bin/bash

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

echo "2FA SSH authentication has been enabled using Google's Authenticator app."