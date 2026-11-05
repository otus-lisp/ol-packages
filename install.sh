#!/bin/bash
REPO="$HOME/.local/share/ol-packages"
BIN_DIR="$HOME/.local/bin"

mkdir -p "$REPO" "$BIN_DIR"

git clone https://github.com/otus-lisp/ol-packages "$REPO"
chmod +x "$REPO/olpm"
ln -sf "$REPO/olpm" "$BIN_DIR/olpm"

echo ""                         >> "$HOME/.bashrc"
echo "# ol-packages repo setup" >> "$HOME/.bashrc"
echo "export OLPM_PATH=$REPO"   >> "$HOME/.bashrc"

if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo "Warning: $BIN_DIR is not in your PATH. Add 'export PATH=\$PATH:\$HOME/.local/bin' to your shell profile."
fi

export OLPM_PATH="$REPO"
$REPO/olpm update
