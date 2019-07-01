
" activate syntaxhighlighting
syntax on

" tabs are four spaces wide
set tabstop=4

" 'sudo write'-hack
cmap w!! w !sudo tee > /dev/null %

" gradle-files use groovy syntax
au BufNewFile,BufRead *.gradle setf groovy

