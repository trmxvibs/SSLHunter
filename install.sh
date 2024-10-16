#!/bin/bash

# Detect system and update full system
detect_and_update() {
    echo -e "\e[36mDetecting System...\e[0m"
    if [[ "$(uname -o)" == "Android" ]]; then
        echo -e "\e[33mRunning on Termux. Updating system...\e[0m"
        pkg update -y && pkg upgrade -y
        install_required_termux_packages
    elif [[ "$(uname -o)" == "GNU/Linux" ]]; then
        echo -e "\e[33mRunning on Linux. Updating system...\e[0m"
        sudo apt update -y && sudo apt full-upgrade -y
        install_required_kali_packages
    else
        echo -e "\e[31mUnsupported system detected. Exiting...\e[0m"
        exit 1
    fi
}

# Install required packages in Termux
install_required_termux_packages() {
    echo -e "\e[34mChecking and installing required packages for Termux...\e[0m"
    pkg install curl jq figlet toilet -y
    # Optional: Check if lolcat exists, since it's not always in the default Termux repo
    pkg install ruby -y
    gem install lolcat
}

# Install required packages in Kali Linux
install_required_kali_packages() {
    echo -e "\e[34mChecking and installing required packages for Kali Linux...\e[0m"
    sudo apt install curl jq figlet toilet lolcat -y
}

# Display a colorful and fancy banner
display_banner() {
    colors=(31 32 33 34 35 36)
    color_index=$(( RANDOM % 6 ))
    echo "Fancy Banner Display" | figlet | lolcat
}

# Show a 3D progress bar (simple version)
progress_bar() {
    echo -e "\e[34mExiting in 30 seconds...\e[0m"
    for ((i=0; i<=30; i++)); do
        printf "["
        for ((j=0; j<=i; j++)); do
            printf "#"
        done
        for ((k=i; k<=30; k++)); do
            printf "."
        done
        printf "]\r"
        sleep 1
    done
    echo -e "\nExiting now."
}

# Run the functions
detect_and_update
display_banner
progress_bar
