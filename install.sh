#!/bin/bash
# Install agentic-tmux

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$HOME/.local/bin"

echo "Installing agentic-tmux..."

# Create bin directory
mkdir -p "$BIN_DIR"

# Copy scripts
cp "$SCRIPT_DIR/bin/"* "$BIN_DIR/"
chmod +x "$BIN_DIR/tmux-agent-sidebar"
chmod +x "$BIN_DIR/tmux-sidebar-toggle"
chmod +x "$BIN_DIR/tmux-window-name"
chmod +x "$BIN_DIR/tmux-agent-emoji"

# Backup existing tmux.conf
if [[ -f "$HOME/.tmux.conf" ]]; then
    cp "$HOME/.tmux.conf" "$HOME/.tmux.conf.backup"
    echo "Backed up existing .tmux.conf to .tmux.conf.backup"
fi

# Copy tmux config
cp "$SCRIPT_DIR/tmux.conf" "$HOME/.tmux.conf"

# Install petname for random window names
if ! command -v petname &>/dev/null; then
    echo "Installing petname..."
    pip3 install petname --quiet 2>/dev/null || echo "Warning: Could not install petname"
fi

echo "Done! Reload tmux config with: tmux source-file ~/.tmux.conf"
