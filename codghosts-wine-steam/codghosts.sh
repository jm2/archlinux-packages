#!/bin/bash
export WINEPREFIX="$HOME"/.codghosts/wine
if [ ! -d "$HOME"/.codghosts ] ; then
   mkdir -p "$HOME"/.codghosts/wine
   wineboot -u
   winetricks dxvk
fi
cd /opt/codghosts
/usr/bin/wine iw6x.exe
