execute pathogen#infect()
syntax on
filetype plugin indent on
set encoding=utf-8

" set tab width to 8 by default
set tabstop=8
set shiftwidth=8
set expandtab

" Add line numbers
set number
highlight LineNr ctermfg=blue ctermbg=black

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

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" NERD_tree
autocmd VimEnter * NERDTree | wincmd p
map nt :NERDTreeToggle<enter>

" CtrlP
map cp :CtrlP<enter>

" Airline theme.
let g:airline_theme='base16'


" Change tab width dynamically
function SetTab(spaces)
        let &l:tabstop=a:spaces
        let &l:shiftwidth=a:spaces
endfunction

" Custom command Tab to set tab with
" Calls SetTab to set tab width
" Expects one argument
command -nargs=1 Tab call SetTab(<f-args>)

" Airline status bar
let g:airline_powerline_fonts=1

" Vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

map gr :GoRun %<enter>
