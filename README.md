# dotfiles

Some config for various software that I use on various machines.

## Used software

- python3
- shell: `zsh oh-my-zsh zsh-autosuggestions zsh-syntax-highlighting`
- cli tools: `exa bat fd ripgrep`
- text editors: `neovim helix`
- wayland compositor related: `sway swayidle swaylock swaybg wofi`
- screenshot tools: `grim slurp swappy`
- notifications: `mako`
- topbar: `waybar nwg-bar(AUR) nm-applet pavucontrol brightnessctl`
- multimonitor/dock: `kanshi`

## Notes

- neovim (nvchad custom config) run `:LazySync` and `:MasonInstallAll` after
  install.

## Quick start

Simply run `./install_all.sh` to install the required softwares (using pacman)
and copying the config files to `$HOME/.config/`.

## Update script

In order to quickly update the dotfiles git repo or the local config use
`./update.sh (local|remote)`.
