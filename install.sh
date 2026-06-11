#!/bin/bash
sudo pacman -Syu

sudo pacman -S niri nautilus gnome-text-editor loupe showtime fuzzel mako waybar xdg-desktop-portal-gnome swaybg kitty polkit-gnome vesktop steam heroic-games-launcher-bin helium-browser-bin proton-cachyos tela-circle-icon-theme-green

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gtk.gtk4.Settings.FileChooser sort-directories-first true
gsettings set org.gnome.TextEditor show-line-numbers true
gsettings set org.gnome.TextEditor tab-width 2
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle-green'
gsettings set org.gnome.desktop.interface monospace-font-name 'Maple Mono NF 11'
xdg-mime default org.gnome.Nautilus.desktop inode/directory application/x-gnome-saved-search


cp -r ./.config/* ~/.config/
cp -r ./.local/* ~/.local/
cp ./.bashrc ~/.bashrc
