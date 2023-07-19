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

sudo apt remove -y hexchat

sudo apt remove -y transmission-gtk
sudo apt remove -y transmission-common
sudo apt remove -y transmission-qt
sudo apt remove -y transmission-cli

sudo apt remove -y mint-backgrounds-vanessa
sudo apt remove -y mint-backgrounds-vera

sudo apt remove -y onboard onboard-common

sudo apt remove -y thunderbird
sudo apt remove -y gnome-calendar
sudo apt remove -y webapp-manager
sudo apt remove -y thingy

sudo apt remove -y celluloid 
sudo apt remove -y rhythmbox rhythmbox-data
sudo apt remove -y hypnotix 
sudo apt remove -y sticky
sudo apt remove -y timeshift
sudo apt remove -y seahorse
sudo apt remove -y gufw

sudo apt remove --purge libreoffice* -y
sudo apt clean -y

sudo apt autoremove -y

echo "################################################################"
echo "###################    Packages removed   ######################"
echo "################################################################"
