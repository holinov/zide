#!/bin/bash

source ./config.cfg

for CFG_FILE in "${CONFIG_FILES[@]}"; do
	echo Updateing $CFG_FILE
	cp "./$CFG_FILE" "$HOME/"
done
