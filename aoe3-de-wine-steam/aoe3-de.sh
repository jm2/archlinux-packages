#!/bin/bash
export WINEPREFIX="$HOME"/.aoe3-de/wine
if [ ! -d "$HOME"/.aoe3-de ] ; then
   mkdir -p "$HOME"/.aoe3-de/wine
   wineboot -u
   setup_dxvk install --symlink
fi

# DLL overrides for Companion
export WINEDLLOVERRIDES="Age3FakeOnline,AgeFakeHost=n,b"

cd /opt/aoe3-de/agelanserver
./launcher "$@"
