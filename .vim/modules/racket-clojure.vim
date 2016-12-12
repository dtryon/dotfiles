" treat rkt files as scheme
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=racket
  au filetype racket set lisp
  au filetype racket set autoindent

  au BufReadPost *.clj,*.cljs,*.cljc,*.edn set filetype=clojure
  au filetype clojure set lisp
  au filetype clojure set autoindent

  " rainbow parens
  au VimEnter * RainbowParenthesesToggle
  au Syntax racket RainbowParenthesesLoadRound
  au Syntax racket RainbowParenthesesLoadSquare
  au Syntax racket RainbowParenthesesLoadBraces

  au Syntax clojure RainbowParenthesesLoadRound
  au Syntax clojure RainbowParenthesesLoadSquare
  au Syntax clojure RainbowParenthesesLoadBraces
endif

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
