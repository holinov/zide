#!/bin/bash
##########################
## Script: 	Installation script
## Author: 	kholinow
## Created: 	2015-11-28
##########################

# Params
INST_TYPE="Local" 
INST_HOST='localhost'
INSTALL_ECLIM=0 # 0 no 1 yes
source ./config.cfg

# Dialog functions
#########################
## Function: 	select_i_type
## Author: 	kholinow
## Created: 	2015-11-28
##########################
function select_i_type(){

PS3="Select install type: "
select INST_TYPE in "Local" "Remote"
do
	echo "Selected $INST_TYPE"
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
		:w;;
	*) INSTALL_ECLIM=0
		;;
esac
}

# Installation functions
#########################
## Function: 	local_install
## Author: 	kholinow
## Created: 	2015-11-28
##########################
function local_install(){
echo "Installing zsh,vim,tmux and others"
echo ./zide_install.sh

if [ $INSTALL_ECLIM -eq 1 ]; then
	echo "Installing Eclim (with Vxfb)"
	echo ./install_eclim.sh
fi
for file in ${CONFIG_FILES[@]}; do
	echo cp "$file" "$HOME/$file"
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
