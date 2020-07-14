call plug#begin('~/.config/nvim/plugged')

Plug 'iCyMind/NeoSolarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-sleuth'
Plug 'preservim/nerdtree'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'godlygeek/tabular'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"
" General config
let mapleader = ';'
set noswapfile

" Config editing
nnoremap <Leader>e :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>s :source %<CR>

" Pane splitting
nnoremap <Leader>h :sp<CR>
nnoremap <Leader>j :vs<CR>

" Handle long lines nicely properly
nnoremap j gj
nnoremap k gk

" Navigation-remapping
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l

"
" NeoSolarized config
set termguicolors
colorscheme NeoSolarized
set background=dark
set number

"
" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>a :NERDTreeToggle<CR>

au FileType md set colorcolum=80

"
" Search stuff

" search for a file
nnoremap <Leader>q :GFiles<CR>
" search contents of file
nnoremap <Leader>w :Rg<CR>
