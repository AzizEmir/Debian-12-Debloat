#!/usr/bin/env bash

set -e # Exit the script on error

# Determine user's locale
if [[ $LANG == *"tr_TR"* ]]; then
    LOCALE="TR"
else
    LOCALE="EN"
fi

# Function to print messages based on the locale
print_message() {
    if [ "$LOCALE" == "TR" ]; then
        echo "$1"
    else
        echo "$2"
    fi
}

if [[ $(id -u) -ne 0 ]]; then
    print_message "Bu betiği yönetici olarak çalıştırmalısınız. Lütfen yönetici olarak çalıştırın." \
        "You must run this script as an administrator. Please run it as an administrator."
    exit 1
else
    # List of Programs to be Removed
    COLOR_ERROR='\033[0;31m'
    packages=(
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
    counter=1

    for package in "${packages[@]}"; do
        print_message "$counter - $package paketi kontrol ediliyor..." \
            "$counter - Checking package $package..."
        if dpkg -s "$package" &>/dev/null; then
            print_message "$package paketi bulundu. Kaldırılıyor..." \
                "$package package found. Removing..."
            if apt purge -y "$package" >/dev/null 2>&1; then
                print_message "$package paketi kaldırıldı." \
                    "$package package removed."
                echo ""
            else
                error_code=$?
                print_message "${COLOR_ERROR}Hata: $package paketi kaldırılırken bir sorun oluştu. Hata Kodu: $error_code" \
                    "${COLOR_ERROR}Error: There was a problem removing the $package package. Error Code: $error_code"
                exit 1
            fi

        else
            print_message "$package paketi bulunamadı." \
                "$package package not found."
            echo ""
        fi
        ((counter++))
    done

    print_message "Kalıntı Bağımlılıklar Siliniyor" \
        "Removing Residual Dependencies"
    if apt autoremove -y>/dev/null 2>&1; then
        print_message "Kalıntılar silindi" \
            "Residual dependencies removed"
    fi
fi
