# tb 
cd Documents/tokenize/tb
source ~/Documents/tokenize/tb/.env.sh

PS1=$(tput setaf 166)"->\W$(tput sgr0) ";
export PS1;

set -o vi
bind '"jk":vi-movement-mode'

alias vim="nvim"

alias vbp="vim ~/.bash_profile"
alias vbrc="vim ~/.bashrc"
alias ovvrc="vim ~/.vimrc"
alias vvrc="vim ~/.config/nvim/init.vim"
alias vtc="vim ~/.tmux.conf"

alias desktop="cd ~/Desktop"
alias home="cd ~"
alias c="clear"
alias lsbf="find . -type f -size +500M -exec ls -l {} \;"

alias v="vim"
alias jn="jupyter notebook"
alias jl="jupyter lab"
#alias p="python3.8"
alias python="python3.8"
alias pip="pip3"
#alias python3="/usr/bin/python3.8"
alias python="/usr/bin/python3.8"

# hardware
alias gpu="nvtop"
alias cpu="htop"
alias ssd="df -h | grep /dev/sda5"
alias wifi="nload wlp3s0 -m -u m"
alias hw="lshw -short"
alias ports="sudo lsof -i -P -n | grep python"

# system
alias down="shutdown -h now"
alias d="d"
alias lock="gnome-screensaver-command -l"
alias l="lock"

# docker 
alias dils="docker image ls"
alias dcls="docker container ls"
alias dka="docker kill $(docker ps -q)"

# git status
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
