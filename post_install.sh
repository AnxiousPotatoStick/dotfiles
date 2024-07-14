#!/bin/bash

localectl set-x11-keymap us

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -rsi
cd .. && rm -rf yay

yay -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi x265 x264 lame pacman-contrib ttf-ms-win11-auto ulauncher

#sudo mkdir /etc/pacman.d/hooks
#sudo nano /etc/pacman.d/hooks/clean_package_cache.hook

cp /etc/X11/xinit/xinitrc ~/.xinitrc

git clone https://github.com/paysonwallach/aqua-lightdm-webkit-theme /usr/share/lightdm-webkit/themes/aqua

echo "Installing fonts"

yay -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi x265 x264 lame
