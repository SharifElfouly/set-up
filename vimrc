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

" save + yapf + run
:nmap ,x :w<CR>:!yapf % -i<CR><CR>:!python3 %<CR>

" save + yapf
:nmap ,y :w<CR>:!yapf % -i<CR><CR>

" insert new empty  line
:nmap ,o ojk

" search for files
:command F Files

" close tab
:nmap ,c :close<CR>

" splits
:nmap ,v :vsplit<CR>
:nmap ,h :split<CR>
