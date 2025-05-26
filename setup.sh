#!/bin/bash
tput civis

# colors
readonly RED='\033[0;31m'
readonly GREEN='\033[0;32m'
readonly YELLOW='\033[0;33m'
readonly BLUE='\033[0;34m'
readonly PURPLE='\033[0;35m'
readonly CYAN='\033[0;36m'
readonly WHITE='\033[0;37m'
readonly BOLD='\033[1m'
readonly UNDERLINE='\033[4m'
readonly RESET='\033[0m'


trap ctrl_c INT

function ctrl_c() {
    echo -e "\n${RED}[-] Saliendo...${RESET}"
    tput cnorm
    exit 1
}

main() 
{
    echo -e "${GREEN}[*] Aplicando enlace simbolico a nvim...${RESET}"
    sleep 2
    rm -rf ~/.config/nvim
    ln -s "$(pwd)/nvim" ~/.config

    echo -e "${BLUE}[*] Script completado.${RESET}"
    tput cnorm
}


main
