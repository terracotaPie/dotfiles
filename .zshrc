export ZSH=/home/terrpi/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git aptitude)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"

source $ZSH/oh-my-zsh.sh

alias install="sudo apt-get install"
alias mvdl="mv ~/Downloads/*.torrent ~/Downloads/torrents/watch"

export TERM=xterm-256color
source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh 
