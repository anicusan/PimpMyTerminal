" File              : my_configs.vim
" License           : License: GNU v3.0
" Author            : Andrei Leonard Nicusan <aln705@student.bham.ac.uk>
" Date              : 20.03.2019
" Last Modified Date: 20.03.2019
" Last Modified By  : Andrei Leonard Nicusan <aln705@student.bham.ac.uk>


" Nice colors
:set termguicolors

" Colorscheme
colorscheme gruvbox

" Mouse works in any mode
set mouse=a

" Tab -> spaces in js
set expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType c setlocal shiftwidth=4 tabstop=4

" Author header
let g:header_field_author = 'Andrei Leonard Nicusan'
let g:header_field_author_email = 'a.l.nicusan@bham.ac.uk'
let g:header_field_modified_timestamp = 0
let g:header_field_modified_by = 0
map <F4> :AddHeader<CR>

let g:header_auto_add_header = 0
let g:header_field_license_id = 'GNU v3.0'


" Show color column at max_line_length
autocmd FileType python set colorcolumn=80
autocmd FileType rust set colorcolumn=100
autocmd FileType c set colorcolumn=100


" Disable auto parantheses delete in pairs
let g:AutoPairsMapBS = 0
let g:rust_keep_autopairs_default = 1


" Tagbar
let g:tagbar_ctags_bin = "/bin/ctags"
map <Leader>nm :TagbarToggle<CR>


" LIGGGHTS .sim files
autocmd BufNewFile,BufRead *.sim set syntax=sh


" Python
let g:python_highlight_all = 1
let g:python_highlight_func_calls = 0
let g:syntastic_python_checkers = ['flake8']



