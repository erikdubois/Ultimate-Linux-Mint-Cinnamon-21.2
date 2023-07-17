#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# installing dependencies to build
sudo apt install -y build-essential libimlib2-dev libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev

cp arco-chadwm $USER/.config/

echo "################################################################"
echo "#################    chadwm installed     ######################"
echo "################################################################"
