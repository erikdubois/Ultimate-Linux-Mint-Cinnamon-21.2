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

# not working

sudo apt install -y samba

sudo mv /etc/samba/smb.conf /etc/samba/samba.conf.bak
sudo wget https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux -O /etc/samba/smb.conf

echo "remove the semi-colons of the last lines"

mkdir $HOME/SHARED

echo "################################################################"
echo "###################    samba installed     ######################"
echo "################################################################"
