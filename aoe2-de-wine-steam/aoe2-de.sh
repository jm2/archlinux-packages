#!/bin/bash
export WINEPREFIX="$HOME"/.aoe2-de/wine
if [ ! -d "$HOME"/.aoe2-de ] ; then
   mkdir -p "$HOME"/.aoe2-de/wine
   wineboot -u
   setup_dxvk install --symlink
fi

# DLL overrides for Companion
export WINEDLLOVERRIDES="Age2FakeOnline,AgeFakeHost=n,b"

cd /opt/aoe2-de/agelanserver
./launcher "$@"
