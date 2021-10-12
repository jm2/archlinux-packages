#!/bin/bash
export WINEPREFIX="$HOME"/.splitsecond/wine
if [ ! -d "$HOME"/.splitsecond ] ; then
   mkdir -p "$HOME"/.splitsecond/wine
   wineboot -u
fi
cd /opt/splitsecond
/usr/bin/wine SplitSecond.exe
