set mouse=a

" tab settings
set tabstop=4
set shiftwidth=4

" syntax highlight
syntax enable

" restore cursor position
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
