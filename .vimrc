execute pathogen#infect()
syntax on


" SPACES & TABS
set tabstop=4 " number of visual spaces a TAB represents
set softtabstop=4 " number of visual spaces a TAB represents when editing
set expandtab       " tabs are spaces
set shiftwidth=4

" UI
colorscheme Benokai " use the best colorscheme eva.
set number " show the line numbers. who would not have this.
set showcmd " show last command
set cursorline " highlight current line
filetype indent on " turn on file specific indentation
set wildmenu " handy little graphical menu for commands
set lazyredraw " save me a few cpu cycles
set showmatch " helps ADD
if has('mouse') " Enable mouse if exists
    set mouse=a
endif


" SEARCH
set incsearch " search as characters are entered

" FOLDING
set foldenable " enable folding
set foldlevelstart=10 " only fold in extreme cases
set foldmethod=indent  " fold based on indent level
" open folds with space
nnoremap <space> za 

" MOVEMENT
" make moving over wrapped lines make sense
nnoremap j gj
nnoremap k gk
" highlight the last block of characters which were inserted
nnoremap gV `[v`]

" EDITING
set noswapfile
let mapleader=","

