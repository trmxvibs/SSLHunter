#!/bin/bash

# Show banner permanently
display_banner(){
    colors=(31 32 33 34 35 36)
    color_index=$(( RANDOM % 6 ))
    echo "SsL   Hunter" | figlet | lolcat
}

# Ask user for domain
get_domain() {
    read -p "Enter the domain to test (e.g., example.com): " domain
}

# Show menu and auto-scan if no selection made
show_menu() {
    echo -e "\e[36m1. SSL Server Test\e[0m"
    echo -e "\e[36m2. SSL Client Test\e[0m"
    echo -e "\e[36m3. SSL Pulse Test\e[0m"
    echo -e "\e[36m4. Auto Mode - Run all tests\e[0m"
    read -t 10 -p "Select an option (auto mode in 10s): " option
    if [[ -z $option ]]; then
        auto_scan
    else
        case $option in
            1) ssl_server_test ;;
            2) ssl_client_test ;;
            3) ssl_pulse_test ;;
            4) auto_scan ;;
            *) echo -e "\e[31mInvalid option, auto-scanning...\e[0m"
               auto_scan ;;
        esac
    fi
}

# SSL Server Test function (placeholder for real implementation)
ssl_server_test() {
    echo -e "\e[32mRunning SSL Server Test for $domain...\e[0m"
    # Call SSL Labs API for SSL server test
    curl -s "https://api.ssllabs.com/api/v3/analyze?host=$domain" -o "$domain-ssl-report.txt"
    echo "SSL Server Test results saved to $domain-ssl-report.txt"
}

# SSL Client Test function (placeholder for real implementation)
ssl_client_test() {
    echo -e "\e[32mRunning SSL Client Test for $domain...\e[0m"
    # Add SSL client test implementation here
}

# SSL Pulse Test function (placeholder for real implementation)
ssl_pulse_test() {
    echo -e "\e[32mRunning SSL Pulse Test for $domain...\e[0m"
    # Add SSL pulse test implementation here
}

# Auto-scan function
auto_scan() {
    echo -e "\e[32mRunning all SSL Labs APIs...\e[0m"
    # Call SSL Labs API for SSL server test
    curl -s "https://api.ssllabs.com/api/v3/analyze?host=$domain" -o "$domain-ssl-report.txt"
    echo "SSL Scan results saved to $domain-ssl-report.txt"

    # (Additional tests like SSL Client Test, SSL Pulse, etc., can be added here)
}

# Exit with a 3D progress bar and redirect to YouTube
exit_with_progress() {
    echo -e "\e[34mReports Is saving to local Directory
                    Please Wait \e[0m" | lolcat
    for ((i=0; i<=60; i++)); do
        printf "["
        for ((j=0; j<=i; j++)); do
            printf "#"
        done
        for ((k=i; k<=60; k++)); do
            printf "."
        done
        printf "]\r"
        sleep 1
    done
    echo -e "\nWelcome to YouTube..." | lolcat
    sleep 03
    xdg-open "https://www.youtube.com/@TermuxVibes" || am start "https://www.youtube.com/@TermuxVibes"
}

# Run functions
display_banner
get_domain
show_menu
exit_with_progress
