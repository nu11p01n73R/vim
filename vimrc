" Load plugins in bundle/start
execute pathogen#infect('bundle/start/{}')

syntax on
filetype plugin indent on
set encoding=utf-8

" load colors if the file exists
if filereadable(expand("~/.vim_background"))
        let base16colorspace=256
        source ~/.vim_background
endif

" show autocomplete options for :e etc
set wildmenu

" search as characters are entered.
set incsearch

" do not higlight the search once enter is pressed.
set nohlsearch

" set tab width to 8 by default
set tabstop=8
set shiftwidth=8
set expandtab

" Highlight current line
set cursorline

" Reload vimrc
map <leader>rl :source ~/.vimrc<enter>

" Add line numbers
set number
set relativenumber
highlight LineNr ctermfg=blue ctermbg=black
highlight CursorLineNr cterm=bold  ctermfg=darkcyan  ctermbg=black

" Vertical split configuration 
set fillchars+=vert:│
highlight VertSplit cterm=NONE ctermfg=Green ctermbg=NONE


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic settings for golang
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Syntastic settings for js
let g:syntastic_javascript_checkers = ['eslint']

" CtrlP
map <C-p> :CtrlP<enter>
"map <C-b> :CtrlPBuffer<enter>

" Change tab width dynamically
function! SetTab(spaces)
        let &l:tabstop=a:spaces
        let &l:shiftwidth=a:spaces
endfunction

" Custom command Tab to set tab with
" Calls SetTab to set tab width
" Expects one argument
command! -nargs=1 Tab call SetTab(<f-args>)

" Airline status bar
let g:airline_powerline_fonts=1
set laststatus=2

" Airline theme.
let g:airline_theme='luna'

" Vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Trun on/off relative number 
" command Tr
function! ToggleRelativeNumber()
        if (&relativenumber == 0) 
                set relativenumber
        else 
                set norelativenumber
        endif
endfunction
command! Tr call ToggleRelativeNumber()

" NERD_tree
" Defer loading of nerdtree until required
function! StartNERDTree()
        set rtp+=~/.vim/bundle/nerdtree
        runtime plugin/NERD_tree.vim
endfunction
command! Startnt call StartNERDTree()
map <C-t> :NERDTreeToggle<enter>

" You Complete Me
function! StartYouCompleteMe()
        set rtp+=~/.vim/bundle/YouCompleteMe
        runtime plugin/youcompleteme.vim
endfunction
command! Startycm call StartYouCompleteMe()
let g:ycm_python_binary_path = '/usr/local/bin/python3'
set completeopt-=preview

" Autocommands
augroup vimrc_autocmds
          " Highlights after 75 characters
          autocmd BufEnter * highlight OverLength ctermbg=darkgrey ctermfg=white
          autocmd BufEnter * match OverLength /\%75v.*/
augroup END

" Vim buffer key maps
map <C-j> :bnext<CR>
map <C-k> :bprev<CR>
map <C-l> :ls<CR>

" set backupcopy to yes for crontab file
au FileType crontab setlocal backupcopy=yes
