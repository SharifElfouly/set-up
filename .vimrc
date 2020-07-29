syntax on
let mapleader = " "

set updatetime=50
set nohlsearch
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

Plug 'jremmen/vim-ripgrep'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'

call plug#end()

"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25
let g:ctrlp_working_path_mode = 0

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='default'

:imap jk <Esc>
:vmap jk <Esc>

:nmap cm :set norelativenumber<Cr>:set nonumber<Cr> 
:nmap nm :set number relativenumber<Cr>

:nmap <leader>n :NERDTreeToggle<CR>

:nmap <leader>v :vsplit<CR> 
:nmap <leader>h :split<CR> 
:nmap <leader>q :x<CR> 
:nmap <leader>s :w<CR> 
:nmap <leader>x :w<CR>:q<CR> 

:nmap <leader>r :w<CR>:!python3 %<CR>
:nmap <leader>w :%s/\s\+$//<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Switch between panes
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
