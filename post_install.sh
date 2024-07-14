#!/bin/bash

yay -S --noconfirm --answerdiff None --answerclean None --removemake polybar ulauncher micro copyq flameshot

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
yes '1' | ./setup.sh
cd .. && rm -rf polybar-themes

cp /etc/X11/xinit/xinitrc ~/.xinitrc

cp -rf ./.config ~
sudo chmod x+ ~/.config

i3-msg reload
i3-msg restart

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
