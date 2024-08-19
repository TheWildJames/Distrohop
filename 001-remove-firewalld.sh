#!/bin/bash

echo "######################################"
echo "Checking if firewalld is installed..."

# Check if firewalld is installed
if pacman -Qq | grep -qw firewalld; then
    echo "firewalld is installed. Removing it..."
    sudo pacman -Rns --noconfirm firewalld
else
    echo "firewalld is not installed."
fi

echo "######################################"
