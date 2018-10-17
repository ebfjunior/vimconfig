execute pathogen#infect()

set path=**

let g:material_theme_style = 'palenight'

colorscheme material 
syntax enable 
set tabstop=2
set softtabstop=2
set expandtab
set smarttab

set ai                  "Auto indent
set si                  "Smart indent
set wrap                "Wrap lines

" set number
set relativenumber
set ruler
set showcmd
set cursorline

filetype indent on
set wildmenu
set lazyredraw
set showmatch

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

let mapleader=","       " leader is comma

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

" move lines faster 
nnoremap <leader>m :m+
nnoremap <leader>M :m-

set foldmethod=indent   " fold based on indent level


" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <esc>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>




" Required for material theme
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
