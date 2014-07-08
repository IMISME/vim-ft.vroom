""
" @section Introduction, intro
" Syntax and core settings for the vroom filetype.

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = 'setlocal formatoptions< shiftwidth< softtabstop<' .
    \ ' expandtab< iskeyword< comments< commentstring<'

setlocal formatoptions-=t

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab

" To allow tag lookup and autocomplete for whole autoload functions, '#' must be
" a keyword character. This also conforms to the behavior of ftplugin/vim.vim.
setlocal iskeyword+=#

" Vroom files have no comments (text is inert documentation unless indented).
setlocal comments=
setlocal commentstring=
