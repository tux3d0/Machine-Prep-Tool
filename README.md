# Machine Prep Tool
<p>
  <b>M.P.T</b> is a BASH script designed for automating the red team machine prep process.
</p>
<ul>
  <li> Currently meant for Debian/Ubuntu based systems *only makes calls to the APT Package Manage.</li>
  <li> Creates .bak copies of files that will be modded by the script.</li>
  <li> Updates the systems</li>
  <li> Hardens SSH</li>
  <li> Disables root remote login</li>
    <ul>
      <li> Generates ED25519 SSH Keys</li>
      <li> Disables password auth if wanted</li>
      <li> Enables Google 2fA & PAM ( Work In Progress )</li>
    </ul>
  <li> Creates Directory Structure for pentest / CTF orginization & reporting</li>
  <li> Downloads & Installs tools via APT and pulls from Tools.list -- Allowing for customized lists....will ask for this file name in a future commit</li>
  <li> Creates a $HOME/Tools directory and pulls a set of relative , highly efficient, & up-to-date tools / frameworks from GitHub</li>
  <li> Automates the installation & configurations of some cloned packages</li>
  <li> Downloads , installs, & configures the following languages</li>
    <ul>
      <li> Python 3</li>
      <li> Go</li>
      <li> Rust</li>
      <li> Ruby</li>
      <li> PowerShell 7.x</li>
      <li> Java (In future commits)</li>
    </ul>
  <li>  Downloads & starts a tools that will wipe your machine and bring it back to square 1 after the attack (moonwalk).</li>
  <li>  Downloads & Configures Sliver C2 as a service....Future commits will allow to choose between Havoc , Sliver, or no pre-installed C2</li>
  <li>  Adds a Timestamp to your terminal output</li>
  <li>  starts a log of your terminal input and stores it in $HOME/Projects/$projectName/Log</li>
</ul>
