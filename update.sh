#! /bin/bash


if (( $# != 1 )); then
    echo "Usage ./update.sh (local|remote)"
    exit 1
fi

if [ $1 = "local" ] then
    mkdir -p ~/.config 
    for dir in $(ls config)
    do
        if [ $dir = "nvchad" ] then
            echo "Copying dotfiles/config/$dir/custom to ~/.config/nvim/lua/custom"
            cp -r config/nvchad/custom ~/.config/nvim/lua
        else 
            echo "Copying dotfiles/config/$dir to ~/.config/$dir"
            cp -r config/$dir ~/.config/$dir
        fi
            
    done
fi


if [ $1 = "remote" ] then
    for dir in $(ls config)
    do
        if [ $dir = "nvchad" ] then
            echo "Copying dotfiles/config/$dir/custom from ~/.config/nvim/lua/custom"
            cp -r  ~/.config/nvim/lua/custom config/nvchad
        else 
            echo "Copying dotfiles/config/$dir from ~/.config/$dir"
            cp -r ~/.config/$dir config
        fi
    done
fi
