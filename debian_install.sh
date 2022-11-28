# so this is for managing my linux so i can increase the size of it to 70 GB
function debian{
#installed apps
sudo apt update && sudo apt upgrade
#obsedian
echo "Installing obsedian"
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.0.3/obsidian_1.0.3_amd64.deb
sudo dpkg -i "obsidian_1.0.3_amd64.deb"

#vscodium
echo "Installing vscodium"
wget https://github.com/VSCodium/vscodium/releases/download/1.73.1.22314/codium_1.73.1.22314_amd64.deb
sudo dpkg -i "codium_1.73.1.22314_amd64.deb"

#chromium-browser
echo "Installing Chromium-browser"
sudo apt install chromium chromium-l10n -y

#discord
echo "Installing Discord"
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb

#okular
echo "Installing Okular"
sudo apt install okular -y

#vlc
echo "Installing ffmpeg & VLC"
sudo apt install ffmpeg vlc -y

#todoist
echo "Installing TODO-ist"
sudo snap install todoist --edge -y

#Github-Desktop
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.debsudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
sudo apt-get install gdebi-core
sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb -y

#firefox
sudo apt install firefox -y
}

