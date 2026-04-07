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
    sddm \
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

echo "Installing SDDM theme..."
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo bash -c 'echo -e "[Theme]\nCurrent=sddm-astronaut-theme" > /etc/sddm.conf'
sudo systemctl enable sddm

echo "Done! Please reboot."
