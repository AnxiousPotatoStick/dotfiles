#!/bin/bash

sudo pacman -S zsh
yay -S --noconfirm --answerdiff None --answerclean None --removemake micro copyq flameshot kitty feh

cp -rf ./.config ~
sudo chmod x+ ~/.config

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
