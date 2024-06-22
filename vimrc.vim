call plug#begin()
Plug 'yorickpeterse/vim-paper'
Plug 'joshdick/onedark.vim'
call plug#end()

"colorscheme paper

set splitright

let mapleader = " "

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <Leader>t :vs<CR> :te<CR>
nmap <Leader>pv :Ex<CR>
