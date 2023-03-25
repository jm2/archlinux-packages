#!/bin/bash
export WINEPREFIX="$HOME"/.dirtshowdown/wine
if [ ! -d "$HOME"/.dirtshowdown ] ; then
   mkdir -p "$HOME"/.dirtshowdown/wine
   wineboot -u
   winetricks openal dxvk
fi
cd /opt/dirtshowdown
/usr/bin/wine showdown_avx.exe
