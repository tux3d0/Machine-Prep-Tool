#!/bin/bash
# Name: Red Team Machine Prep Tool M.P.T
# Author: Tuxnix
# Description: A tool used for automating the machine prep process 
# for Red Teams & Bounty Hunters.
# License: n/a
clear
printf "
################################################
#                                              #
#                     Tuxnix                   #
#                    Red Team                  #
#               Machine Prep Tool              #
#                      v0.1                    #
#                                              #
################################################
"
echo " "
echo "*Your sudo password will be needed at points of this script*"
read -p "Enter Project name " projectName

if [ -z "$projectName" ]; then
	echo "The Project Name can't be left blank"
	echo "Enter Client/CTF/Project name..."
	read projectName
	echo -e 'The '$projectName' attack machine is being prepped.... \n'
else
	echo -e 'The '$projectName' attack machine is being prepped.... \n'
fi

## Backup system files before making changes
backupFiles(){
	echo "-------------------------------Step 1-------------------------------"
	printf "Backing up the system files that will be modded by this script..."
	echo -e 'Backing up your .bashrc file \n'
	#### Make a backup of the .bashrc file
	cp ~/.bashrc ~/.bashrc.bak
	echo "Backing up /etc/passwd..."
	sudo cp /etc/passwd /etc/passwd.bak
	echo "Backing up /etc/apt/sources.list..."
	sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
	echo "Backing up /etc/ssh/sshd_config...."
	sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
	echo -e " backup complete..... \n"
}

# Step 1 of machine prep system updates
updateSys() {
	echo "-------------------------------Step 2-------------------------------"
    echo " Bringing the system and all of its files up-to-date...."
    sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
    sudo apt update
    echo 'Your machine is up-to-date...'
}

## Creates Dir structure organized primarily by O.S type
osDirs(){
	echo ' Organizing the project directory structure by OS '
	echo -e ' *All folder structures currently, will be started in the current $HOME/Projects directory. \n'
	echo 'Creating the '$HOME/Projects/$projectName 'directory'
	mkdir -p $HOME/Projects/$projectName
	echo 'Creating the '$HOME/Projects/$projectName/'Pre-Engagement  directory'
	mkdir $HOME/Projects/$projectName/Pre-Engagement
	echo 'Creating the '$HOME/Projects/$projectName/Reporting 'directory'
	mkdir $HOME/Projects/$projectName/Reporting
	echo 'Creating the '$HOME/Projects/$projectName/Results 'directory'
	mkdir $HOME/Projects/$projectName/Results
	echo 'Creating the '$HOME/Projects/$projectName/Logs 'directory'
	mkdir $HOME/Projects/$projectName/Logs
	echo 'Creating the '$HOME/Projects/$projectName/Linux 'directory'
	mkdir $HOME/Projects/$projectName/Linux
	echo 'Creating the '$HOME/Projects/$projectName/Linux/'Information-Gathering  directory'
	mkdir $HOME/Projects/$projectName/Linux/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Linux/'Vulnerability-Assessment  directory'
	mkdir $HOME/Projects/$projectName/Linux/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Linux/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/Linux/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Linux/'Post-Exploitation  directory'
	mkdir $HOME/Projects/$projectName/Linux/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Linux/'Lateral-Movement  directory'
	mkdir $HOME/Projects/$projectName/Linux/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/Windows 'directory'
	mkdir $HOME/Projects/$projectName/Windows
	echo 'Creating the '$HOME/Projects/$projectName/Windows/'Information-Gathering  directory'
	mkdir $HOME/Projects/$projectName/Windows/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Windows/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/Windows/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Windows/'Exploitation directory'
	mkdir $HOME/Projects/$projectName/Windows/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Windows/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/Windows/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Windows/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/Windows/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/macOS ' directory'
	mkdir $HOME/Projects/$projectName/macOS
	echo 'Creating the '$HOME/Projects/$projectName/macOS/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/macOS/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/macOS/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/macOS/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/macOS/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/macOS/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/macOS/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/macOS/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/macOS/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/macOS/Lateral-Movement
	echo -e '\n'
	echo 'The '$projectName' Folder structure is complete'
	echo $HOME/Projects/$projectName
	ls -ln $HOME/Projects/$projectName
	echo -e 'Moving onto the next step.... \n'
}
## Create Dir structures organized primarily by Penetration Test type
penDirs(){
	echo -e ' Organizing the project directory structure by Penetration Test type \n'
	echo -e ' *All folder structures currently, will be started in the current $HOME/Projects directory. \n'
	echo 'Creating the '$HOME/Projects/$projectName 'directory'
	mkdir -p $HOME/Projects/$projectName
	echo 'Creating the '$HOME/Projects/$projectName/'Pre-Engagement  directory'
	mkdir $HOME/Projects/$projectName/Pre-Engagement
	echo 'Creating the '$HOME/Projects/$projectName/'webApp-Pentest directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest
	echo 'Creating the '$HOME/Projects/$projectName/webApp-Pentest/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/webApp-Pentest/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/webApp-Pentest/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/webApp-Pentest/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/webApp-Pentest/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/webApp-Pentest/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/'Social-Engineering directory'
	mkdir $HOME/Projects/$projectName/Social-Engineering
	echo 'Creating the '$HOME/Projects/$projectName/'Network-Pentest directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Linux/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Linux/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows'directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Windows/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Windows/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/macOS/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/macOS/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/'Information-Gathering directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Information-Gathering
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/'Vulnerability-Assessment directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Vulnerability-Assessment
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/Exploitation' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/'Post-Exploitation directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Post-Exploitation
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/'Lateral-Movement directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Lateral-Movement
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/Logs' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Logs
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Wifi/Reports' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/Wifi/Reports
	echo 'Creating the '$HOME/Projects/$projectName/Network-Pentest/Printers' directory'
	mkdir $HOME/Projects/$projectName/Network-Pentest/printers
	echo 'Creating the '$HOME/Projects/$projectName/Reporting 'directory'
	mkdir $HOME/Projects/$projectName/Reporting
	echo 'Creating the '$HOME/Projects/$projectName/Results 'directory'
	mkdir $HOME/Projects/$projectName/Results
	echo 'Creating the '$HOME/Projects/$projectName/Logs 'directory'
	mkdir $HOME/Projects/$projectName/Logs
	echo -e '\n'
	echo 'The '$projectName' Folder structure is complete'
	echo $HOME/Projects/$projectName
	ls -ln $HOME/Projects/$projectName
	echo -e 'Moving onto creating your project directory structure.... \n'
}
## Menu function for the directory structure builder
createDirs(){
	local x
	echo -e "-------------------------------Step 3------------------------------- \n"
	echo "Would you like to organize the project by 
	1) Operating System 
	2) Pen-test Type 
	0) Exit
	"
	read x

	case $x in
		1) echo 'Organizing Project '$projectName' by Operating System'; osDirs ;;
		2) echo 'Organizing Project '$projectName' by Pen-test Type'; penDirs ;;
		3) echo 'Exiting...'; exit 0;;
	esac
}

## automatically installs tools from the tools.list file that will be needed for this project
installTools(){
	echo -e '-------------------------------Step 5.1------------------------------- \n'
	echo -e 'Installing Tools from your APT list... \n'
	sudo apt install $(cat ../tools.list | tr "\n" " ") -y
	## Install Powershell 7.x
	echo -e 'Downloading and Installing PowerShell 7.x........ \n'
	# Install pre-requisite packages.
	sudo apt-get install -y wget

	# Download the PowerShell package file
	wget https://github.com/PowerShell/PowerShell/releases/download/v7.4.6/powershell_7.4.6-1.deb_amd64.deb

	###################################
	# Install the PowerShell package
	sudo dpkg -i powershell_7.4.6-1.deb_amd64.deb
	# Resolve missing dependencies and finish the install (if necessary)
	sudo apt-get install -f
	# Delete the downloaded package file
	rm powershell_7.4.6-1.deb_amd64.deb
## Installing Rust
	echo "Downloading and Installing Rust..."
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	echo 'Installing Python module impacket...'
	python3 -m pipx install impacket
}
## Clones Repos from GitHub & installs python modules
grabTools(){
	# will be used as a function for the git clone commands for cloning all the tools from GitHub
	echo -e '-------------------------------Step 5.2------------------------------- \n'
	echo -e 'Grabbing Tools from GitHub Repos, you will still need to build some of these packages... \n'
	echo 'Grabbing P.E.A.S..'
	# From public GitHub
	git clone https://github.com/peass-ng/PEASS-ng.git
	echo -e 'Grabbing CeWL word-list generator... \n'
	git clone https://github.com/digininja/CeWL.git 
	echo -e 'Grabbing gHidra from GitHub....'
	git clone https://github.com/NationalSecurityAgency/ghidra.git
	echo -e 'Grabbing MADCert from GitHub....'
	git clone https://github.com/NationalSecurityAgency/MADCert.git
	echo -e 'Grabbing osmedeus a recon automation framework.....'
	git clone https://github.com/j3ssie/osmedeus.git
	echo -e 'Grabbing nmapAutomator from GitHub.....'
	git clone 

	#
	#
	## save installing Sliver C2 for last
	echo -e 'Grabbing & Installing Sliver C2 as a service.... \N'
	curl https://sliver.sh/install|sudo bash

}
## Adds Date & Timestamp to your terminal sessions for logging purposes
termLog(){
	local timestamp=$(date +%s)
	echo -e '------------------------------Step 6----------------------------------- \n'
	echo 'Enabling Terminal logging, commands entered will be stored in a log file with timestamps.'
	echo -e ' Useful for Proof of Concepts and other reporting and liability aspects \n'
	echo -e 'Adding a Date & Timestamp to your terminal.... \n'
	#### Customize bash prompt - add Date & Time stamp
	echo 'export PS1="-[\[$(tput sgr0)\]\[\033[38;5;10m\]\d\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;10m\]\t\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]-\n-[\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"' >> ~/.bashrc
	local x="$timestamp"_"$projectName.log"
	echo -e "Starting to log all commands entered into this terminal session.... \n"
	echo -e "Storing log in: $HOME/Projects/$projectName/Logs/$x"
	script $HOME/Projects/$projectName/Logs/$x
}
## Disable remote root account access, locking password, and creating a securetty file and locking that down
disableRoot(){
	echo -e '------------------------------Step 4.2----------------------------------- \n'
	echo -e 'Disabling SSH access & Restricting TTY access and locking down PAM for the root user. \n'
	# Disable root login
	echo 'Disabling the root account...locking password'
	sudo passwd -l root
	# sudo sed -i "s/root:x:0:0:root"

	# Disable SSH root login
	echo 'Disabling Root SSH login...'
	sudo sed -i "s/#PermitRootLogin */PermitRootLogin no/" /etc/ssh/sshd_config
	sudo systemctl restart sshd

	# Restrict root access via PAM
	echo -e 'Restricting root access via PAM... \n'
	sudo touch /etc/securetty
	echo "Backing up /etc/securetty...."
	sudo cp /etc/securetty /etc/securetty.bak
	sudo chmod 600 /etc/securetty
	sudo chmod 600 /etc/securetty.bak
}
## Create a super user account before disabling root account
createSU(){
	echo -e '------------------------------Step 4.1a----------------------------------- \n'
	echo ' Creating Super User account....'
	read -p 'Enter username : ' supUser
	sudo adduser "$supUser"
	echo "Adding $supUser to sudoers group..."
	sudo usermod -aG sudo "$supUser"
	# Ensure superuser can perform administrative tasks
	echo "$supUser ALL=(ALL) ALL" | sudo tee /etc/sudoers.d/$supUser
	echo -e "Disabling root user account...."
	disableRoot
}
## menu function for deciding whether to create a new superuser account or not
suMenu(){
	clear
	local x
	echo -e '------------------------------Step 4.1----------------------------------- \n'
	echo "Have you already created a superuser account? y/n :"
	read x 

	case $x in
		y) echo "Disabling root account...."; disableRoot;;
		n) echo "Creating a new superuser account before moving forward...."; createSU;;
		*) echo "Incorrect option....y/n?"; suMenu;;
	esac
}

## Enable SSH 2FA 
enable2factor(){
	echo -e '------------------------------Step 4.3----------------------------------- \n'
	echo -e ' Enable 2FA SSH security using the Google API & Google Authenticator \n'
	echo 'Un-commenting and enabling 2FA/PAM settings in your sshd_config file...'
	sudo sed -i "s/#KbdInteractiveAuthentication no/KbdInteractiveAuthentication yes/" /etc/ssh/sshd_config
	sudo sed -i "s/UsePAM no/UsePAM yes/" /etc/ssh/sshd_config
}
## Disables the ability to SSH in using only a password
disablePswd(){
	echo -e '------------------------------Step 4.5----------------------------------- \n'
	echo -e ' Disabling the ability to sign-in to SSH via Password, Priv key will be needed to sign-in & 2FA method if enabled... \n'
	# Disable SSH password authentication login
	echo 'Disabling password authentication...'
	sudo sed -i "s/#PasswordAuthentication yes/PasswordAuthentication no/" /etc/ssh/sshd_config
	echo 'Restarting sshd service....'
	sudo systemctl restart sshd
}
## Function for importing pre-created project ssh-keys
importKeys(){
	clear
	echo -e '-------------------------------Step 4.4a------------------------------- \n'
	echo -e "Starting the SSH-Key importing process... \n"
	echo -e "This feature is currently a work in progress, you will need to import your keys manually for the time being... \n"
}
## Function for generating new ED25519 SSH key pair storing it in default dir $HOME/.ssh/
genKeys(){
	local x
	echo -e '-------------------------------Step 4.4b------------------------------- \n'
	echo -e "Starting to generate the SSH key pair... \n"
	echo "SSH keys will be named "$projectName".pub & "$projectName
	read -p "Enter a comment to add to the keys :" x
	ssh-keygen -t ed25519 -C '$(x)' -f $HOME'/.ssh/'$projectName
	ls -ln $HOME/.ssh/
}
## SSH import or generate new key-pair menu
sshKeysMenu(){
	clear
	echo -e '-------------------------------Step 4.4------------------------------- \n'
	local x
	read -p "Do you have pre-created SSH Keys to import? (y/n)" x

	case $x in
		'y' ) echo "Importing SSH Keys...";  importKeys;;
		'n' ) echo 'Generating the SSH Key Pair for '$USER; genKeys;;
	esac
}
## Parent SSH hardening function, calls on all other SSH related functions
hardenSSH(){
	clear
	echo -e '------------------------------Step 4----------------------------------- \n'
	echo -e 'Beginning to harden your machines SSH.... \n'
	echo 'Enabling SSH logging and setting log level to INFO'
	sudo sed -i "s/#LogLevel INFO/LogLevel INFO/" /etc/ssh/sshd_config
	echo 'Setting max sessions to 5...'
	sudo sed -i "s/#MaxSessions 10/MaxSessions 5/" /etc/ssh/sshd_config
	echo 'Enabling Pubkey based Authentication...'
	sudo sed -i "s/#PubkeyAuthentication */PubkeyAuthentication yes/" /etc/ssh/sshd_config
	echo 'Restarting sshd service....'

	local enableRoot
	read -p "Would you like remote root SSH access enabled? y/N (default is disabled ssh login)" enableRoot
	case $enableRoot in
		n )
		echo 'root SSH will be disabled'; suMenu ;;
		N)
		echo 'root SSH will be disabled'; suMenu ;;
		y )
		echo 'root SSH will be enabled'	;;
		Y)
		echo 'root SSH will be enabled'	;;
		* ) echo 'root SSH will be disabled'; suMenu ;;
	esac
## enable 2FA menu
	local enable2fa
	read -p "Would you like to enable 2FA SSH security ? y/N (default is disabled SSH - Pub/Priv keys will still be generated. )" enable2fa
	case $enable2fa in
		n )
		echo '2FA SSH security will remain disabled' ;;
		N)
		echo '2FA SSH security will remain disabled' ;;
		y )
		echo '2FA SSH security will be enabled'; enable2factor;;
		Y)
		echo '2FA SSH security will be enabled'; enable2factor;;
	esac
	##calls the menu for generating or importing ssh keys
	sshKeysMenu
## menu for disabling password auth or leaving it enabled with key-based 
	local p
	read -p "Would you like to disable password authentication ?....y/n :" p
	case $p in
		y ) disablePswd;;
		n ) echo "Leaving password enabled + key based authentication......";;
	esac
	sudo systemctl restart sshd
}
backupFiles
updateSys
createDirs
hardenSSH
installTools
grabTools
termLog