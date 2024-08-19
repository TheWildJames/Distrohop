#!/bin/bash

echo "######################################"
echo "Checking if timeshift and timeshift-autosnap are installed..."

# Check and install timeshift
if ! pacman -Qq | grep -qw timeshift; then
    echo "timeshift is not installed. Installing it..."
    sudo pacman -Syu --noconfirm timeshift
else
    echo "timeshift is already installed."
fi

# Check and install timeshift-autosnap
if ! pacman -Qq | grep -qw timeshift-autosnap; then
    echo "timeshift-autosnap is not installed. Installing it..."
    sudo pacman -Syu --noconfirm timeshift-autosnap
else
    echo "timeshift-autosnap is already installed."
fi

echo "######################################"
echo "Enabling and starting the cronie service..."

# Enable and start cronie service
sudo systemctl enable --now cronie

echo "######################################"
