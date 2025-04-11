vim9script

# ------------------------------------------------------------------------------
# My personal Vim configuration
#
# Author: Li Zeghong <zeghong@hotmail.com>
# Link:   https://github.com/zeghong/vimrc
# Note:   Vim version 9.0 or above is REQUIRED.
# ------------------------------------------------------------------------------


# ------------------------------------------------------------------------------
# General
# ------------------------------------------------------------------------------

# Get out of Vi's compatible mode
set nocompatible

# Sets how many lines of history Vim has to remember
set history=500
# Enable filetype plugins & indent files
filetype plugin indent on

# Set to auto read when a file is changed from the outside
set autoread

# Turn backup off
set nobackup nowb noswapfile

# With a map leader it's possible to do extra key combinations
g:mapleader = ","

# Fast editing of vimrc configuration file
nnoremap <Leader>ev :e $MYVIMRC<CR>

# Auto change current dir
autocmd BufEnter * silent! lcd %:p:h


# ------------------------------------------------------------------------------
# User Interface
# ------------------------------------------------------------------------------

# Minimal number of screen lines to keep above and below the cursor
set so=10

set number        # show line numbers
set ruler         # show cursor position
set wrap          # wrap long lines
set showmatch     # highlight matching brackets
set matchtime=2   # tenths of a second to show the matching paren
set wildmenu      # visual completion match command-line
set laststatus=2  # always show statusline (even with only single window)


# Don't redraw while executing macros
set lazyredraw          

# Search settings
set ignorecase  # ignore case when searching
set smartcase   # try to be smart about cases When searching
set hlsearch    # highlight search results
set incsearch   # search as characters typed
# Turn off search highlighting with <CR>
nnoremap <silent> <CR> :nohlsearch<CR><CR>


# ------------------------------------------------------------------------------
# Colors
# ------------------------------------------------------------------------------

syntax enable   # enable syntax highlighting
# Use 24-bit (true-color) mode 
if (has("termguicolors"))
  set termguicolors
endif

# Color scheme
# NOTE: See https://github.com/joshdick/onedark.vim for installation guide
packadd! onedark.vim
colorscheme onedark


# ------------------------------------------------------------------------------
# Editing
# ------------------------------------------------------------------------------

# Fast quiting
nmap <Leader>q :q<CR>

# Fast saving
nmap <Leader>w :w!<CR>


# ------------------------------------------------------------------------------
# Text Formatting
# ------------------------------------------------------------------------------

# Set UTF-8 as standard encoding
set encoding=utf-8

set smarttab    # be smart when using tabs
set autoindent  # copy indent from current line when starting a new line


# ------------------------------------------------------------------------------
# Navigation
# ------------------------------------------------------------------------------

# Moving between windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

# Spliting windows
noremap <Leader>s <C-W>s
noremap <Leader>v <C-W>v
noremap <Leader>n :new<Space>

# Useful mappings for managing tabs
nnoremap <Leader>t :tabnew<Space>
