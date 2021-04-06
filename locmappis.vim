set expandtab
"set filetype=rmd
set iskeyword+=:
set iskeyword+=-
imap ,le (\#eq:
imap ,re \@ref(eq:<c-x><c-]>
nmap ,io o<esc>C * 
imap ,io <CR><esc>C * 
imap ,bg \begin{
imap ,eq \begin{equation}<CR>\end{equation}<esc>O

imap xil X_{i\ell}
imap dxil \dot X_{i\ell}
imap ,rr \mathbb R^{

map ,m <esc>:!source mkdc.sh<CR>
imap ,jhs ```{block, type='JHSAYS'}<CR>```<esc>O

" function! MarkdownLevel()
"     if getline(v:lnum) =~ '^# .*$'
"         return ">1"
"     endif
"     if getline(v:lnum) =~ '^## .*$'
"         return ">2"
"     endif
"     if getline(v:lnum) =~ '^### .*$'
"         return ">3"
"     endif
"     if getline(v:lnum) =~ '^#### .*$'
"         return ">4"
"     endif
"     if getline(v:lnum) =~ '^##### .*$'
"         return ">5"
"     endif
"     if getline(v:lnum) =~ '^###### .*$'
"         return ">6"
"     endif
"     return "=" 
" endfunction
" 
" setlocal foldexpr=MarkdownLevel()  
" setlocal foldmethod=expr
" 
" " This gets rid of the nasty _ italic bug in tpope's vim-markdown
" " block $$...$$
" syn region math start=/\$\$/ end=/\$\$/
" syn region math start=/\\begin{equation}/ end=/\\end{equation}/
" syn region math start=/\\begin{align}/ end=/\\end{align}/
" syn region math start=/\\begin{align\*}/ end=/\\end{align\*}/
" " inline math
" syn match math '\$[^$].\{-}\$'
" 
" " actually highlight the region we defined as "math"
" hi link math PreProc
