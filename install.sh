#!/bin/bash
set -eu

echo "🌸 Installing Nusa for Linux..."

SOURCE_DIR=$(cd -- "$(dirname -- "$0")" && pwd -P)
BIN_DIR="$HOME/.local/bin"
DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}"
APP_DIR="$DATA_DIR/applications"
AUTOSTART_DIR="$HOME/.config/autostart"

mkdir -p "$BIN_DIR" "$APP_DIR" "$AUTOSTART_DIR"

# Copy binary to ~/.local/bin/nusa
cp "$SOURCE_DIR/nusa" "$BIN_DIR/nusa"
chmod +x "$BIN_DIR/nusa"

# Create Desktop Entry
cat << 'EOF' > "$APP_DIR/nusa.desktop"
[Desktop Entry]
Type=Application
Name=Nusa
Comment=A living interactive notch for Linux desktop
Exec=nusa
Icon=preferences-desktop-display
Terminal=false
Categories=Utility;DesktopSettings;
StartupNotify=false
EOF

# Create Autostart Entry
cat << 'EOF' > "$AUTOSTART_DIR/nusa.desktop"
[Desktop Entry]
Type=Application
Name=Nusa Living Notch
Comment=Interactive living notch for Linux desktop
Exec=nusa
Terminal=false
X-GNOME-Autostart-enabled=true
EOF

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "$APP_DIR" 2>/dev/null || true
fi

echo "✨ Nusa has been successfully installed!"
echo "   Command: ~/.local/bin/nusa"
echo "   Autostart: Enabled"
echo ""
echo "Starting Nusa now..."
nohup "$BIN_DIR/nusa" >/dev/null 2>&1 &
echo "Done!"
