#!/bin/bash
export WINEPREFIX="$HOME"/.grid2019/wine
if [ ! -d "$HOME"/.grid2019 ] ; then
   mkdir -p "$HOME"/.grid2019/wine
   wineboot -u
   setup_dxvk install --symlink
fi
cd /opt/grid2019
/usr/bin/wine Grid_dx12.exe
