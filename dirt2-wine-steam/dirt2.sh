#!/bin/bash
export WINEPREFIX="$HOME"/.dirt2/wine
export WINEPATH=/usr/i686-w64-mingw32/bin
if [ ! -d "$HOME"/.dirt2 ] ; then
   mkdir -p "$HOME"/.dirt2/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/dirt2
/usr/bin/wine dirt2.exe
