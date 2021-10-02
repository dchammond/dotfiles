#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# My stuff
export TERMINAL=termite
xbindkeys
xrandr --output DisplayPort-1 --mode 3840x2160 --rate 60 --primary # Samsung
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 144 --scale-from 3840x2160 --right-of DisplayPort-1 # LG
compton --config ~/.config/compton/compton.conf -b
xset +fp /usr/share/fonts/misc
~/.fehbg &
fluxgui &
xautolock -time 10 "i3lock -c 0a0a0a" &
amixer set Master mute
exec /usr/bin/i3
