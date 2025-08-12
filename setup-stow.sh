#!/bin/bash

# Detect the operating system and setup appropriate symlinks for Stow

set -e  # Exit on error

echo "Setting up dotfiles with GNU Stow..."

# Change to the dotfiles directory
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DOTFILES_DIR"

# Detect the operating system
OS="$(uname -s)"

echo "Detected OS: $OS"

# Setup alacritty configuration based on OS
if [ "$OS" = "Darwin" ]; then
    echo "Configuring for macOS..."
    
    # Create symlink for macOS alacritty config
    if [ -L .config/alacritty/alacritty.toml ] || [ -e .config/alacritty/alacritty.toml ]; then
        rm -f .config/alacritty/alacritty.toml
    fi
    ln -sf ../alacritty-macos/alacritty.toml .config/alacritty/alacritty.toml
    echo "✓ Linked macOS alacritty configuration"
    
elif [ "$OS" = "Linux" ]; then
    echo "Configuring for Linux..."
    
    # Create symlink for Linux alacritty config
    if [ -L .config/alacritty/alacritty.toml ] || [ -e .config/alacritty/alacritty.toml ]; then
        rm -f .config/alacritty/alacritty.toml
    fi
    ln -sf ../alacritty-linux/alacritty.toml .config/alacritty/alacritty.toml
    echo "✓ Linked Linux alacritty configuration"
    
else
    echo "Warning: Unsupported OS: $OS"
    echo "Using default configuration..."
fi

# Run stow to create symlinks in home directory
echo "Running stow to create symlinks..."
stow -v --restow .config

echo "Setup complete!"
echo ""
echo "Note: The following configurations have been applied:"
echo "  - Alacritty: OS-specific configuration"
echo "  - Tmux: Shared configuration"
echo "  - Other configs: Shared across platforms"
echo ""

if [ "$OS" = "Darwin" ]; then
    echo "macOS specific settings:"
    echo "  - Alacritty font size: 13"
    echo "  - Tmux path: /opt/homebrew/bin/tmux"
elif [ "$OS" = "Linux" ]; then
    echo "Linux specific settings:"
    echo "  - Alacritty font size: 11"
    echo "  - Tmux path: /usr/bin/tmux"
fi