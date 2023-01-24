#!/bin/bash
export WINEPREFIX="$HOME"/.dirtshowdown/wine
export WINEPATH=/usr/i686-w64-mingw32/bin
if [ ! -d "$HOME"/.dirtshowdown ] ; then
   mkdir -p "$HOME"/.dirtshowdown/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/dirtshowdown
/usr/bin/wine showdown_avx.exe
