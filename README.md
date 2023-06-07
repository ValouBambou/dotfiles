# dotfiles
Some config for various software that I use on various machines.

## Requirement

- python3
- shell: `zsh oh-my-zsh zsh-autosuggestions zsh-syntax-highlighting`
- cli tools: `exa bat fd ripgrep` 
- text editors: `neovim helix` 
- wayland compositor related: `sway swayidle swaylock swaybg`
- screenshot tools: `grim slurp swappy`
- topbar: `waybar nwg-bar(AUR) nm-applet pavucontrol brightnessctl`

## Notes 

- neovim (nvchad custom config) run :LazySync and :MasonInstallAll after install.

## Quick start

Simply run `./install.sh` to run the install scripts inside each directory inside `config/`. Those scripts will copy the configurations to the appropriate location on the newmachine. Optionnally scripts can install and clean stuff so be careful and read it they are dummy.
