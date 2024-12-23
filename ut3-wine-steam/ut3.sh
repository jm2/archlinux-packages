#!/bin/bash
export WINEPREFIX="$HOME"/.ut3/wine
if [ ! -d "$HOME"/.ut3 ] ; then
   mkdir -p "$HOME"/.ut3/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/ut3/Binaries
/usr/bin/wine UT3.exe -nostartupmovies
