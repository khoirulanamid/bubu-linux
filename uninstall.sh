#!/bin/bash
set -eu

echo "Removing Nusa for Linux..."

pkill -f "/nusa" 2>/dev/null || true
rm -f "$HOME/.local/bin/nusa"
rm -f "${XDG_DATA_HOME:-$HOME/.local/share}/applications/nusa.desktop"
rm -f "$HOME/.config/autostart/nusa.desktop"
rm -f "/tmp/nusa-linux.lock"

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "${XDG_DATA_HOME:-$HOME/.local/share}/applications" 2>/dev/null || true
fi

echo "Nusa has been uninstalled."
