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
" => Golang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gg :GoRun<cr>
map <leader>gb :GoBuild<cr>
map <leader>gi :GoImport 
au FileType go setl ts=4
"au BufWritePost *.go !gofmt -w %
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Dockerfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile Dockerfile* setf dockerfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML & CSS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set different tab indent for html/css/javascript
au FileType scss,xml,html,htmldjango,vue,javascript setl sts=2 sw=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType python inoremap <buffer> $r return

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Yaml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set different tab indent for yaml
au FileType yaml setl sts=2 sw=2


" Example for not recognize filetype
" autocmd BufRead *.twig set syntax=html filetype=html
