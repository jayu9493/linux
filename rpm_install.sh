function fedora{
echo "Upgrading System as it is nessasary for installing programmes"
sudo dnf update -y && sudo dnf upgrade -y
echo "This programmes will be installed
firefox
chromiuim
discord
vs-codium
okualr
"
#firefox
echo "Installing firefox"
sudo dnf install firefox -y

#chromiuim-browser
sudo dnf install chromium --y

#discord
sudo dnf install discord -y

#vs-codium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo -y
sudo dnf install codium -y

#okular
sudo dnf install okular -y
}

