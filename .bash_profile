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
alias v="vim" 
                                                                                                                                                                                                                     
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then                                                                                                                                                                
    GIT_PROMPT_ONLY_IN_REPO=1                                                                                                                                                                                        
    source $HOME/.bash-git-prompt/gitprompt.sh                                                                                                                                                                       
fi  
