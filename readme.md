# ZIDE - IDE bazed on zsh + tmux + vim

Mainly used to develop and debug code on server side

* Main screen
![zIDE1](https://leto20h.storage.yandex.net/rdisk/ba0514c0f709b4fb3e1cfde3a82d25904f91f5610dbfbf61d1870ea5d1e46dc0/inf/MJGLDStMXv9Em9Q1d8ulE50C2Cx0L-DBxBSHvgY4h4AYgc1x7fQGW3iaa-2-2Uu_2WiZq_15gD3wOvsX6Vd44Q==?uid=0&filename=M073%3A0.1.0%20vim%20M073_072.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&rtoken=5f076c5935f5ea958bdf334975de9ca9&force_default=no&ycrid=na-35d23a424a50536f9dc68c9e8a15b5bc-downloader7d)

* Git diff
![zIDE2](https://leto16d.storage.yandex.net/rdisk/75c0288830ee3360fb8ae06311e3b3c1e7b66cad901c12b1098bdc9066962e40/inf/CsYLoao22qx92Oav6LsfwQlE_2nynAaKTfP-IJekwymgPKSgRJD_LWFBN79VkHOXAlZhXbwN9gzwv5sOjnqYUQ==?uid=0&filename=Selection_076.png&disposition=inline&hash=&limit=0&content_type=image%2Fpng&tknv=v2&rtoken=5f076c5935f5ea958bdf334975de9ca9&force_default=no&ycrid=na-f9fab7c1ceab20a5f3d17aa7f064963f-downloader7d)


## Local installation
Just run *zide_install.sh*

## Remote installation
Run *install_to.sh <host-to-istall>*
* Remote installation uses password-less (key-auth) ssh connection to connect to destanation node
* sudo is requered on remote server

## Code completition instalattion
Code Copletition uses Eclim. To install it just run *install_eclim.sh* (takes some time)

### Known bugs
* can't change default shell to zsh if no password is set for user ( chsh needs password to change shell for user)

### TO DO LIST
- [ ] autorun for eclimd
- [ ] fix bug with chsh
- [ ] auto session configuration
- [ ] installer menu

## Docs
### Docs for parts of IDE
* [Elicm docs](http://eclim.org/gettingstarted.html)
* [tmux cheatsheet](https://gist.github.com/MohamedAlaa/2961058/)

### Provided bindings
* VIM
  * **Ctrl+N** - toggle file tree
