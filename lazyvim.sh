#!/usr/bin/env bash

set -e

echo "==> Checking Neovim..."

if ! command -v nvim >/dev/null 2>&1; then
    echo "❌ Neovim is not installed."
    exit 1
fi

if ! command -v git >/dev/null 2>&1; then
    echo "❌ Git is not installed."
    exit 1
fi

echo "==> Backing up old configuration..."

[ -d "$HOME/.config/nvim" ] && mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak.$(date +%s)"
[ -d "$HOME/.local/share/nvim" ] && mv "$HOME/.local/share/nvim" "$HOME/.local/share/nvim.bak.$(date +%s)"
[ -d "$HOME/.local/state/nvim" ] && mv "$HOME/.local/state/nvim" "$HOME/.local/state/nvim.bak.$(date +%s)"
[ -d "$HOME/.cache/nvim" ] && mv "$HOME/.cache/nvim" "$HOME/.cache/nvim.bak.$(date +%s)"

echo "==> Installing LazyVim Starter..."

git clone https://github.com/LazyVim/starter ~/.config/nvim

rm -rf ~/.config/nvim/.git

echo
echo "======================================"
echo "✅ LazyVim installed successfully!"
echo "======================================"
echo
echo "Run:"
echo "    nvim"
echo
echo "On the first launch, Lazy.nvim will automatically install all plugins."