"Toggle relative/absolute line numbers
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunc
nnoremap <F4> :call NumberToggle()<cr>
au FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> call StripTrailingWhitespace()

"" remove trailing spaces
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search
    "history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <F5> :call StripTrailingWhitespace()<CR>

nnoremap <F2> :GundoToggle<CR>
nnoremap <F6> :Tagbar<CR>

" completion with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<tab>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

cmap w!! %!sudo tee > /dev/null %
