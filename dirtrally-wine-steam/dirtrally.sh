#!/bin/bash
export WINEPREFIX="$HOME"/.dirtrally/wine
if [ ! -d "$HOME"/.dirtrally ] ; then
   mkdir -p "$HOME"/.dirtrally/wine
   wineboot -u
   winetricks dxvk
fi
cd /opt/dirtrally
/usr/bin/wine drt.exe
