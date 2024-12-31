#!/bin/bash
#
Print 'System Setup Phase #1 '
Print 'About to update the system and bring everything current before installing tools'

echo -e 'sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'