#!/bin/bash
export WINEPREFIX="$HOME"/.grid/wine
export WINE_LARGE_ADDRESS_AWARE=1
if [ ! -d "$HOME"/.grid ] ; then
   mkdir -p "$HOME"/.grid/wine
   wineboot -u
   winetricks openal
   setup_dxvk install
fi
cd /opt/grid
/usr/bin/wine GRID.exe
