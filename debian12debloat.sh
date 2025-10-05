#!/usr/bin/env bash

set -e # Exit the script on error

remove_packages() {
   local packages=("$@")
   
   for package in "${packages[@]}"; do
       echo "Checking package $package..."
       if dpkg -s "$package" &>/dev/null; then
           echo "$package package found. Removing..."
           if apt purge -y "$package" >/dev/null 2>&1; then
               echo "$package package removed."
               echo ""
           else
               error_code=$?
               echo "${COLOR_ERROR}Error: There was a problem removing the $package package. Error Code: $error_code"
               exit 1
           fi
       else
           echo "$package package not found."
           echo ""
       fi
   done
}

if [[ $(id -u) -ne 0 ]]; then
    echo "You must run this script as an administrator. Please run it as an administrator."
    exit 1
else
    # List of Programs to be Removed
    COLOR_ERROR='\033[0;31m'

    packages_games=(
        gnome-2048
        aisleriot
        gnome-nibbles
        five-or-more
        four-in-a-row
        hitori
        lightsoff
        gnome-klotski
        gnome-mahjongg
        gnome-mines
        quadrapassel
        iagno
        gnome-robots
        gnome-chess
        gnome-sudoku
        swell-foop
        tali
        gnome-taquin
        gnome-tetravex
    )

    packages_info=(
        gnome-weather
        yelp
        gnome-maps
        gnome-characters
        gnome-font-viewer
    )

    packages_productivity=(
        evolution
        gnome-clocks
        gnome-calendar
        gnome-calculator
        gnome-contacts
    )

    packages_bloat_multimedia=(
        gnome-music
        rhythmbox
        shotwell
        simple-scan
        gnome-sound-recorder
        cheese
    )

    packages_bloat_system=(
        seahorse
        gnome-logs
        gnome-tweaks
        file-roller
    )

    packages_multimedia=(
        totem
        eog
    )

    packages_system=(
        network-manager-gnome
        gnome-system-monitor
        baobab
        gnome-disk-utility
        nautilus
    )

    packages_system=(
        network-manager-gnome
        gnome-system-monitor
        baobab
        gnome-disk-utility
        nautilus
    )

    packages_libreoffice=(
        libreoffice-*
    )

    read -p "Delete all gnome games? (Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z "$response" ]]; then
        remove_packages "${packages_games[@]}"
    fi
    
    read -p "Delete all gnome info packages? (Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z "$response" ]]; then
        remove_packages "${packages_info[@]}"
    fi
    
    read -p "Delete all gnome productivity packages? (Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z "$response" ]]; then
        remove_packages "${packages_productivity[@]}"
    fi
    
    read -p "Delete all gnome bloat multimedia packages? (Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z "$response" ]]; then
        remove_packages "${packages_bloat_multimedia[@]}"
    fi
    
    read -p "Delete all gnome bloat system packages? (Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z "$response" ]]; then
        remove_packages "${packages_bloat_system[@]}"
    fi

    read -p "Delete all libreoffice packages? [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]]; then
        remove_packages "${packages_libreoffice[@]}"
    fi

    read -p "Delete all gnome multimedia packages? (NOT Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]]; then
        remove_packages "${packages_multimedia[@]}"
    fi
    
    read -p "Delete all gnome system packages? (NOT Recommended) [Y/n] " response
    if [[ "$response" =~ ^[Yy]([Ee][Ss])?$ ]]; then
        remove_packages "${packages_system[@]}"
    fi
    


    echo "Removing Residual Dependencies" 
    if apt autoremove -y>/dev/null 2>&1; then
        echo "Residual dependencies removed"
    fi
fi
