nitrogen --restore &
xrdb merge ./.Xresources &
xsetroot -cursor_name left_ptr &
flashfocus &
colors.sh &
xset +fp /usr/share/fonts/artwiz-fonts &
xset fp rehash &
compton --config .compton.conf &
#sxhkd &
#exec bspwm

case $WM in
2bwm)
        infobar2 &
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
fluxbox)
        exec startfluxbox
        ;;
openbox)
        exec openbox-session
        ;;
*)     
        /usr/bin/polybar -r burs & 
        /usr/local/bin/sxhkd &
	exec /usr/local/bin/bspwm
	;;
esac
