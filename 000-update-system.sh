#!/bin/bash

echo "######################################"
echo "Do you want to update your system using yay?"
read -p "Update system? (y/n): " update

if [[ $update == [yY] ]]; then
    # Run the system update using yay
    if yay -Syu; then
        echo "######################################"
        echo "System update completed."
        
        # Check if any updates were installed (yay exits with 0 if successful)
        echo "Would you like to reboot now?"
        read -p "Reboot system? (y/n): " reboot
        
        if [[ $reboot == [yY] ]]; then
            echo "Rebooting..."
            sudo reboot
        else
            echo "Reboot skipped. Continuing without reboot."
        fi
    else
        echo "System update failed or no updates were installed."
    fi
else
    echo "System update skipped."
fi

echo "######################################"
