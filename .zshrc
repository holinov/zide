# Path to your oh-my-zsh installation.
export ZSH=/home/kholinow/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="clean-test"

plugins=(git git-extras gitignore autojump command-not-found github gnu-utils history-substring-search tmux ubuntu gradle)

# User configuration
# export PATH="/home/kholinow/.rvm/gems/jruby-1.7.19/bin:/home/kholinow/.rvm/gems/jruby-1.7.19@global/bin:/home/kholinow/.rvm/rubies/jruby-1.7.19/bin:/home/kholinow/DevApps/storm/storm-cur/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin:/home/kholinow/.rvm/bin:/home/kholinow/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh


# ssh
export SSH_KEY_PATH="~/.ssh/id_dsa"

