#!/bin/bash

source ./config.cfg

for CFG_FILE in "${CONFIG_FILES[@]}"; do
	echo Updating $CFG_FILE
	cp "./$CFG_FILE" "$HOME/"
done

echo "Copyng local scripts"
for SCRIPT in "${LSCRIPTS[@]}"; do
	cp $SCRIPT "$HOME/bin/"
done
