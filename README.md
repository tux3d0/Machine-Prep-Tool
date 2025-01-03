# Machine Prep Tool
<b>M.P.T</b> is a BASH script designed for automating the red team machine prep process.
-Currently meant for Debian/Ubuntu based systems -- Currently only makes calls to the APT Package Manage.
-creates .bak copies of files that will be modded by the script.
-Updates the systems
- Hardens SSH
- - Disables root remote login
  - Generates ED25519 SSH Keys
  - Disables password auth if wanted
  - Enables Google 2fA & PAM ( Work In Progress )
- Creates Directory Structure for pentest / CTF orginization & reporting
- Downloads & Installs tools via APT and pulls from Tools.list -- Allowing for customized lists....will ask for this file name in a future commit
- Creates a $HOME/Tools directory and pulls a set of relative , highly efficient, & up-to-date tools / frameworks from GitHub
- -Automates the installation & configurations of some cloned packages
- Downloads , installs, & configures the following languages
  - Python 3
  - Go
  - Rust
  - Ruby
  - PowerShell 7.x
  - Java (In future commits)
-  Downloads & starts a tools that will wipe your machine and bring it back to square 1 after the attack (moonwalk).
-  Downloads & Configures Sliver C2 as a service....Future commits will allow to choose between Havoc , Sliver, or no pre-installed C2
-  Adds a Timestamp to your terminal output
-  starts a log of your terminal input and stores it in $HOME/Projects/$projectName/Logs

