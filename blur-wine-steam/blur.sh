#!/bin/bash
export WINEPREFIX="$HOME"/.blur/wine
if [ ! -d "$HOME"/.blur ] ; then
   mkdir -p "$HOME"/.blur/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/blur
/usr/bin/wine Blur.exe
