# cd ~/Documents/tokenize/tb/
# source ~/Documents/tokenize/tb/env.sh

set -o vi
bind '"jk":vi-movement-mode'

alias vim="nvim"
alias v="vim ."
alias ls="ls -l --color"

# git 
alias diff="git diff"
alias status="git status"
alias branches="git branch -a"
alias checkout="git checkout -b"
alias main="git checkout main"
alias dev="git switch dev"
alias pull="git pull"
alias add="git add ."
alias commit="git commit -m"
alias push="git push"
alias stash="git stash"

# configs
alias vbp="vim ~/.bash_profile"
alias vbrc="vim ~/.bashrc"
alias ovvrc="vim ~/.vimrc"
alias vvrc="vim ~/.config/nvim/init.vim"
alias vtc="vim ~/.tmux.conf"

alias desktop="cd ~/Desktop"
alias home="cd ~"
alias docs="cd ~/Documents"
alias c="clear"
alias lsbf="find . -type f -size +500M -exec ls -l {} \;"

#alias v="vim"
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias p="python3"
alias python="python3"
alias pip="pip3"

# hardware
alias gpu="nvtop"
alias cpu="htop"
alias ssd="df -h | grep /dev/sda5"
alias wifi="nload wlp3s0 -m -u m"
alias hw="lshw -short"
alias ports="sudo lsof -i -P -n | grep python"

# system (ubnutu specific)
alias down="shutdown -h now"
alias d="shutdown -h now"
alias lock="gnome-screensaver-command -l"
alias l="lock"
alias open="xdg-open"

# docker 
alias dils="docker image ls"
alias dcls="docker container ls"
alias dka="docker kill $(docker ps -q)"

# git status
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
