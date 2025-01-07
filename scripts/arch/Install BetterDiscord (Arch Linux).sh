#!/bin/bash
# Name:         Install BetterDiscord on Arch Linux
# Author:       Seth W. <inquiries@sesu.tech>
# Created:      2024.06.17
# Modified:     2025.01.06

cd /tmp
echo -e "Making sure Discord is up-to-date - checking for a package update..."
sudo pacman -Syu discord
echo -e "Discord has been updated. Opening it to finish its updating process. Close it once it's done."
discord
echo -e "Done with the Discord installer."
read -p "If Discord isn't already running, start it now so it can finish the update. Then press enter here."
echo -e "Continuing."
echo -e "Fetching latest BetterDiscord installer..."
wget -O ./BetterDiscord.AppImage "https://github.com/BetterDiscord/Installer/releases/latest/download/BetterDiscord-Linux.AppImage"
echo -e "Received - running installer."
echo -e "### IF YOU HAVE APPIMAGELAUNCHER INSTALLED, CLICK 'Run once' IN THE PROMPT ###"
chmod +x ./BetterDiscord.AppImage
./BetterDiscord.AppImage
echo -e "All Done! You may start Discord now."
