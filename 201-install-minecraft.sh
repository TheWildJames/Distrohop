#!/bin/bash

echo "######################################"
echo "Checking if ATLauncher is installed..."

# Check and install ATLauncher using yay
if ! yay -Qq | grep -qw atlauncher-bin; then
    echo "ATLauncher is not installed. Installing it..."
    yay -S atlauncher-bin
else
    echo "ATLauncher is already installed."
fi

echo "######################################"
