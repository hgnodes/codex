#!/bin/bash
set -euo pipefail

# Colors
LIGHTBLUE='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

clear

# -------------------------
# Loading Animation
# -------------------------
echo -e "${LIGHTBLUE}Initializing Hemant Installer...${RESET}"
for i in {1..30}; do
    echo -ne "${LIGHTBLUE}█${RESET}"
    sleep 0.05
done
echo ""
echo -e "${WHITE}Loaded Successfully!${RESET}"
sleep 1
clear

# -------------------------
# Logo
# -------------------------
echo -e "${LIGHTBLUE}"
echo "██╗  ██╗███████╗███╗   ███╗ █████╗ ███╗   ██╗████████╗"
echo "██║  ██║██╔════╝████╗ ████║██╔══██╗████╗  ██║╚══██╔══╝"
echo "███████║█████╗  ██╔████╔██║███████║██╔██╗ ██║   ██║   "
echo "██╔══██║██╔══╝  ██║╚██╔╝██║██╔══██║██║╚██╗██║   ██║   "
echo "██║  ██║███████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║   ██║   "
echo "╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   "
echo -e "${RESET}"

echo -e "${LIGHTBLUE}────────────────────────────────────────${RESET}"
echo -e "${WHITE}              Made By - Hemant         ${RESET}"
echo -e "${LIGHTBLUE}────────────────────────────────────────${RESET}"
echo ""

# -------------------------
# Main Menu
# -------------------------
echo -e "${LIGHTBLUE}──────────── MAIN MENU ─────────────${RESET}"
echo -e "${WHITE}A)${RESET} ${LIGHTBLUE}Panel Install${RESET}"
echo -e "${WHITE}B)${RESET} ${LIGHTBLUE}VPS Maker${RESET}"
echo -e "${WHITE}C)${RESET} ${LIGHTBLUE}Exit${RESET}"
echo -e "${LIGHTBLUE}─────────────────────────────────────${RESET}"
echo ""

read -p "Select ➜ " choice

case $choice in
  A|a)
    echo -e "${LIGHTBLUE}Installing Panel...${RESET}"
    bash <(curl -s https://pterodactyl-installer.se)
    ;;
  B|b)
    echo -e "${LIGHTBLUE}Starting VPS Maker...${RESET}"
    bash <(curl -fsSL https://raw.githubusercontent.com/hopingboyz/vms/main/vm.sh)
    ;;
  C|c)
    echo -e "${LIGHTBLUE}Exiting...${RESET}"
    exit 0
    ;;
  *)
    echo -e "${LIGHTBLUE}Invalid Option!${RESET}"
    ;;
esac
