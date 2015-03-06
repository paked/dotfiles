set t_Co=256
execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme delek

au FileType javascript call JavaScriptFold()

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 number
