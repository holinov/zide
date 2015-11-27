#!/bin/bash

host=$1

echo "Installing to $1"
scp zide_install.sh $host:~/
scp .tmux.conf $host:~/
scp .vimrc $host:~/
scp install_eclim.sh $host:~/

ssh $host "~/zide_install.sh" > /dev/null
echo "Installed on $1"
