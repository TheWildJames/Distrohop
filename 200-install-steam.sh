#!/bin/bash

echo "######################################"
echo "Checking if Steam is installed..."

# Check and install Steam using pacman
if ! pacman -Qq | grep -qw steam; then
    echo "Steam is not installed. Installing it..."
    sudo pacman -S steam
else
    echo "Steam is already installed."
fi

echo "######################################"
echo "Checking if protonup-qt is installed..."

# Check and install protonup-qt using yay
if ! yay -Qq | grep -qw protonup-qt; then
    echo "protonup-qt is not installed. Installing it..."
    yay -S protonup-qt
else
    echo "protonup-qt is already installed."
fi

echo "######################################"
echo "Installing protontricks from Flathub Beta..."

# Install protontricks from Flathub Beta repository
if ! flatpak list --app | grep -qw com.github.Matoking.protontricks; then
    echo "protontricks is not installed. Installing it..."
    flatpak install flathub-beta com.github.Matoking.protontricks
else
    echo "protontricks is already installed."
fi

echo "######################################"
