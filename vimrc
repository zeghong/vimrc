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

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
"let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast quiting
nmap <leader>q :q<cr>

" Fast editing and reloading of vimrc configs
nmap <leader>e :e! $MYVIMRC<cr>
autocmd! bufwritepost ~/.vim/vimrc source ~/.vim/vimrc

" :W sudo saves the file 
" " (useful for handling the permission-denied error)
"command W w !sudo tee % > /dev/null

" Auto change current dir
autocmd BufEnter * silent! lcd %:p:h


"""" User Interface

" Minimal number of screen lines to keep above and below the cursor
set so=10

set number      " show line numbers
set ruler       " show cursor position
set wrap        " wrap long lines
set showmatch   " highlight matching brackets
set matchtime=2 " tenths of a second to show the matching paren
set wildmenu    " visual completion match command-line

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set softtabstop=4
set shiftwidth=4


" Set utf8 as standard encoding
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Linebreak on 500 characters
" set lbr
"set tw=500
"
set ai      "Auto indent
"set si      "Smart indent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
"map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing buffers
map <leader>b :ls<cr>
map <leader>d :bnext<cr>
map <leader>p :bprevious<cr>

" Close the current buffer
map <leader>bd :bdelete<cr>

" Useful mappings for managing tabs
map <leader>t :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coding related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/filetypes.vim
