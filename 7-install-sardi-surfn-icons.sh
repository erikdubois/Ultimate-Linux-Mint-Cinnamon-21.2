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

git clone https://github.com/erikdubois/Surfn.git /tmp/surfn

mkdir $HOME/.icons
mv /tmp/surfn/surfn-icons/* $HOME/.icons/

mkdir /tmp/sardi
wget https://sourceforge.net/projects/sardi/files/latest/download -O /tmp/sardi/download.tar.gz

unzip /tmp/sardi/download.tar.gz -d $HOME/.icons

echo "################################################################"
echo "###################    icons installed     ######################"
echo "################################################################"
