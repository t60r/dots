nitrogen --restore &
xrdb merge ./.Xresources &
xsetroot -cursor_name left_ptr &
flashfocus &
colors.sh &
xset +fp /usr/share/fonts/artwiz-fonts &
xset fp rehash &
#sxhkd &
#exec bspwm

case $WM in
2bwm)
	exec 2bwm
	;;
wmutils)
        /usr/local/bin/sxhkd -c ~/.config/sxhkd/sxhkdrc.wmutils
        /usr/bin/wew | ~/bin/wchg &
        exec ~/bin/wmrc 
        ;;
xmonad)
        exec xmonad
        ;;
fvwm)
        exec fvwm-crystal
        ;;
*)     
        /usr/bin/polybar burs & 
        /usr/local/bin/sxhkd &
	exec /usr/local/bin/bspwm
	;;
esac
