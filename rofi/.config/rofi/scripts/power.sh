selection=$(echo -e "Shutdown\nReboot\nLock Screen\nQuit bspwm\nReload bspwm" | rofi -dmenu -i -l 5 -p "Control:")

case $selection in
	"Shutdown")
		shutdown now
		;;
	"Reboot")
		reboot
		;;
	"Lock Screen")
		betterlockscreen -l dim
		;;
	"Reload bspwm")
		bspc wm -r
		;;
	"Quit bspwm")
		bspc quit
		;;
esac

