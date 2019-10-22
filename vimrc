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

" save & run python
:map ,r :w<CR>:!python3 %<CR>

" yapf
:map ,y :w<CR>:!yapf % -i<CR>l
