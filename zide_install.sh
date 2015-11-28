#!/bin/bash

#CONFIGS
zsh_theme="clean"
zsh_plugins="git git-extras gitignore command-not-found github gnu-utils history-substring-search tmux gradle"


#INSTALL PREREQUISITES
if [ -n "$(command -v yum)" ]; then
	sudo yum 	-y install sudo git wget vim git-extras zsh tmux silversearcher-ag
elif [ -n "$(command -v apt-get)" ]; then
	sudo apt-get -y install sudo git wget vim git-extras zsh tmux the_silver_searcher
fi

#INSTALL VUNDLE
if [ -d "$HOME/.vim/bundle/Vundle.vim" ]
then
	echo "Vundle already instaled"
else
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
#TODO: configure default plugins
vim +PluginInstall +qall

#SET DEFAULT SHELL TO ZSH
if [[ $SHELL == *"zsh"  ]]
then
	echo "zsh is default shell"
else
	echo "setting zsh as beafult shell"
	chsh -s $(which zsh)
fi

shopt -s nullglob dotglob
omz_contents=(~/.oh-my-zsh/*)
#INSTALL OH_MY_ZSH
zrc="$HOME/.zshrc"
if [ ${#omz_contents[@]} -gt 0 ]; then
	echo "found oh_my_zsh"
else
	echo "installing oh_my_zsh"
	sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

#CONFIGURE ZSH
sed -iold -e "s/ZSH_THEME=\".*\"/ZSH_THEME=\"$zsh_theme\"/g" -e "s/plugins=(.*)/plugins=($zsh_plugins)/g" "$zrc" 
if grep -q "export SSH_KEY_PATH" ".zshrc"; then
	echo "ssh key found"
else
	echo 'export SSH_KEY_PATH="~/.ssh/id_dsa"' >> "$zrc"
fi
#source "$zrc"

