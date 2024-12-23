#!/bin/bash
export WINEPREFIX="$HOME"/.codmw2/wine
if [ ! -d "$HOME"/.codmw2 ] ; then
   mkdir -p "$HOME"/.codmw2/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/codmw2
/usr/bin/wine iw4x.exe
