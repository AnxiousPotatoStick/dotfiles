#!/bin/bash

localectl set-x11-keymap us

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -rsi --noconfirm
cd .. && rm -rf yay

yay -S --noconfirm --answerdiff None --answerclean None --removemake gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi x265 x264 lame pacman-contrib ttf-ms-win11-auto ulauncher

#sudo mkdir /etc/pacman.d/hooks
#sudo nano /etc/pacman.d/hooks/clean_package_cache.hook

git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
yes '1' | ./setup.sh
cd .. && rm -rf polybar-themes

cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "Installing fonts"

yay -S --noconfirm --answerdiff None --answerclean None --removemake gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi x265 x264 lame

cp -rf ./.config ~
sudo chmod x+ ~/.config

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

i3-msg reload
i3-msg restart
