" treat rkt files as scheme
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" send file to repl
nnoremap <silent> <leader>sr :call VimuxRunCommand(',enter "' . bufname("%") . '"')<CR>

" start repl
function! VimuxXrepl()
  call VimuxOpenRunner()
  call VimuxSendText("racket")
  call VimuxSendKeys("Enter")
  call VimuxSendText("(require xrepl)")
  call VimuxSendKeys("Enter")
endfunction
nnoremap <silent> <leader>rr :call VimuxXrepl()<CR>

let g:lisp_rainbow=1

set expandtab
