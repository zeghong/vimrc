" Filetype plugin for Go.

setlocal noexpandtab ts=4 sw=4

" ALE linters settings
let b:ale_linters = ['gopls', 'govet', 'gofmt', 'revive']

" ALE fixers settings
let b:ale_fix_on_save = 1
let b:ale_fixers = ['goimports', 'gofmt']
let b:ale_go_gofmt_options = '-s'
