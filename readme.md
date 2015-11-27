# ZIDE - IDE bazed on zsh + tmux + vim

Mainly used to develop and debug code on server side
![zIDE1](https://yadi.sk/i/0ri9bD-Aknkoc)
![zIDE2](https://yadi.sk/i/ynrl58cbknkrB)

## Local installation
Just run *zide_install.sh*

## Remote installation
Run *install_to.sh <host-to-istall>*
* Remote installation uses password-less (key-auth) ssh connection to connect to destanation node
* sudo is requered on remote server

## Code coompletition instalattion
Code Copletition uses Eclim. To install it just run *install_eclim.sh* (takes some time)

### Known bugs
* can't change default shell to zsh if no password is set for user ( chsh needs password to change shell for user)
