#!/bin/bash


ecl="eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz"
eclim="eclim_2.5.0.jar"
ecl_home="$HOME/eclipse"

#INSTALL PREREQUISITES
if [ -n "$(command -v yum)" ]; then
	sudo yum 	-y install xorg-x11-server-Xvfb make automake gcc gcc-c++ kernel-devel
elif [ -n "$(command -v apt-get)" ]; then
	sudo apt-get -y install xvfb build-essential
fi

#DOWNLOADS
if [ ! -e "$HOME/$ecl" ]; then
	wget "http://ftp.fau.de/eclipse/technology/epp/downloads/release/mars/1/$ecl"
fi
if [ ! -e "$HOME/$eclim" ]; then
	wget "http://downloads.sourceforge.net/project/eclim/eclim/2.5.0/$eclim"
fi

#EXTRACT ECLIPSE
tar zxf "$HOME/$ecl"

java -Dvim.files="$HOME/.vim" -Declipse.home="$ecl_home" -jar "$HOME/$eclim" install

#TODO: make autolauch
./scripts/zmanage vxfb
./scripts/zmanage server
