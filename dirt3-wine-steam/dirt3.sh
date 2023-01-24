#!/bin/bash
export WINEPREFIX="$HOME"/.dirt3/wine
export WINEPATH=/usr/i686-w64-mingw32/bin
if [ ! -d "$HOME"/.dirt3 ] ; then
   mkdir -p "$HOME"/.dirt3/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/dirt3
/usr/bin/wine dirt3_game.exe
