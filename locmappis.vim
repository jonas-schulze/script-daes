set expandtab
set filetype=rmd
set iskeyword+=:
set iskeyword+=-
imap ,le (\#eqx)<++><esc>Fxs
imap ,re \@ref(eq<c-x><c-]>
nmap ,io o<esc>C * 
imap ,io <CR><esc>C * 
imap ,bg \begin{

imap xil X_{i\ell}
imap dxil \dot X_{i\ell}

function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^## .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^### .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^#### .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^##### .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^###### .*$'
        return ">6"
    endif
    return "=" 
endfunction

setlocal foldexpr=MarkdownLevel()  
setlocal foldmethod=expr

" This gets rid of the nasty _ italic bug in tpope's vim-markdown
" block $$...$$
syn region math start=/\$\$/ end=/\$\$/
syn region math start=/\\begin{equation}/ end=/\\end{equation}/
syn region math start=/\\begin{align}/ end=/\\end{align}/
syn region math start=/\\begin{align\*}/ end=/\\end{align\*}/
" inline math
syn match math '\$[^$].\{-}\$'

" actually highlight the region we defined as "math"
hi link math PreProc
