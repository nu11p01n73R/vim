execute pathogen#infect()
filetype plugin indent on

" set tab width to 8 by default
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


" Change tab width dynamically
function SetTab(spaces)
        let &l:tabstop=a:spaces
        let &l:shiftwidth=a:spaces
endfunction

" Custom command Tab to set tab with
" Calls SetTab to set tab width
" Expects one argument
command -nargs=1 Tab call SetTab(<f-args>)
