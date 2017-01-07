execute pathogen#infect()
filetype plugin indent on
set tabstop=8
set shiftwidth=8
set expandtab

" Add line numbers
set number

" Removes | from split bar
set fillchars=""

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERD_tree
autocmd VimEnter * NERDTree | wincmd p
