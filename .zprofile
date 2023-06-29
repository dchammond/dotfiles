if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi

export QSYS_ROOTDIR="/home/dillon/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
