#!/bin/bash

source ./config.cfg

for CFG_FILE in "${CONFIG_FILES[@]}"; do
	echo Updating $CFG_FILE
	cp "./$CFG_FILE" "$HOME/"
done

echo "Copyng local scripts"
if [[ ! -d "$HOME/bin" ]]; then
	mkdir "$HOME/bin"
	echo "Please add '$HOME/bin/' to your PATH"
fi
for SCRIPT in "${LSCRIPTS[@]}"; do
	cp $SCRIPT "$HOME/bin/"
done
