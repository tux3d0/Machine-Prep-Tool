#!/bin/bash
# Name: Red Team Machine Prep Tool M.P.T
# Author: Tuxnix
# Description: A tool used for automating the machine prep process 
# for Red Teams & Bounty Hunters.
# License: n/a

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
echo -e '\n'
echo -e "*Your sudo password will be needed at points of this script*\n"
echo "Enter Client/CTF/Project name"
read projectName

if [ -z "$projectName" ]; then
	echo "The Project Name can't be left blank"
	echo "Enter Client/CTF/Project name..."
	read projectName
	echo -e 'The '$projectName' attack machine is being prepped.... \n'
else
	echo -e 'The '$projectName' attack machine is being prepped.... \n'
fi

# Step 1 of machine prep system updates
updateSys() {
	echo '-------------------------------Step 1-------------------------------'
    echo ' Bringing the system and all of its files up-to-date....'
    sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y
    sudo apt update
    echo 'Your machine is up-to-date...'
}

updateSys
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
	echo -e '\n'
	echo 'The '$projectName' Folder structure is complete'
	echo $HOME/Projects/$projectName
	ls -ln $HOME/Projects/$projectName
	echo -e 'Moving onto the next step.... \n'
}
## Menu function for the directory structure builder
createDirs(){
	local dirLayout
	echo '-------------------------------Step 2-------------------------------'
	echo "Would you like to organize the project by 
	1) Operating System 
	2) Pen-test Type 
	0) Exit
	"
	read dirLayout

	case $dirLayout in
		1) echo 'Organizing Project '$projectName' by Operating System' osDirs; ;;
		2) echo 'Organizing Project '$projectName' by Pen-test Type' penDirs; ;;
		3) echo 'Exiting...' exit 0;;
	esac
}

createDirs

## Backup system files before making changes
backupFiles(){
	echo -e "Backing up your system files that will be modded by this script... \n"
	echo -e 'Backing up your .bashrc file \n'
	#### Make a backup of the .bashrc file
	cp ~/.bashrc ~/.bashrc.bak
	echo "Backing up /etc/passwd..."
	sudo cp /etc/passwd /etc/passwd.bak
	echo "Backing up /etc/apt/sources.list..."
	sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
	echo "Backing up /etc/ssh/sshd_config...."
	sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
}

backupFiles

## automatically installs tools from the tools.list file that will be needed for this project
installTools(){
	echo -e '-------------------------------Step 3.1------------------------------- \n'
	echo -e 'Installing Tools from your APT list... \n'
	sudo apt install $(cat tools.list | tr "\n" " ") -y
}
## Clones Repos from GitHub & installs python modules
grabTools(){
	# will be used as a function for the git clone commands for cloning all the tools from GitHub
	echo -e '-------------------------------Step 3.2------------------------------- \n'
	echo -e 'Grabbing Tools from GitHub Repos... \n'
	echo 'Grabbing Linux P.E.A.S..'
	# From public GitHub
	curl -L https://github.com/peass-ng/PEASS-ng.git
	echo -e 'Grabbing CeWL word-list generator... \n'
	curl -L https://github.com/digininja/CeWL.git 
	echo 'Installing Python module impacket...'
	python3 -m pipx install impacket
}
## Adds Date & Timestamp to your terminal sessions for logging purposes
addTStamp(){
	echo -e 'Adding a Date & Timestamp to your terminal.... \n'
	#### Customize bash prompt - add Date & Time stamp
	echo 'export PS1="-[\[$(tput sgr0)\]\[\033[38;5;10m\]\d\[$(tput sgr0)\]-\[$(tput sgr0)\]\[\033[38;5;10m\]\t\[$(tput sgr0)\]]-[\[$(tput sgr0)\]\[\033[38;5;214m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]-\n-[\[$(tput sgr0)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"' >> ~/.bashrc
}
## Disable remote root account access
disableRoot(){
	echo -e 'Disabling SSH access for the root user. \n'
}
## Enable SSH 2FA 
enable2factor(){
	echo -e ' Enable 2FA SSH security using the Google API & Google Authenticator \n'
}
## Disables the ability to SSH in using only a password
disablePswd(){
	echo -e ' Disabling the ability to sign-in to SSH via Password, Priv key will be needed to sign-in & 2FA method if enabled... \n'
}
## Function for importing pre-created project ssh-keys
importKeys(){
	echo -e "Starting the SSH-Key importing process... \n"
}
## Function for importing pre-created project ssh-keys
genKeyss(){
	echo -e "Starting to generate the SSH key pair... \n"
}
## SSH import or generate new key-pair menu
sshKeysMenu(){
	local x
	read -p "Do you have pre-created SSH Keys to import? (y/n)" $x

	case $x in
		'y' ) echo "Importing SSH Keys..." importKeys; ;;
		'n' ) echo 'Generating the SSH Key Pair for '$USER genKeys; ;;
	esac
}
## Parent SSH hardening function, calls on all other SSH related functions
hardenSSH(){
	echo -e '------------------------------Step 4----------------------------------- \n'
	echo -e 'Beginning to harden your machines SSH.... \n'
	echo -e 'Backing up /etc/sshd/sshd_config...... \n'
	sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
	local enableRoot
	echo -ne "Would you like remote root SSH access enabled? y/N (default is disabled ssh login)"
	read enableRoot
	case $enableRoot in
		n )
		echo 'root SSH will be disabled' disableRoot; ;;
		N)
		echo 'root SSH will be disabled' disableRoot; ;;
		y )
		echo 'root SSH will be enabled'	;;
		Y)
		echo 'root SSH will be enabled'	;;
	esac
	local enable2fa
	echo -ne "Would you like to enable 2FA SSH security ? y/N (default is disabled SSH - Pub/Priv keys will still be generated. )"
	read enable2fa
	case $enable2fa in
		n )
		echo '2FA SSH security will be disabled' ;;
		N)
		echo '2FA SSH security will be disabled' ;;
		y )
		echo '2FA SSH security will be enabled' enable2factor;	;;
		Y)
		echo '2FA SSH security will be enabled' enable2factor;	;;
	esac
	sshKeysMenu
}

hardenSSH