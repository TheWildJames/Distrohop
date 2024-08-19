#!/bin/bash

echo "######################################"
echo "Checking if nvidia-dkms and nvidia-prime are installed..."

# Check and install nvidia-dkms
if ! pacman -Qq | grep -qw nvidia-dkms; then
    echo "nvidia-dkms is not installed. Installing it..."
    sudo pacman -S nvidia-dkms
else
    echo "nvidia-dkms is already installed."
fi

# Check and install nvidia-prime
if ! pacman -Qq | grep -qw nvidia-prime; then
    echo "nvidia-prime is not installed. Installing it..."
    sudo pacman -S nvidia-prime
else
    echo "nvidia-prime is already installed."
fi

# Check and install nvidia-utils
if ! pacman -Qq | grep -qw nvidia-utils; then
    echo "nvidia-utils is not installed. Installing it..."
    sudo pacman -S nvidia-utils
else
    echo "nvidia-utils is already installed."
fi

# Check and install lib32-nvidia-utils
if ! pacman -Qq | grep -qw lib32-nvidia-utils; then
    echo "lib32-nvidia-utils is not installed. Installing it..."
    sudo pacman -S lib32-nvidia-utils
else
    echo "lib32-nvidia-utils is already installed."
fi


echo "######################################"
