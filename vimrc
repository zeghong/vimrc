" My personal Vim configuration
" Maintainer: Zeg

" Inspired by:
"   - https://github.com/amix/vimrc


"""" General

" Get out of Vi's compatible mode
set nocompatible

" Sets how many lines of history Vim has to remember
set history=500

" Enable filetype plugins & indent files
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off
set nobackup nowb noswapfile

" With a map leader it's possible to do extra key combinations
let mapleader = ","

" Fast editing and reloading of vimrc configs
nmap <leader>e :e! $MYVIMRC<cr>
autocmd! bufwritepost ~/.vim/vimrc source ~/.vim/vimrc

" Auto change current dir
autocmd BufEnter * silent! lcd %:p:h


"""" User Interface

" Minimal number of screen lines to keep above and below the cursor
set so=10

set number        " show line numbers
set ruler         " show cursor position
set wrap          " wrap long lines
set showmatch     " highlight matching brackets
set matchtime=2   " tenths of a second to show the matching paren
set wildmenu      " visual completion match command-line
set laststatus=2  " always show statusline (even with only single window)


" Redraw screen only when we need to
set lazyredraw          

" Search settings
set ignorecase  " ignore case when searching
set smartcase   " try to be smart about cases When searching
set hlsearch    " highlight search results
set incsearch   " search as characters typed
" Turn off search highlighting with <CR>
nnoremap <silent> <CR> :nohlsearch<CR><CR>


"""" Colors

syntax enable   " enable syntax highlighting
set t_Co=256    " enable 256 colors palette

" Color schemes
"   - `onedark`: https://github.com/joshdick/onedark.vim
"   - `molokai`: https://github.com/tomasr/molokai
"
" Installation of plugins is REQUIRED.
" SUGGESTION: Install all color scheme plugins to path `~/.vim/pack/colors/opt/` as a Vim package.
packadd! onedark.vim
colorscheme onedark


"""" Editing

" Fast quiting
nmap <leader>q :q<cr>

" Fast saving
nmap <leader>w :w!<cr>


"""" Text Formatting

" Set UTF-8 as standard encoding
set encoding=utf-8

set smarttab    " be smart when using tabs
set autoindent  " copy indent from current line when starting a new line


"""" Navigation

" Moving between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" Spliting windows
noremap <leader>s <C-W>s
noremap <leader>v <C-W>v
noremap <leader>n :new<space>

" Useful mappings for managing tabs
nnoremap <leader>t :tabnew<space>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coding related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/filetypes.vim
