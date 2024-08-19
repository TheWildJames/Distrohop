#!/bin/bash

echo "######################################"
echo "Checking if Flatpak is installed..."

# Check and install Flatpak
if ! pacman -Qq | grep -qw flatpak; then
    echo "Flatpak is not installed. Installing it..."
    sudo pacman -S flatpak
else
    echo "Flatpak is already installed."
fi

echo "######################################"
echo "Setting up Flathub repository..."

# Add Flathub repository
if ! flatpak remotes | grep -qw flathub; then
    echo "Adding Flathub repository..."
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
else
    echo "Flathub repository is already added."
fi

echo "######################################"
echo "Setting up Flathub Beta repository..."

# Add Flathub Beta repository
if ! flatpak remotes | grep -qw flathub-beta; then
    echo "Adding Flathub Beta repository..."
    flatpak remote-add --if-not-exists flathub-beta https://flathub.org/repo/flathub-beta.flatpakrepo
else
    echo "Flathub Beta repository is already added."
fi

echo "######################################"
