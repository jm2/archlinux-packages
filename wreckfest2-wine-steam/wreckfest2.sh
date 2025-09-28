#!/bin/bash
export WINEPREFIX="$HOME"/.wreckfest2/wine
if [ ! -d "$HOME"/.wreckfest2 ] ; then
   mkdir -p "$HOME"/.wreckfest2/wine
   wineboot -u
   setup_dxvk install
fi
cd /opt/wreckfest2
/usr/bin/wine Wreckfest2.exe
