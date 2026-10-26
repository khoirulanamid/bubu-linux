#!/bin/bash
set -eu

echo "Removing Bubu for Linux..."

pkill -f "/bubu" 2>/dev/null || true
rm -f "$HOME/.local/bin/bubu"
rm -f "${XDG_DATA_HOME:-$HOME/.local/share}/applications/bubu.desktop"
rm -f "$HOME/.config/autostart/bubu.desktop"
rm -f "/tmp/bubu-linux.lock"

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "${XDG_DATA_HOME:-$HOME/.local/share}/applications" 2>/dev/null || true
fi

echo "Bubu has been uninstalled."
