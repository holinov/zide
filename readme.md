# ZIDE - IDE bazed on zsh + tmux + vim

Mainly used to develop and debug code on server side
[zIDE screen](https://photos-4.dropbox.com/t/2/AADRlVrvYnGYu8h24NPuZWcm3NksCJPfOZsbIuvZ09uzvQ/12/74391799/png/32x32/1/_/1/2/M073%3A0.1.0%20vim%20M073_072.png/EIGi3TkYjjkgBygH/2-RARslVvGRkwwf0RwkDgEExBEjVGI3ZFxi8f2z8jcY?size=1600x1200&size_mode=3)
[zIDE git diff](https://photos-4.dropbox.com/t/2/AABOaOsZLJozelCYcUarOvBl9JHCIPi3dvyss73J0ggCvw/12/74391799/png/32x32/1/_/1/2/Selection_076.png/EIGi3TkYjjkgBygH/wrLnWvmq55H9nWSYuxrFArMQeQGP0w0LftBl_oVQSpk?size=1600x1200&size_mode=3)

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
