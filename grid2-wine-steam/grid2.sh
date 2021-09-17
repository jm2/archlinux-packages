#!/bin/bash
export WINEPREFIX="$HOME"/.grid2/wine
if [ ! -d "$HOME"/.grid2 ] ; then
   mkdir -p "$HOME"/.grid2/wine
   wineboot -u
   winetricks dxvk
fi
cd /opt/grid2
/usr/bin/wine grid2_avx.exe
