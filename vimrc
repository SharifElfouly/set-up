" VUNDLE STUFF START
set nocompatible            
filetype off               

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" fuzzyfinder                                                                    
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }              
Plugin 'junegunn/fzf.vim

call vundle#end()            " required
filetype plugin indent on    " required
" VUNDLE STUFF END

:imap jk <Esc>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
 
" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" color end at 80                                                                
set textwidth=80                                                                 
set colorcolumn=+1 

" yapf save and run
:nmap ,u :!yapf %<CR><CR>:w<CR>:!python3 %<CR>

" insert new empty  line
:nmap ,o ojk

" close tab
:nmap ,c :close<CR>

" vsplit
:nmap ,v :vsplit<CR>
