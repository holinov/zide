#!/bin/bash

# Params
INST_TYPE=0 # 0 - local 1 - remote
INST_HOST='localhost'
INSTALL_ECLIM=0 # 0 no 1 yes

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


# Main execution thread
function main(){
select_i_type
echo "Install type: $INST_TYPE. Install eclim: $INSTALL_ECLIM"
}

main

