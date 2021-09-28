#!/bin/bash
export WINEPREFIX="$HOME"/.codaw/wine
if [ ! -d "$HOME"/.codaw ] ; then
   mkdir -p "$HOME"/.codaw/wine
   wineboot -u
   winetricks dxvk
fi
cd /opt/codaw
/usr/bin/wine s1x.exe
