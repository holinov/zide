#!/bin/bash

# Params
INST_TYPE="Local" 
INST_HOST='localhost'
INSTALL_ECLIM=0 # 0 no 1 yes
CONFIG_FILES=("./.tmux.conf" "./.vimrc")
LINST_FILES=("./zide_install.sh" "./install_eclim.sh")

# Calculated values
pinst="apt-get install"

# Dialog functions

function select_i_type() {

PS3="Select install type: "
select INST_TYPE in "Local" "Remote"
do
	echo 
	echo "Selected $INST_TYPE"
	echo
	break
done

if [ "$INST_TYPE" == "Remote" ]; then
	echo -n "Enter host to install: "
	read INST_HOST
fi

echo -n "Install eclim (y/N)"
read ans
case "$ans" in
	y|Y) INSTALL_ECLIM=1
		;;
	n|N) INSTALL_ECLIN=1
		;;
	*) INSTALL_ECLIM=0
		;;
esac
}

# Installation functions

function local_install(){
echo "Installing zsh,vim,tmux and others"
echo ./zide_install.sh

if [ $INSTALL_ECLIM -eq 1 ]; then
	echo "Installing Eclim (with Vxfb)"
	echo ./install_eclim.sh
fi
for file in ${CONFIG_FILES[@]}; do
	echo cp "$file" ~/
done

}

# Main execution thread
function main(){
select_i_type
echo "Install type: $INST_TYPE (host: $INST_HOST). Install eclim: $INSTALL_ECLIM"
if [ "$INST_TYPE" == "Local" ]; then
	local_install
fi

}

main

