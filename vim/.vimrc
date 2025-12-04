" This was mostly generated, I switched to nvim right away.
source $VIMRUNTIME/defaults.vim " Was recommended in the help 

let mapleader = " "

" Options
set confirm
set number
set relativenumber
set noerrorbells
set novisualbell
set breakindent
"set undofile
set ignorecase
set smartcase
"set signcolumn=yes
set updatetime=250
set timeoutlen=300
set splitright
set splitbelow
"set list
set cursorline
set scrolloff=5
set hlsearch

" Keymaps
nnoremap <Esc> :nohlsearch<CR>
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <leader>w :w<CR>
nnoremap <leader>e :q<CR>
nnoremap <A-Up>    :resize +2<CR>
nnoremap <A-Down>  :resize -2<CR>
nnoremap <A-Right> :vertical resize +2<CR>
nnoremap <A-Left>  :vertical resize -2<CR>
inoremap jj <Esc>
inoremap kk <Esc>
nnoremap <C-l> <End>
vnoremap <C-l> <End>
onoremap <C-l> <End>
nnoremap <C-h> ^
vnoremap <C-h> ^
onoremap <C-h> ^
nnoremap n nzz
nnoremap N Nzz
