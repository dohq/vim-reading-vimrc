" file loading tool for reading-vimrc
" Version: 0.0.1
" Author:  y0za
" License: MIT License

if exists('g:loaded_reading_vimrc')
  finish
endif
let g:loaded_reading_vimrc = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0
      \ ReadingVimrcLoad
      \ call reading_vimrc#load()

vnoremap <Plug>(reading_vimrc-update_clipboard) :call reading_vimrc#update_clipboard()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
