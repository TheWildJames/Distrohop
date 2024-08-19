#!/bin/bash

echo "######################################"
echo "Checking if Stremio is installed..."

# Check and install Stremio using yay
if ! yay -Qq | grep -qw stremio; then
    echo "Stremio is not installed. Installing it..."
    yay -S stremio
else
    echo "Stremio is already installed."
fi

echo "######################################"
