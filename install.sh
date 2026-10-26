#!/bin/bash
set -eu

echo "🌸 Installing Bubu for Linux..."

SOURCE_DIR=$(cd -- "$(dirname -- "$0")" && pwd -P)
BIN_DIR="$HOME/.local/bin"
DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}"
APP_DIR="$DATA_DIR/applications"
AUTOSTART_DIR="$HOME/.config/autostart"

mkdir -p "$BIN_DIR" "$APP_DIR" "$AUTOSTART_DIR"

# Copy binary to ~/.local/bin/bubu
cp "$SOURCE_DIR/bubu" "$BIN_DIR/bubu"
chmod +x "$BIN_DIR/bubu"

# Create Desktop Entry
cat << 'EOF' > "$APP_DIR/bubu.desktop"
[Desktop Entry]
Type=Application
Name=Bubu
Comment=A living interactive notch for Linux desktop
Exec=bubu
Icon=preferences-desktop-display
Terminal=false
Categories=Utility;DesktopSettings;
StartupNotify=false
EOF

# Create Autostart Entry
cat << 'EOF' > "$AUTOSTART_DIR/bubu.desktop"
[Desktop Entry]
Type=Application
Name=Bubu Living Notch
Comment=Interactive living notch for Linux desktop
Exec=bubu
Terminal=false
X-GNOME-Autostart-enabled=true
EOF

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "$APP_DIR" 2>/dev/null || true
fi

echo "✨ Bubu has been successfully installed!"
echo "   Command: ~/.local/bin/bubu"
echo "   Autostart: Enabled"
echo ""
echo "Starting Bubu now..."
nohup "$BIN_DIR/bubu" >/dev/null 2>&1 &
echo "Done!"
