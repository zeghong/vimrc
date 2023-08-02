""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plugins config managed by vim-plug
" See :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep Plug commands between plug#begin/end.
" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plug')      " required

" Filesystem explorer
Plug 'scrooloose/nerdtree'

" HTML/JS/CSS
" Provide support for expanding abbreviations similar to emmet
"Plug 'mattn/emmet-vim'

" Molokai color scheme
Plug 'tomasr/molokai'

"" All of your Plugins must be added before the following line
call plug#end()            " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
nmap <silent> <F4> :NERDTreeToggle<cr>

" Close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set where NERDTree windows is placed on the screen
let g:NERDTreeWinPos = 'right'
