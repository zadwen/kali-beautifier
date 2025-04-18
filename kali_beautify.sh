#!/bin/bash

echo "[+] Updating System..."
sudo apt update && sudo apt upgrade -y

echo "[+] Installing Plank Dock..."
sudo apt install plank -y

echo "[+] Installing GTK & Icon Themes..."

echo "[+] Installing Papirus Icon Theme..."
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git ~/papirus-icon-theme
cd ~/papirus-icon-theme && sudo ./install.sh && cd ~

echo "[+] Installing Qogir GTK Theme..."
git clone https://github.com/vinceliuice/Qogir-theme.git ~/Qogir-theme
cd ~/Qogir-theme && sudo ./install.sh && cd ~

echo "[+] Installing Qogir Icon Theme..."
git clone https://github.com/vinceliuice/Qogir-icon-theme.git ~/Qogir-icon-theme
cd ~/Qogir-icon-theme && sudo ./install.sh && cd ~

echo "[+] Installing Cleanup Tools..."
sudo apt install -y bleachbit stacer czkawka baobab

echo "[+] Cleaning Unused Packages..."
sudo apt autoremove -y
sudo apt autoclean -y

echo "[✔] Done! Apply your themes from Settings > Appearance & Window Manager."
echo "[✔] Launch Plank dock anytime using: plank &"
