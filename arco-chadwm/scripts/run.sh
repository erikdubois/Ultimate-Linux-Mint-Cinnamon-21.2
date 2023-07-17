#!/bin/sh

xrandr --output Virtual1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
/usr/lib/notification-daemon/notification-daemon &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
#nm-applet &
sxhkd -c ~/.config/arco-chadwm/sxhkd/sxhkdrc &
picom -b  --config ~/.config/arco-chadwm/picom/picom.conf &
feh --bg-fill ~/.config/arco-chadwm/wallpaper/chadwm1.png &
#nitrogen --set-zoom-fill --random /home/erik/Insync/Apps/Desktoppr/ --head=0
#nitrogen --set-zoom-fill --random /home/erik/Insync/Apps/Desktoppr/ --head=1
sh /home/erik/.screenlayout/erik.sh
pkill bar.sh
~/.config/arco-chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
