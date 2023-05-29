# dotfiles
Some config for various software that I use on various machines.

## Requirement

- cli tools: `exa bat fd ripgrep` 
- text editors: `neovim helix` 
- wayland compositor related: `sway swayidle swaylock`

## Notes 

- neovim (nvchad custom config) run :PackerSync and :MasonInstall after install.

## Quick start

Simply run `./install.sh` to run the install scripts inside each directory inside `config/`. Those scripts will copy the configurations to the appropriate location on the newmachine. Optionnally scripts can install and clean stuff so be careful and read it they are dummy.
