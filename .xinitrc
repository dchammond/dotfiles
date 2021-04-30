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

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#3xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

# My stuff
export TERMINAL=termite
xbindkeys
#xrandr --output DVI-2-1 --auto --output DisplayPort-0 --dpi 125.37 --right-of DVI-I-2-2
#xrandr --output DVI-2-1 --auto --output DisplayPort-0 --off
xrandr --output lg-left --mode 2560x1440 --rate 144 --dpi 120 --auto --output samsung-right --mode 3840x2160 --rate 60 --dpi 120 --auto
compton --config ~/.config/compton/compton.conf -b
xset +fp /usr/share/fonts/misc
~/.fehbg &
fluxgui &
xautolock -time 10 "i3lock -c 0a0a0a" &
amixer set Master mute
exec /usr/bin/i3
