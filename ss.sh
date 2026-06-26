#!/usr/bin/env bash

set -e

echo "🚀 Installing AstroNvim..."

# Check requirements
command -v git >/dev/null || { echo "git is not installed"; exit 1; }
command -v nvim >/dev/null || { echo "neovim is not installed"; exit 1; }

# Backup old config
for dir in \
  "$HOME/.config/nvim" \
  "$HOME/.local/share/nvim" \
  "$HOME/.local/state/nvim" \
  "$HOME/.cache/nvim"
do
    [ -d "$dir" ] && mv "$dir" "$dir.bak.$(date +%s)"
done

mkdir -p ~/.config

echo "📦 Cloning AstroNvim..."

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

rm -rf ~/.config/nvim/.git

echo
echo "========================================="
echo " AstroNvim installed successfully!"
echo "========================================="
echo
echo "Run:"
echo
echo "    nvim"
echo
echo "On first launch AstroNvim will install all plugins."