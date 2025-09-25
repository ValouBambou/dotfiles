# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

alias py = python
alias ll = ls -l
alias hx = helix
alias gst = git status
alias gc = git commit --verbose
alias ga = git add
alias ggpush =  git push origin (git branch --show-current)
alias ggpull = git pull origin (git branch --show-current)
$env.config.buffer_editor = "helix"
$env.EDITOR = "helix"

# carapace autocomplete
source ~/.cache/carapace/init.nu
