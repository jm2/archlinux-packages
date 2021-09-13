#!/bin/bash
export WINEPREFIX="$HOME"/.simcity4/wine
if [ ! -d "$HOME"/.simcity4 ] ; then
   mkdir -p "$HOME"/.simcity4/wine
   wineboot -u
fi
cd /opt/simcity4
/usr/bin/wine "Apps/SimCity 4.exe" -CustomResolution:enabled -r1920x1080x32
