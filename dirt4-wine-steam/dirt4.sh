#!/bin/bash
export WINEPREFIX="$HOME"/.dirt4/wine
if [ ! -d "$HOME"/.dirt4 ] ; then
   mkdir -p "$HOME"/.dirt4/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/dirt4
/usr/bin/wine dirt4.exe
