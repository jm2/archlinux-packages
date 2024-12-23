#!/bin/bash
export WINEPREFIX="$HOME"/.splitsecond/wine
if [ ! -d "$HOME"/.splitsecond ] ; then
   mkdir -p "$HOME"/.splitsecond/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/splitsecond
/usr/bin/wine SplitSecond.exe
