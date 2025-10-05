# Improved-Debian-12-Debloat
> Inspired by [Debian-12-Debloat](https://github.com/AzizEmir/Debian-12-Debloat) from [AzizEmir](https://github.com/AzizEmir)

## What does this script do?

This Bash script is made to help you remove a bunch of GNOME packages that come preinstalled on Debian 12. It focuses on games, utilities, and some other stuff you might not want. After uninstalling, it also tries to clean up any leftover dependencies, so your system isn't left with junk.

## How to use this script

### Using Git

First, you need to clone the repo and run the script:

```bash
git clone https://github.com/AzizEmir/Debian-12-Debloat.git
cd Debian-12-Debloat
sudo ./debian12debloat.sh
```
> [!note]
> If Git credentials are prompted just press Enter.

### Using Wget

If you don’t want to clone the whole repo, just grab the script directly:

```bash
wget https://raw.githubusercontent.com/AzizEmir/Debian-12-Debloat/refs/heads/main/debian12debloat.sh 
bash debian12debloat.sh
```

### Using cURL

Or, if you prefer cURL:

```bash
curl https://raw.githubusercontent.com/AzizEmir/Debian-12-Debloat/refs/heads/main/debian12debloat.sh -o debian12debloat.sh
bash debian12debloat.sh
```

## What packages does it remove?

**You can pick which group of packages you want to uninstall. Here’s the list:**

- Remove all GNOME games
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
  - cheese

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
    

---

&copy; 2025 [AzizEmir](https://github.com/AzizEmir)