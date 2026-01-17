#! /bin/bash
export WINEPREFIX="$HOME"/.ut2004/wine
if [ ! -d "$HOME"/.ut2004 ] ; then
   mkdir -p "$HOME"/.ut2004/System
   cp /opt/ut2004/__support/app/System/* "$HOME"/.ut2004/System/
   grep -FB1 CDKey /opt/ut2004/goggame-1207658691.script | grep -Po '"valueData": "\K[A-Z0-9-]*(?=",)' > "$HOME"/.ut2004/System/CDkey
   chmod 600 "$HOME"/.ut2004/System/CDkey
fi
cd /opt/ut2004/System
while getopts ":lwh" opt; do
  case ${opt} in
    l ) ./ut2004-bin
      ;;
    w ) if [ ! -d "$HOME"/.ut2004/wine ] ; then
          mkdir -p "$HOME"/.ut2004/wine
          wineboot -u
          setup_dxvk install --symlink
        fi
        /usr/bin/wine ut2004-win64.exe
      ;;
    h ) echo "Usage: ut2004 [-l: native linux binary (default)|-w wine win64 binary]"
      ;;
  esac
  exit
done

# Architecture detection
ARCH=$(uname -m)
if [[ "$ARCH" == "x86_64" || "$ARCH" == "amd64" ]]; then
    if [ -f "./ut2004-bin-linux-amd64" ]; then
        BINARY="./ut2004-bin-linux-amd64"
    else
        BINARY="./ut2004-bin"
    fi
else
    BINARY="./ut2004-bin"
fi

$BINARY
