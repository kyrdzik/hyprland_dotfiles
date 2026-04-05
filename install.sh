#!/bin/bash
echo "Installing dependencies..."

sudo pacman -S --needed \
    zsh \
    starship \
    kitty \
    waybar \
    hyprland \
    blueman \
    brightnessctl \
    networkmanager \
    network-manager-applet \
    yazi \
    ttf-jetbrains-mono-nerd \
    pipewire \
    pipewire-pulse \
    playerctl \
    iwd \
    awww \
    rofi-wayland \
    obsidian \
    obs-studio \
    git \
    base-devel

echo "Copying dotfiles..."
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp starship.toml ~/.config/
cp .zshrc ~/
cp -r rofi ~/.config/

echo "Setting zsh as default shell..."
chsh -s /bin/zsh

echo "Done! Please reboot."
