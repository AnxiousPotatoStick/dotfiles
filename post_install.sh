#!/bin/bash

sudo pacman -S zsh
yay -S --noconfirm --answerdiff None --answerclean None --removemake polybar ulauncher micro copyq flameshot kitty picom feh arandr

cp /etc/X11/xinit/xinitrc ~/.xinitrc

cp -rf ./.config ~
sudo chmod x+ ~/.config

i3-msg reload
i3-msg restart

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
