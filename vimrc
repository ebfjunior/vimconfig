set nocompatible             
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mhartington/oceanic-next'
Plugin 'mxw/vim-jsx'
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
call vundle#end()            

syntax enable 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='oceanicnext'
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:jsx_ext_required = 0 

if (has("termguicolors"))
  set termguicolors
endif

colorscheme gruvbox

filetype plugin indent on   

set path=**
set background=dark
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set ai                  "Auto indent
set si                  "Smart indent
set wrap                "Wrap lines
set relativenumber
set ruler
set showcmd
set cursorline
set noswapfile
set autoread
set shiftround
set wildmenu
set lazyredraw
set showmatch
set wildignore=**/node_modules/**
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR> 

" move lines faster 
nnoremap <leader>m :m+
nnoremap <leader>M :m-

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Fast shell comands
nnoremap <leader><space> :!

" Others utilities
nnoremap <leader>o :find 
nnoremap <leader>f :Files<CR> 

" jk is escape
inoremap jk <esc>

" Shortcut for autocompletion
inoremap <leader><tab> <C-N>
