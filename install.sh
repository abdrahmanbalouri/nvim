#!/usr/bin/env zsh

set -e

echo "[*] Downloading Neovim..."
wget -q https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz -O /tmp/nvim.tar.gz

echo "[*] Extracting..."
rm -rf "$HOME/nvim"
tar -xzf /tmp/nvim.tar.gz -C "$HOME"

mv "$HOME/nvim-linux-x86_64" "$HOME/nvim"

if ! grep -q 'HOME/nvim/bin' "$HOME/.zshrc"; then
    echo 'export PATH="$HOME/nvim/bin:$PATH"' >> "$HOME/.zshrc"
fi

export PATH="$HOME/nvim/bin:$PATH"

echo
echo "===================================="
echo " Neovim installed successfully!"
echo "===================================="

nvim --version | head -n 1

echo
echo "Run:"
echo "source ~/.zshrc"