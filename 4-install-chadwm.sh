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

cp -r arco-chadwm $HOME/.config/

cd $HOME/.config/arco-chadwm/chadwm
make
sudo make install

sudo touch /usr/share/xsessions/chadwm.desktop

echo '
[Desktop Entry]
Encoding=UTF-8
Name=Chadwm
Comment=Dynamic window manager
Exec=/home/erik/.config/arco-chadwm/scripts/./run.sh
Icon=chadwm
Type=Application' | sudo tee /usr/share/xsessions/chadwm.desktop


echo "################################################################"
echo "#################    chadwm installed     ######################"
echo "################################################################"
