# Improved-Debian-12-Debloat
> Inspired from [Debian-12-Debloat](https://github.com/AzizEmir/Debian-12-Debloat) by the user [AzizEmir](https://github.com/AzizEmir)

## Remove all unnecesary GNOME packages installed by default

This Bash script is designed to remove specific software packages from a Debian-based Linux system. It targets a predefined list of packages associated with GNOME games and utilities. Additionally, it attempts to clean up residual dependencies after the removal process.

## Usage 

## With Git
```shell
git clone https://github.com/hugorsz-dev/Improved-Debian-12-Debloat.git
cd Improved-Debian-12-Debloat
sudo ./debian12debloat.sh
```

## With Wget

```shell
wget https://raw.githubusercontent.com/AzizEmir/Debian-12-Debloat/refs/heads/main/debian12debloat.sh 
bash debian12debloat.sh
```

## With cURL

```shell
curl https://raw.githubusercontent.com/AzizEmir/Debian-12-Debloat/refs/heads/main/debian12debloat.sh -o debian12debloat.sh
bash debian12debloat.sh
```

## Packages to remove

**The user has the option of selecting the group of packages to uninstall from the following:**


- Delete all gnome games
  - gnome-2048
  - aisleriot
  - gnome-nibbles
  - five-or-more
  - four-in-a-row
  - hitori
  - lightsoff
  - gnome-klotski
  - gnome-mahjongg
  - gnome-mines
  - quadrapassel
  - iagno
  - gnome-robots
  - gnome-chess
  - gnome-sudoku
  - swell-foop
  - tali
  - gnome-taquin
  - gnome-tetravex

- Delete all gnome info packages
  - gnome-weather
  - yelp
  - gnome-maps
  - gnome-characters
  - gnome-font-viewer

- Delete all gnome productivity packages
  - evolution
  - gnome-clocks
  - gnome-calendar
  - gnome-calculator
  - gnome-contacts

- Delete all gnome bloat multimedia packages
  - gnome-music
  - rhythmbox
  - shotwell
  - simple-scan
  - gnome-sound-recorder

- Delete all gnome bloat system packages
  - seahorse
  - gnome-logs
  - gnome-tweaks
  - file-roller

- Delete all libreoffice packages
  - libreoffice-*

- Delete all gnome multimedia packages
  - totem
  - eog

- Delete all gnome system packages
  - network-manager-gnome
  - gnome-system-monitor
  - baobab
  - gnome-disk-utility
  - nautilus
    

