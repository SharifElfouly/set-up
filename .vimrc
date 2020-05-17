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
                                                                                                       
plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                                    
plug 'morhetz/gruvbox'                                                                                 
plug 'preservim/nerdtree'                                                                              
plug 'tpope/vim-surround'                                                                              
                                                                                                       
call plug#end()                                                                                        
                                                                                                       
set background=dark                                                                                    
colorscheme gruvbox                                                                                    
let g:gruvbox_contrast_dark='default'                                                                  
                                                                                                       
:nmap ,f :FZF<CR>                                                                                      
                                                                                                       
:nmap cm :set norelativenumber<Cr>:set nonumber<Cr>                                                    
:nmap nm :set number relativenumber<Cr>                                                                
                                                                                                       
:nmap ,n :NERDTreeToggle<CR>   
