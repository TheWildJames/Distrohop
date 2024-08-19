#!/bin/bash

echo "######################################"
echo "Checking if zsh is installed..."

# Check and install zsh
if ! pacman -Qq | grep -qw zsh; then
    echo "zsh is not installed. Installing it..."
    sudo pacman -S zsh
else
    echo "zsh is already installed."
fi

echo "######################################"
echo "Checking if Oh My Zsh is installed..."

# Check if Oh My Zsh is installed by looking for the .oh-my-zsh directory
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is not installed. Installing it..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh is already installed."
fi

echo "######################################"
echo "Checking if zsh-autosuggestions is installed..."

# Check and install zsh-autosuggestions
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    echo "zsh-autosuggestions is not installed. Installing it..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "zsh-autosuggestions is already installed."
fi

echo "######################################"
echo "Checking if zsh-syntax-highlighting is installed..."

# Check and install zsh-syntax-highlighting
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "zsh-syntax-highlighting is not installed. Installing it..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
    echo "zsh-syntax-highlighting is already installed."
fi

echo "######################################"
echo "Backing up existing .zshrc and copying new one..."

# Backup existing .zshrc and copy new one
if [ -f "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "$HOME/.backup_zshrc"
    echo "Existing .zshrc backed up to .backup_zshrc."
fi

# Copy the new zshrc file from the current directory to home
if [ -f "./zshrc" ]; then
    cp "./zshrc" "$HOME/.zshrc"
    echo "New .zshrc copied to home directory."
else
    echo "No zshrc file found in the current directory."
fi

echo "######################################"
