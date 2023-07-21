#! /bin/bash


if (( $# != 1 )); then
    echo "Usage ./update.sh (local|remote)"
    exit 1
fi

if [ $1 = "local" ]; then
    mkdir -p ~/.config 
    read -e -p "You sure about overwriting the current ~/.config ? [y/N] " choice
    if [[ "$choice" != [Yy]* ]]; then 
        exit 0
    fi
    echo "Just in case backup the current config to /tmp"
    cp -r ~/.config /tmp
    for dir in $(ls config)
    do
        if [ "$dir" = "nvchad" ]; then
            echo "dotfiles/config/$dir/custom -> ~/.config/nvim/lua/custom"
            cp -r config/nvchad/custom ~/.config/nvim/lua
        else 
            echo "dotfiles/config/$dir -> ~/.config/$dir"
            cp -r config/$dir ~/.config
        fi
            
    done
fi


if [ $1 = "remote" ]; then
    for dir in $(ls config)
    do
        if [ "$dir" == "nvchad" ]; then
            echo "dotfiles/config/$dir/custom <- ~/.config/nvim/lua/custom"
            cp -r  ~/.config/nvim/lua/custom config/nvchad
        else 
            echo "dotfiles/config/$dir <- ~/.config/$dir"
            rm -rf config/$dir
            cp -r ~/.config/$dir config
        fi
    done
fi
