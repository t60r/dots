compton --config .compton.conf &
nitrogen --restore &
xrdb merge ./.Xresources &
xsetroot -cursor_name left_ptr &
polybar burs &
flashfocus &
#exec openbox-session
sxhkd &
exec bspwm
exec xmonad
