" Backspace is managed by vim-sensible, but I need it here too because some
" plugins depend on it during start up.
set backspace=indent,eol,start

" Enable line numbers.
set number

" Enable invisible characters.
set list

" More natural splitting.
set splitbelow
set splitright

" Set tabs to 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

" Enable mouse. Great for resizing windows and keeping co-workers sane.
set mouse=a

" Disable swap files.
set noswapfile

" Write files as they are, don't mess with line endings etc.
set binary

" Disable the completion preview window.
set completeopt-=preview

" Make session files minimal.
set sessionoptions=blank,curdir,folds,help,tabpages,winsize

" Clipboard
set clipboard=unnamed

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"Turn word wrap off
set nowrap

" Swap the word the cursor is on with the next word (which can be on a
" newline, and punctuation is "skipped"):
nmap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><C-o>:noh<CR>

" setup some file types
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=racket
  au filetype racket set lisp
  au filetype racket set autoindent

  au BufReadPost *.clj,*.cljs,*.cljc,*.edn set filetype=clojure
endif

let g:rainbow_active = 1
