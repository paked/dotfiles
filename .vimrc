execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme Benokai
 
let jshint2_save = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 number background=dark noswapfile ts=4 et
