command W w !sudo tee % > /dev/null
syntax on
set encoding=UTF-8

set belloff=all

set number
set relativenumber
set cursorline
set signcolumn=yes

set tabstop=4 shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set autoindent
set smartindent
set backspace=indent,eol,start

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set smartcase

set hlsearch
set nohlsearch
set incsearch

set scrolloff=8

set showmatch

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'yggdroot/indentline'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
" Track the engine.
Plug 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
call plug#end()

let g:airline#extensions#tabline#enabled = 1

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
autocmd CompleteDone * pclose

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

nnoremap <H> :tabprevious<CR>
nnoremap <L> :tabnext<CR>

set bg=dark
colorscheme gruvbox

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
