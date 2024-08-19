#!/bin/bash

echo "######################################"
echo "Checking if ufw is installed..."

# Check and install ufw
if ! pacman -Qq | grep -qw ufw; then
    echo "ufw is not installed. Installing it..."
    sudo pacman -S ufw
else
    echo "ufw is already installed."
fi

echo "######################################"
echo "Checking if gufw is installed..."

# Check and install gufw
if ! pacman -Qq | grep -qw gufw; then
    echo "gufw is not installed. Installing it..."
    sudo pacman -S gufw
else
    echo "gufw is already installed."
fi

echo "######################################"
echo "Starting and enabling the ufw service..."

# Start and enable the ufw service
sudo systemctl enable --now ufw

echo "######################################"
