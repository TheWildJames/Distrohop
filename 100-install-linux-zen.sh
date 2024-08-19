#!/bin/bash

echo "######################################"
echo "Checking if linux-zen and linux-zen-headers are installed..."

# Check and install linux-zen
if ! pacman -Qq | grep -qw linux-zen; then
    echo "linux-zen is not installed. Installing it..."
    sudo pacman -Syu --noconfirm linux-zen
else
    echo "linux-zen is already installed."
fi

# Check and install linux-zen-headers
if ! pacman -Qq | grep -qw linux-zen-headers; then
    echo "linux-zen-headers is not installed. Installing it..."
    sudo pacman -Syu --noconfirm linux-zen-headers
else
    echo "linux-zen-headers is already installed."
fi

echo "######################################"
