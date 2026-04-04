#!/bin/bash
echo "Installing dependencies..."

sudo pacman -S --needed \
    zsh \
    starship \
    kitty \
    waybar \
    hyprland \
    hyprpaper \
    blueman \
    brightnessctl \
    networkmanager \
    network-manager-applet \
    yazi \
    ttf-jetbrains-mono-nerd \
    pipewire \
    pipewire-pulse \
    playerctl \
    iwd

yay -S --needed \
    awww \
    obsidian

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Copying dotfiles..."
cp -r hypr ~/.config/
cp -r waybar ~/.config/
cp -r kitty ~/.config/
cp starship.toml ~/.config/
cp .zshrc ~/

echo "Setting zsh as default shell..."
chsh -s /bin/zsh

echo "Done! Please reboot."
