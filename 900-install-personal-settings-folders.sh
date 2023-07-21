#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings to reset to default"
echo "################################################################"
tput sgr0

echo "################################################################"
echo "################### Personal directories to create"
echo "################################################################"
tput sgr0
echo
echo "Creating folders we use later"
echo

#[ -d /etc/skel/.config ] || sudo mkdir -p /etc/skel/.config
#[ -d /personal ] || sudo mkdir -p /personal

[ -d $HOME"/.bin" ] || mkdir -p $HOME"/.bin"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.local/share/icons" ] || mkdir -p $HOME"/.local/share/icons"
[ -d $HOME"/.local/share/themes" ] || mkdir -p $HOME"/.local/share/themes"
[ -d $HOME"/.config" ] || mkdir -p $HOME"/.config"
#[ -d $HOME"/.config/xfce4" ] || mkdir -p $HOME"/.config/xfce4"
#[ -d $HOME"/.config/xfce4/xfconf" ] || mkdir -p $HOME"/.config/xfce4/xfconf"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
#[ -d $HOME"/.config/gtk-4.0" ] || mkdir -p $HOME"/.config/gtk-4.0"
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"
#[ -d $HOME"/.config/fish" ] || mkdir -p $HOME"/.config/fish"
#[ -d $HOME"/.config/neofetch" ] || mkdir -p $HOME"/.config/neofetch"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync"
[ -d $HOME"/Projects" ] || mkdir -p $HOME"/Projects"

echo
tput setaf 2
echo "################################################################"
echo "################### Personal settings to install - any OS"
echo "################################################################"
tput sgr0
echo

echo
echo "Adding personal thunar to .config/thunar"
[ -d $HOME"/.config/Thunar" ] || mkdir -p $HOME"/.config/Thunar"
cp  $installed_dir/personal/thunar/uca.xml $HOME/.config/Thunar

echo
echo "Installing personal settings of variety"
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
cp $installed_dir/personal/variety/variety.conf ~/.config/variety/
cp $installed_dir/personal/variety/set_wallpaper ~/.config/variety/scripts/

echo
echo "Installing .bashrc"
cp $installed_dir/personal/bash/bashrc ~/.bashrc

echo
echo "Grub timeout lower"
FIND="GRUB_TIMEOUT=0"
REPLACE="GRUB_TIMEOUT=x"
sudo sed -i "s/$FIND/$REPLACE/g" /etc/default/grub
sudo update-grub

echo
echo "Grub theme"
sudo apt install grub2-theme-mint

echo
tput setaf 6
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
