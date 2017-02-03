
set tabstop=4

cmap w!! w !sudo tee > /dev/null %

au BufNewFile,BufRead *.gradle setf groovy
