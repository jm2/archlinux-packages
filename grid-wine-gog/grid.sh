#!/bin/bash
export WINEPREFIX="$HOME"/.grid/wine
if [ ! -d "$HOME"/.grid ] ; then
   mkdir -p "$HOME"/.grid/wine
   wineboot -u
fi
cd /opt/grid
/usr/bin/wine GRID.exe
