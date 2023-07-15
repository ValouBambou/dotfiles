#! /bin/bash

sudo pacman -Syyu
sudo pacman -S \
    openssh \
    git \
    python \
    neovim \
    zsh \
    ripgrep \
    helix \
    exa \
    bat \
    fd \
    sway \
    swayidle \
    swaybg \
    swaylock \
    mako \
    grim \
    slurp \
    swappy \
    network-manager-applet \
    pipewire \
    pipewire-audio \
    pipewire-alsa \
    pipewire-docs \
    pipewire-pulse \
    pipewire-jack \
    pavucontrol \
    brightnessctl \
    waybar \
    kanshi \
    blueman

git clone git@github.com:ValouBambou/dotfiles.git 
cd dotfiles
./update.sh local
