#!/bin/dash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
. ~/.config/arco-chadwm/scripts/bar_themes/onedark

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^c$white^ ^b$black^   CPU"
  printf "^c$white^ ^b$black^ $cpu_val"
}



battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT1/capacity)"
  printf "^c$blue^   $get_capacity"
}

brightness() {
  printf "^c$red^   "
  printf "^c$red^%.0f\n" $(cat /sys/class/backlight/*/brightness)
}

mem() {
  printf "^c$blue^^b$black^ "
  printf "^c$blue^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$black^ ^b$blue^  ^d^%s" " ^c$blue^Connected" ;;
	down) printf "^c$black^ ^b$blue^  ^d^%s" " ^c$blue^Disconnected" ;;
	esac
}

clock() {
	#printf "^c$black^ ^b$darkblue^  "
	printf "^c$black^^b$blue^ $(date '+%d/%m/%y %H:%M')  "
}

while true; do
  sleep 3 && xsetroot -name " $(cpu) $(mem) $(clock)"
done
