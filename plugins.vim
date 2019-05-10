""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle is a Vim plugin manager.
" Webpage: https://github.com/VundleVim/Vundle.vim
" Hint: See :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The content below should be sourced at the top of the .vimrc file

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.

" Filesystem explorer
Plugin 'scrooloose/nerdtree'

" Syntax linting and formating integration
Plugin 'w0rp/ale'

" Go support
Plugin 'fatih/vim-go'

" HTML/JS/CSS
" vue syntax
Plugin 'posva/vim-vue'
" Provide support for expanding abbreviations similar to emmet
Plugin 'mattn/emmet-vim'

" Generate the tags of the current file an get the structure of it
"Plugin 'majutsushi/tagbar'  " exuberant-ctags needed
" Visually display indent levels
"Plugin 'Yggdroot/indentLine'
" Fuzzy file, buffer, mru, tag, etc finder
"Plugin 'kien/ctrlp.vim'
" Jade/Pug syntax highlighting
"Plugin 'digitaltoad/vim-pug'
" Loading templates such as class, html, makefile and so on.
"Plugin 'vim-scripts/load_template'
" Enhanced status/tabline
"Plugin 'vim-airline/vim-airline'
"
"Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
"Plugin 'Blackrush/vim-gocode'

" Molokai color scheme
Plugin 'tomasr/molokai'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dependencies:
" python:
"   - `flake8`
"       - `pyflakes': check syntax error
"       - `pycodestyle`: check PEP8 (style conventions)
"       - `mccabe`: check code complexity
"   - `pydocstyle`: check PEP257 (docstring conventions)

"let g:ale_linters = {
"\   'python': ['flake8', 'pydocstyle'],
"\}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
nmap <silent> <F4> :NERDTreeToggle<cr>
" Close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
