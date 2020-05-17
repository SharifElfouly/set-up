:imap jk <Esc>                                                                                 
                                                                                               
syntax on                                                                                      
                                                                                               
set tabstop=4 softtabstop=4                                                                    
set smartindent                                                                                
set nowrap                                                                                     
set noswapfile                                                                                 
set number relativenumber                                                                      
set nu rnu                                                                                     
set undodir=~/.vim/undodir                                                                     
set undofile                                                                                   
set incsearch                                                                                  
                                                                                               
set colorcolumn=80                                                                             
highlight ColorColumn ctermbg=0 guibg=lightgrey                                                
                                                                                               
call plug#begin('~/.vim/plugged')                                                              
                                                                                               
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                            
Plug 'morhetz/gruvbox'                                                                         
                                                                                               
call plug#end()                                                                                
                                                                                               
set background=dark                                                                            
colorscheme gruvbox                                                                            
let g:gruvbox_contrast_dark='default'                                                          
                                                                                               
:nmap ,f :FZF<CR>   
