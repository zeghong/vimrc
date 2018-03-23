""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code folding based on indent or syntax
"set foldmethod=indent
"set foldmethod=syntax
" Python Code Folding
"autocmd FileType python setlocal foldmethod=indent
" Not folding the code by default
"set foldlevel=99


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML & CSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set different tab indent for html/css
au FileType scss,xml,html,htmldjango setl sts=2 sw=2
au FileType python inoremap <buffer> $r return


" Example for not recognize filetype
" autocmd BufRead *.twig set syntax=html filetype=html
