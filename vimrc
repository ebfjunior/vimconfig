set nocompatible             
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'othree/html5.vim'
Plugin 'w0rp/ale'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'benmills/vimux'
Plugin 'scrooloose/nerdtree'
Plugin 'janko-m/vim-test'
Plugin 'metakirby5/codi.vim'
call vundle#end()            

syntax enable 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='wombat'
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:jsx_ext_required = 0 


let &t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

colorscheme pandemic

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
set number relativenumber
set noshowmode
set ruler
set showcmd
set cursorline
set noswapfile
set autoread
set shiftround
set wildmenu
set wildignore+=**/node_modules/**
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set splitbelow
set splitright

let mapleader=","       " leader is comma

" Undo configs
set hidden
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR> 

" move lines faster 
nnoremap <leader>m :m+
nnoremap <leader>M :m-
nnoremap ∆ :m+1<CR>
nnoremap ˚ :m-2<CR>

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
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0) " Search only for file contents
nnoremap <leader>O :find 
nnoremap <leader>o :GFiles<CR> 
nnoremap <leader>f :Ag<CR> 
nnoremap <leader>F :Ag <C-R><C-W><CR>

" Search and replace the current word
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
nnoremap <S-F> :/<C-r><C-w><CR><S-N>


" jk is escape
inoremap jk <esc>

" Shortcut for autocompletion
inoremap <leader><tab> <C-N>

" Buffers utils
nnoremap ` :buffers<CR>:buffer<Space>
nnoremap <leader>q :bd!<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"TMux shortcuts
nnoremap <leader>t <C-b><Down>
nnoremap <leader>vo :call VimuxOpenRunner()<CR><C-b><Down>
nnoremap <leader>vc :call VimuxCloseRunner()<CR>
nnoremap <Leader>vl :call VimuxRunLastCommand()<CR>

" Test settings
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tv :TestVisit<CR>

function! DockerTransform(cmd) abort
  return 'docker-compose run node '.shellescape(a:cmd)
endfunction

let g:test#custom_transformations = {'docker': function('DockerTransform')}
let g:test#transformation = 'docker'

" Nerdtree shortcuts
let NERDTreeQuitOnOpen=1
nnoremap \ :NERDTreeToggle<CR>
nnoremap <leader>\ :NERDTreeFind<CR>

" Split moving shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
