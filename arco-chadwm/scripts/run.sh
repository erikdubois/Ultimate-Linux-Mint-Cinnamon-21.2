#!/bin/sh

#xrdb merge ~/.Xresources 
#xbacklight -set 10 &
#xset r rate 200 50 &

sxhkd -c ~/.config/arco-chadwm/sxhkd/sxhkdrc &
picom -b  --config ~/.config/arco-chadwm/picom/picom.conf &
feh --bg-fill ~/.config/arco-chadwm/wallpaper/chadwm1.png &
sh /home/erik/.screenlayout/erik.sh
pkill bar.sh
~/.config/arco-chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
