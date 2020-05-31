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
alias gpu="watch -n 1 nvidia-smi" 

# This will not work on your machine
alias wifi="nload wlp3s0 -m -u M"
                                                                                                                                                                                                                     
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then                                                                                                                                                                
    GIT_PROMPT_ONLY_IN_REPO=1                                                                                                                                                                                        
    source $HOME/.bash-git-prompt/gitprompt.sh                                                                                                                                                                       
fi
