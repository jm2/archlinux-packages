#!/bin/bash
export WINEPREFIX="$HOME"/.dirtrally2/wine
if [ ! -d "$HOME"/.dirtrally2 ] ; then
   mkdir -p "$HOME"/.dirtrally2/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/dirtrally2
/usr/bin/wine dirtrally2.exe
