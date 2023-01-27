#!/bin/bash
export WINEPREFIX="$HOME"/.doom2016/wine
if [ ! -d "$HOME"/.doom2016 ] ; then
   mkdir -p "$HOME"/.doom2016/wine
   wineboot -u
   winetricks -q mfc140
fi
cd /opt/doom2016
/usr/bin/wine DOOMx64vk.exe
