#!/bin/bash
# Generic launch script for Unreal Tournament GOTY

GAME_DIR="/opt/unreal-tournament-goty"
ARCH=$(uname -m)

echo "Detected architecture: $ARCH"

case "$ARCH" in
    x86_64)
        BIN_PATH="$GAME_DIR/System64/ut-bin"
        ;;
    i686|i386)
        BIN_PATH="$GAME_DIR/System/ut-bin"
        ;;
    aarch64|arm64)
        BIN_PATH="$GAME_DIR/SystemARM64/ut-bin"
        ;;
    *)
        echo "Unsupported architecture: $ARCH. Trying generic fallbacks..."
        if [ -f "$GAME_DIR/System64/ut-bin" ]; then
             BIN_PATH="$GAME_DIR/System64/ut-bin"
        elif [ -f "$GAME_DIR/System/ut-bin" ]; then
             BIN_PATH="$GAME_DIR/System/ut-bin"
        else
             echo "Could not find a suitable binary."
             exit 1
        fi
        ;;
esac

if [ ! -f "$BIN_PATH" ]; then
    echo "Binary not found at $BIN_PATH"
    echo "Falling back to check other known locations..."
    if [ -f "$GAME_DIR/System64/ut-bin" ]; then
         BIN_PATH="$GAME_DIR/System64/ut-bin"
    elif [ -f "$GAME_DIR/System/ut-bin" ]; then
         BIN_PATH="$GAME_DIR/System/ut-bin"
    else
         echo "Error: Game binary not found."
         exit 1
    fi
fi

echo "Launching: $BIN_PATH $@"
exec "$BIN_PATH" "$@"
