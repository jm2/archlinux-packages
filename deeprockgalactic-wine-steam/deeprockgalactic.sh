#!/bin/bash
export WINEPREFIX="$HOME"/.deeprockgalactic/wine
if [ ! -d "$HOME"/.deeprockgalactic ] ; then
   mkdir -p "$HOME"/.deeprockgalactic/wine
   wineboot -u
   winetricks dxvk
fi
cd /opt/deeprockgalactic
/usr/bin/wine FSD.exe
