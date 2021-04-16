if !has('nvim-0.5') || !exists('g:hello_nvim_enable') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

augroup HelloNvim
  let g:hello_nvim_path = get(g:, 'hello_nvim_path', "/mnt/c/Users/kir/Opens/radare2/doc/fortunes.fun")
  au VimEnter * lua require'hello.nvim'.random_phrase(hello_nvim_path)
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo
