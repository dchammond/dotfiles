if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    . ~/.zshrc
    exec sway
fi
