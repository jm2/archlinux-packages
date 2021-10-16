#!/bin/bash
export WINEPREFIX="$HOME"/.warcraft3/wine
if [ ! -d "$HOME"/.warcraft3 ] ; then
   mkdir -p "$HOME"/.warcraft3/wine
   wineboot -u
fi
cd /opt/warcraft3
while getopts ":oxh" opt; do
  case ${opt} in
    o ) /usr/bin/wine 'Warcraft III.exe' -opengl 
      ;;
    x ) /usr/bin/wine 'Frozen Throne.exe' -opengl
      ;;
    h ) echo "Usage: warcraft3 [-o: Reign of Chaos|-x: Frozen Throne (default)]"
      ;;
  esac
  exit
done
/usr/bin/wine 'Frozen Throne.exe' -opengl
