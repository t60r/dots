nitrogen --restore &
xrdb merge ./.Xresources &
xsetroot -cursor_name left_ptr &
flashfocus &
colors.sh &
#sxhkd &
#exec bspwm

case $WM in
2bwm)
	exec /usr/bin/2bwm
	;;
wmutils)
        /usr/local/bin/sxhkd -c ~/.config/sxhkd/sxhkdrc.wmutils
        /usr/bin/wew | ~/bin/wchg &
        exec ~/bin/wmrc 
        ;;
*)     
        /usr/bin/polybar burs & 
        /usr/local/bin/sxhkd &
	exec /usr/local/bin/bspwm
	;;
esac
