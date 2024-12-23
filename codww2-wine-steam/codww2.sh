#!/bin/bash
export WINEPREFIX="$HOME"/.codww2/wine
if [ ! -d "$HOME"/.codww2 ] ; then
   mkdir -p "$HOME"/.codww2/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/codww2
/usr/bin/wine s2_sp64_ship.exe
