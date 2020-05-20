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

Plug 'jremmen/vim-ripgrep'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'

call plug#end()

if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='default'

:imap jk <Esc>
:vmap jk <Esc>

:nmap cm :set norelativenumber<Cr>:set nonumber<Cr> 
:nmap nm :set number relativenumber<Cr>

:nmap ,n :NERDTreeToggle<CR>

:nmap ,v :vsplit<CR> 
:nmap ,h :split<CR> 
:nmap ,x :x<CR> 
:nmap ,s :w<CR> 

:nmap ,r :!python3 %<CR>

" Switch between panes
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
