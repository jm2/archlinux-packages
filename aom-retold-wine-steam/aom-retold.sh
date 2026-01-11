#!/bin/bash
export WINEPREFIX="$HOME"/.aom-retold/wine
if [ ! -d "$HOME"/.aom-retold ] ; then
   mkdir -p "$HOME"/.aom-retold/wine
   wineboot -u
   setup_dxvk install --symlink
fi

# DLL overrides for Companion
export WINEDLLOVERRIDES="AgeFakeHost=n,b"

cd /opt/aom-retold-wine-steam
/usr/bin/wine AoMRT_s.exe "$@"
