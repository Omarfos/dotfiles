syntax on
filetype plugin on

let mapleader=" " 
set mouse=a
set hidden

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

set inccommand=nosplit
set showcmd
set showmatch

set rnu
set number

set splitbelow
set splitright

set autoindent
set smartindent
set shiftwidth=4    " indent also with 4 spaces
set tabstop=4
set softtabstop=4
set expandtab

set textwidth=80
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
"Plug 'neovim/nvim-lsp'
Plug '/usr/local/opt/fzf',  { 'do': { -> fzf#install() } }
call plug#end()

let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog  = '/usr/local/bin/python3'


let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:NERDSpaceDelims = 1

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>


nnoremap <leader>sv :source $MYVIMRC<CR>

map <Leader>t <Esc>:split \| terminal <Cr>a
map <Leader>w <Esc>:w<Cr>
map <Leader>q <Esc>:q<Cr>
map <Leader>wq <Esc>:wq<Cr>
map <Leader>a <Esc>:w<Cr><C-j>a<C-u>!!<Cr><Cr>
map <Leader>l <Esc>:e!<Cr>
map <Leader>m <Esc>:Man 
map <Leader>d <Esc>:bdelete<Cr>
map <Leader>f <Esc>:FZF<Cr>

nnoremap <Leader>n :NERDTreeToggle<CR>

nnoremap Q @@
" Copy Paste
noremap <Leader>y "*y
noremap <Leader>p "*p


map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Terminal Mappings
tmap <Esc> <C-\><C-n>

"Easier Movement
tmap <C-k> <Esc><C-k>
tmap <C-j> <Esc><C-j>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>
