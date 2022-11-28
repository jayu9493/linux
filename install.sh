#sudo apt update || sudo apt upgrade

#!/bin/bash
echo "Type your package manager currently we support debian,rpm(fedora) and arch"
echo "please type 1 for debian,2 for rpm & 3 for arch"
read choice 
function debian_upgrade {
    sudo apt update || sudo apt upgrade
    echo "Now you can either build things or you can download snaps or flatpacks but with some performance degradation"
    read choice_build
    . /main.sh
}
function rpm_upgrade {
    echo "Do you want to check which packages are updating"
    echo "Type yes or no"
    read choice_rpm1
    if [ $choice_rpm1 == yes ]; then
        sudo dnf update #it will not work if you are on the other distribution 
    fi
    echo "Okay no problem"
    ./rpm_install.sh
}
function arch_upgrade {
    echo "Arch will update now"
    sudo pacman -Syu
}

if [ $choice == 1 ]; then
    echo "You have chosen debian section and we welcomes you"
    echo "First we will upgrade this system"
    debian_upgrade
fi

if [ $choice == 2 ]; then
    echo "You have chosen fedora(rp) section and we welcomes you"
    rpm_upgrade
fi

if [ $choice == 3 ]; then
    echo "You have chosen Arch section and we welcomes you"
    arch_upgrade
fi
