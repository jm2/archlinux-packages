#!/bin/bash
export WINEPREFIX="$HOME"/.grid/wine
export WINE_LARGE_ADDRESS_AWARE=1
export WINEPATH=/usr/i686-w64-mingw32/bin
if [ ! -d "$HOME"/.grid ] ; then
   mkdir -p "$HOME"/.grid/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/grid
/usr/bin/wine GRID.exe
