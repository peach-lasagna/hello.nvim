if !has('nvim-0.5') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

augroup HelloNvim
  au VimEnter * lua require('hello_nvim').random_phrase()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
