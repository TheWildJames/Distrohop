#!/bin/bash

echo "######################################"
echo "Checking if AppImageLauncher-bin is installed..."

# Check and install AppImageLauncher-bin using yay
if ! yay -Qq | grep -qw appimagelauncher-bin; then
    echo "AppImageLauncher-bin is not installed. Installing it..."
    yay -S appimagelauncher-bin
else
    echo "AppImageLauncher-bin is already installed."
fi

echo "######################################"
