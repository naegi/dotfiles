let g:ycm_autoclose_preview_window_after_insertion = 1

let which_key_map_localleader.y = {
            \ "namea": "+ycm",
            \ "i": "goto-include",
            \ "s": "goto-declaration",
            \ "d": "goto-definition",
            \ "g": "goto",
            \ "t": "get-type",
            \ "r": "rename",
            \ "f": "format",
            \ "l": "YcmDiags",
            \ }

function Refactor_rename()
    execute "YcmCompleter RefactorRename " . input('New name ?')
endfunction

nn <silent> <localleader>yi :YcmCompleter GoToInclude<CR>
nn <silent> <localleader>ys :YcmCompleter GoToDeclaration<CR>
nn <silent> <localleader>yd :YcmCompleter GoToDefinition<CR>
nn <silent> <localleader>yg :YcmCompleter GoTo<CR>
nn <silent> <localleader>yt :YcmCompleter GetType<CR>
nn <silent> <localleader>yr :call Refactor_rename()<CR>
nn <silent> <localleader>yf :YcmCompleter Format<CR>
nn <silent> <localleader>yl :YcmDiags<CR>
