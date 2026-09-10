#!/bin/bash
# AiraScan Installer
# Architect: Adam Eehan (Aira Group of Technology)

echo -e "\033[1;36m[+] Installing AiraScan into system bin...\033[0m"

INSTALL_DIR="${PREFIX:-/usr/local}/bin"

if command -v airalang >/dev/null 2>&1; then
    airalang build airascan.aira -o "$INSTALL_DIR/airascan"
    chmod +x "$INSTALL_DIR/airascan"
    echo -e "\033[1;32m[✓] AiraScan successfully installed to $INSTALL_DIR/airascan!\033[0m"
    echo -e "\033[1;33m[*] Run anywhere by typing: airascan\033[0m"
else
    echo -e "\033[1;31m[!] Error: AiraLang not found in PATH. Please install AiraLang first.\033[0m"
    exit 1
fi
