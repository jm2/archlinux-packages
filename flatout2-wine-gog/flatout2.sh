#!/bin/bash
export WINEPREFIX="$HOME"/.flatout2/wine
if [ ! -d "$HOME"/.flatout2 ] ; then
   mkdir -p "$HOME"/.flatout2/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/flatout2
/usr/bin/wine FlatOut2.exe
