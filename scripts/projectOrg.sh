#!/bin/bash
###
# Name: Red Team Organizer
# Author: Tuxnix
# Description: A tool used for creating the directory structure 
#   for Pentests and Bounty Hunts scan results and notes.
# *Plans for e-mail enumeration to come
# License: n/a
###
printf "
##########################################################################
#                             Red Team                                   #
#                         Project Organizer                              #
#                                                                        #
#              A directory structure automation script                   #
#          For storing your Bug Bounty, CTF, & Pen-Test Data             #
##########################################################################
"

echo -e '\n'
echo -e "*Your sudo password will be needed at points of this script*\n"
echo "Enter Client/CTF/Project name"
read projectName
## Checks for a valid project name and allows the script to continue
start_validator(){
	if [ -z "$projectName" ]; then
		echo "The Project Name can't be left blank"
		echo "Enter Client/CTF/Project name..."
		read projectName
		echo -e 'The '$projectName' attack machine is being prepped.... \n'
	else
		echo -e 'The '$projectName' attack machine is being prepped.... \n'
	fi
}
start_validator
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