syntax on
let mapleader = " "

:imap jk <Esc>

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

set hidden
set noswapfile
set wrap
set number relativenumber
set nu rnu
set scrolloff=8
set signcolumn=yes
set clipboard+=unnamedplus
set ai
set number
set hlsearch
set ruler
set modifiable
highlight Comment ctermfg=green

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-commentary'

" git stuff
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" langs
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" nerdtree
:nmap <leader>t :NERDTreeToggle<CR>

" gruvbox
colorscheme gruvbox

" ctrp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" emmet
let g:user_emmet_leader_key=','

" coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>gr <Plug>(coc-references)

" save, quit, exit
:nmap <leader>v :vsplit<CR> 
:nmap <leader>c :split<CR> 
:nmap <leader>q :x<CR> 
:nmap <leader>s :w<CR> 
:nmap <leader>x :w<CR>:q<CR>

" search
:nmap <leader>f :Rg<space> 

" insert console.log() on new line
:nmap <leader>l oconsole.log()jki

" resize 
:nmap <leader>r :vertical resize +10<CR>
:nmap <leader>e :res +5<CR>

" remove search highlight 
:nmap <leader>a :noh<CR>
