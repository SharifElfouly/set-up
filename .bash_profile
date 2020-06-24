PS1=$(tput setaf 166)"->\W$(tput sgr0) ";
export PS1;

set -o vi
bind '"jk":vi-movement-mode'

alias vbp="vim ~/.bash_profile"
alias vbrc="vim ~/.bashrc"
alias vvrc="vim ~/.vimrc"
alias vtc="vim ~/.tmux.conf"

alias desktop="cd ~/Desktop"
alias home="cd ~"
alias c="clear"
alias lsbf="find . -type f -size +500M -exec ls -l {} \;"

alias v="vim"
alias jn="jupyter notebook"
alias jl="jupyter lab"
alias p="python3"
alias python="python3"
alias pip="pip3"
alias python3="/usr/bin/python3.6"
alias python="/usr/bin/python3.6"
alias penv="python3 -m venv env"

# access hardware
alias gpu="watch -n 1 nvidia-smi"
alias cpu="htop"
alias ssd="df -h | grep /dev/sda1"
alias wifi="nload wlp3s0 -m -u M"

# command hardware
alias down="shutdown -h now"
alias lock="gnome-screensaver-command -l"

alias img="echo /home/sharif/Downloads/public_place.jpg"

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
