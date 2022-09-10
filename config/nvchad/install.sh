#! /bin/bash

echo "Removing old nvim config to install nvchad"
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

echo "Cloning nvchad"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

echo "Copy custom nvchad config"
cp -r custom ~/.config/nvim/lua/
