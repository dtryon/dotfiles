" send file to repl
nnoremap <silent> <leader>sr :call VimuxRunCommand(',enter "' . bufname("%") . '"')<CR>

" send paragraph to repl
function! VimuxSlime()
    call VimuxOpenRunner()
    call VimuxRunCommand(@v, 0)
"    call VimuxSendText(@v)
"    call VimuxSendKeys("Enter")
endfunction
" nnoremap <silent> <leader>sp vip "vy :call VimuxRunCommand(@v . "\n", 0)<CR>
nnoremap <silent> <leader>sp vip "vy :call VimuxSlime()<CR>

" start repl
function! VimuxXrepl()
  call VimuxOpenRunner()
  call VimuxSendText("racket")
  call VimuxSendKeys("Enter")
  call VimuxSendText("(require xrepl)")
  call VimuxSendKeys("Enter")
endfunction
nnoremap <silent> <leader>rr :call VimuxXrepl()<CR>

" start lein
function! VimuxLein()
  call VimuxOpenRunner()
  call VimuxSendText("lein repl")
  call VimuxSendKeys("Enter")
endfunction
nnoremap <silent> <leader>rl :call VimuxLein()<CR>

nnoremap <silent> <leader>sl :call VimuxRunCommand('(load-file "' . bufname("%") . '")')<CR>

set expandtab
