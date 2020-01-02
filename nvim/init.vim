call plug#begin('~/.config/nvim/plugged')

Plug 'iCyMind/NeoSolarized'

call plug#end()

"
" General config
let mapleader = ';'

" Netrw stuff
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

nnoremap <Leader>a :Lexplore<CR>

" Navigation-remapping
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"
" NeoSolarized config
set termguicolors
colorscheme NeoSolarized
set background=dark
